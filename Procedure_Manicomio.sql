-- Creazione della procedura per la quale ad un check up negativo, viene effettuato 
-- il ricovero del paziente e registrato il nome del medico che ha fatto il check up

CREATE OR REPLACE PROCEDURE Ricovero_in_infermieria (Codice_CK CHAR)
IS

    --Dichiariamo le variabili per conservare esito, gravitá e durata in giorni del ricovero
    esito_ck Check_Up.risultato % TYPE;
    gravita_ck Check_Up.Ind_grav % TYPE;
    durata_ricovero NUMBER;

    --Poi delle variabili per contenere nome e cognome del medico
    Nome_m Personale_Medico.Nome % TYPE;
    Cognome_m Personale_Medico.Cognome % TYPE;

    --Ed ancora le stesse per il paziente
    Nome_p Paziente.Nome % TYPE;
    Cognome_p Paziente.Cognome % TYPE;

BEGIN 

    --Selezioniamo l'esito tramite il Codice_CK preso come argomento dalla tabella CHECK_UP
    SELECT risultato INTO esito_ck
    FROM Check_Up 
    WHERE ID_CheckUp = Codice_CK;

    --Se l'esito é negativo avviene la procedura
    IF esito_ck <> 'Positivo' THEN

        --Prendiamo l'indice di gravitá che ci aiuta a scegliere i giorni di ricovero
        SELECT Ind_grav INTO gravita_ck
        FROM Check_Up
        WHERE ID_CheckUp = Codice_CK;
            
        --Scegliamo i giorni di ricovero
        CASE gravita_ck
            WHEN 1 THEN durata_ricovero := 1;
            WHEN 2 THEN durata_ricovero := 2;
            WHEN 3 THEN durata_ricovero := 5;
            WHEN 4 THEN durata_ricovero := 10;
            WHEN 5 THEN durata_ricovero := 30;
			ELSE durata_ricovero := 60;
        END CASE;

        --Inseriamo nella tabella Ricovero il Check_UP a cui corrisponde il paziente da ricoverarte
        INSERT INTO Ricovero (giorni_durata, ricovero_inferm, ricovero_checkup) VALUES (durata_ricovero, 2, Codice_CK);

        --Prendiamo ora nome e congome di Medico e Paziente Tramite queste Query innestate
        --L'innesto é implementato per trovare il codice fiscale del paziente dalla tabella Check_up
        --alla quale corrisponde il Codice_CK argomento
        --Lo stesso principio vale per nome e cognome del medico, nell'innesto troviamo una condizione
        --di join poiché il codice albo di chi ha effettuato il Check si trova sulla tabella Effettua_CK
        SELECT Nome, Cognome INTO Nome_m, Cognome_m
        FROM Personale_Medico
        WHERE Codice_albo = ( SELECT Codice_albo_ck
                              FROM (Check_UP c join Effettua_CK ec ON c.ID_CheckUp = ec.ck_up_eff) 
                              WHERE ID_CheckUp = Codice_CK ); 

        SELECT Nome, Cognome INTO Nome_p, Cognome_p
        FROM Paziente
        WHERE CF = ( SELECT CF_checkup
                     FROM Check_Up
                     WHERE ID_CheckUp = Codice_CK);


        --Stampiamo ora un messaggio per riassumere cosa é successo
        DBMS_OUTPUT.PUT_LINE('Al paziente '|| Nome_p || ' ' || Cognome_p || ' sono stati assegnati '|| durata_ricovero || ' giorni di ricovero dal Dott. '|| Nome_m || ' ' || Cognome_m||'.');

    --In caso il risultato di quel CHECK_UP sia positivo, non vi é motivo di effettuare 
    --nulla e viene generato pertanto un messaggio di errore
    ELSE

        RAISE_APPLICATION_ERROR(-20040, 'ERRORE! NON ESISTE ALCUN CHECK-UP NEGATIVO CON QUEL CODICE!');

    END IF;

END;



--Creazione della procedura che inserisce una prenotazione accettata nella tabella visita
CREATE OR REPLACE PROCEDURE Prenotazione_accettata(codice_visitatore CHAR, data_e_ora TIMESTAMP )
IS

    --Dichiariamo le variabili che useremo durante la procedura
    risultato Prenotazione.esito % TYPE;
    CF_visitato Prenotazione.CF_paziente % TYPE;

    Nome_p Paziente.Nome % TYPE;
    Cognome_p Paziente.Cognome % TYPE;

    Nome_v Visitatore.nome_visitatore % TYPE;
    Cognome_v  Visitatore.cog_visitatore % TYPE;

BEGIN

    --Iniziamo selezionando l'esito ed il codice fiscale di chi deve 
    --Essere visitato dalla Prenotazione che prendiamo in considerazione
    SELECT esito, CF_paziente INTO risultato, CF_visitato
    FROM Prenotazione 
    WHERE CF_dipendenza = codice_visitatore AND data_ora_visita = data_e_ora;

    --Se l'esito è Accettata allora viene eseguito il comando per l'inserimento
    --della porenotazione nella tabella Visite 
    IF risultato = 'Accettata' THEN 

        INSERT INTO Visita(data_visita_prenotazione, CF_prenotazione_visita, CF_visita_paziente) VALUES (data_e_ora, codice_visitatore, CF_visitato );

        --Quello che vogliamo ora è, un po' come nella procedura precedente
        --Scrivere a schermo un messggio che confermi la prenotazione
        --Pertanto sempre tramite query innestate andiamo a selezionare
        --Nome e cognome del visitatore e del visitato da usare come parametri
        --Per il messaggio di output
        SELECT Nome, Cognome INTO Nome_p, Cognome_p
        FROM Paziente
        WHERE CF = ( SELECT CF_paziente
                     FROM Prenotazione
                     WHERE data_ora_visita = data_e_ora AND CF_dipendenza = codice_visitatore );

        SELECT nome_visitatore, cog_visitatore INTO Nome_v, Cognome_v
        FROM Visitatore
        WHERE CF_visitatore = ( SELECT CF_dipendenza
                                FROM Prenotazione
                                WHERE data_ora_visita = data_e_ora AND CF_dipendenza = codice_visitatore );

        --Scriviamo il messaggio
        DBMS_OUTPUT.PUT_LINE( Nome_v||' '||Cognome_v|| ' visiterà ' || Nome_p || ' ' || Cognome_p || ' in data ' || data_e_ora || '.');

    --In caso la prenotazione sia stata rifiutata viene generato un messaggio di errore
    ELSE

        RAISE_APPLICATION_ERROR(-20041, 'ERRORE! LA PRENOTAZIONE INSERITA NON É STATA ACCETTATA!');

    END IF;

END;



--Creazione di una procedura che quando eseguita mostra tutto ciò che un 
--Paziente ha fatto in quella giornata
CREATE OR REPLACE PROCEDURE Resoconto_giornata (codice_paziente CHAR, data_scelta DATE)
IS

    nome_paziente Paziente.Nome % TYPE;
    cognome_paziente Paziente.Cognome % TYPE;
    nome_tratt Somministra.Nome_tratt_somm % TYPE;
    esito Check_Up.risultato % TYPE;

    --Questa variabile booleana serve a tenere traccia dell'attivazione
    --NO_DATA_FOUND, se questa non viene attivata, allora sono stati trovati dati
    --e possono venire comunicati, se si attiva, viene scritto che il paziente 
    --selezionato non ha ricevuto somm in quella data
    flag_somm BOOLEAN := FALSE;
    flag_seduta BOOLEAN := FALSE;
    flag_Check_up BOOLEAN := FALSE;

BEGIN

    --Query innestata per ottenere il Nome ed il cognome del paziente se ha 
    --Subito una certa somministrazione di un trattmaneto 
    
    --Nella query  viene eseguito un join tra un'altra query che restituisce una sola tupla
    --e la tabella paziente che contiene il nome, referenziato tramite chiave esterna

    --Osservazione importante é che se la query restituisce 0 valori, 
    --verrá gestito l'errore no data found. Questa eccezione viene implementata
    --come nuovo blocco BEGIN END;
    BEGIN
    
        SELECT Nome, Cognome, Nome_tratt_somm INTO nome_paziente, cognome_paziente, nome_tratt
        FROM (( SELECT Nome_tratt_somm, CF_somm
                FROM Somministra
                WHERE data_ora_somm IN ( TO_DATE(TO_CHAR(data_scelta, 'DD-MM-YYYY') || ' 09:00:00', 'DD-MM-YYYY HH24:MI:SS'),
                                         TO_DATE(TO_CHAR(data_scelta, 'DD-MM-YYYY') || ' 15:00:00', 'DD-MM-YYYY HH24:MI:SS'),
                                         TO_DATE(TO_CHAR(data_scelta, 'DD-MM-YYYY') || ' 21:00:00', 'DD-MM-YYYY HH24:MI:SS'),
                                         TO_DATE(TO_CHAR(data_scelta, 'DD-MM-YYYY') || ' 09:30:00', 'DD-MM-YYYY HH24:MI:SS')) 
                                         AND CF_somm = codice_paziente
                                         GROUP BY Nome_tratt_somm, CF_somm) a join Paziente on a.CF_somm = Paziente.CF);

        EXCEPTION

            --Se la queri non restituisce valori viene gestito l'essore
            WHEN NO_DATA_FOUND THEN
            flag_somm := TRUE;
            DBMS_OUTPUT.PUT_LINE('Il paziente selezionato NON ha subito trattamenti il giorno '|| TO_CHAR(data_scelta, 'DD-MM-YYYY'));
            
    END;

    --Se la query ha restituito valori questi vengono comunicati
    IF NOT flag_somm THEN   
        
        DBMS_OUTPUT.PUT_LINE('Paziente: ' || nome_paziente || ' ' || cognome_paziente);
        DBMS_OUTPUT.PUT_LINE('Trattamento somministrato: ' || nome_tratt);

    END IF;

    --Lo stesso raginamento precedente viene applcato anche alle sedute ed ai chech-Up

    --Blocco per le Sedute
    BEGIN

        --Selzioniamo nome e cognome tramite il codice fiscale
        SELECT Nome, Cognome INTO nome_paziente, cognome_paziente
        FROM Paziente
        WHERE CF = codice_paziente;

        --Svolgiamo la query per ottenere il Nome del trattamento associato al nome del paziente
        SELECT Nome, Cognome, nome_tratt_s INTO nome_paziente, cognome_paziente, nome_tratt
        FROM ( (SELECT Nome_tratt_s, CF_s
                FROM Seduta
                WHERE Data_ora_s IN ( TO_DATE(TO_CHAR(data_scelta, 'DD-MM-YYYY') || ' 10:30:00', 'DD-MM-YYYY HH24:MI:SS'),
                                      TO_DATE(TO_CHAR(data_scelta, 'DD-MM-YYYY') || ' 11:30:00', 'DD-MM-YYYY HH24:MI:SS'),
                                      TO_DATE(TO_CHAR(data_scelta, 'DD-MM-YYYY') || ' 12:30:00', 'DD-MM-YYYY HH24:MI:SS'),
                                      TO_DATE(TO_CHAR(data_scelta, 'DD-MM-YYYY') || ' 13:30:00', 'DD-MM-YYYY HH24:MI:SS'),
                                      TO_DATE(TO_CHAR(data_scelta, 'DD-MM-YYYY') || ' 14:30:00', 'DD-MM-YYYY HH24:MI:SS'))
                                      
                GROUP BY Nome_tratt_s, CF_s ) s JOIN Paziente p ON s.CF_s = p.CF)
        WHERE Nome = nome_paziente AND Cognome = cognome_paziente;

        --Gestiamo l'eccezione nel caso la query di cui sopra non generi risultati
        EXCEPTION

            WHEN NO_DATA_FOUND THEN

                flag_seduta := TRUE;
                DBMS_OUTPUT.PUT_LINE('Il paziente selezionato NON ha effettuato SEDUTE il giorno ' || TO_CHAR(data_scelta, 'DD-MM-YYYY'));

    END;

    --Nel caso vi siano dei risultati vengono descritti
    IF NOT flag_seduta THEN

        DBMS_OUTPUT.PUT_LINE('Ha effettuato una SEDUTA di: '|| nome_tratt);

    END IF;

    --Blocco per i Check-Up
    BEGIN


        SELECT Nome, Cognome, Risultato INTO nome_paziente, cognome_paziente, esito
        FROM (( SELECT *
                FROM Check_Up c JOIN Effettua_ck ec ON c.ID_checkup = ec.ck_up_eff) a JOIN Paziente p ON p.CF = a.CF_checkup)

        --Come condizione di where vengono impostate date limite per un singolo giorno,
        --quello selezionato, dato che in un giorno viene effettuato un solo check-up per paziente
        WHERE       Data_ora_ck >= TO_TIMESTAMP(TO_CHAR(data_scelta, 'DD-MM-YYYY') || ' 09:00:00', 'DD-MM-YYYY HH24:MI:SS') 
                AND Data_ora_ck <= TO_TIMESTAMP(TO_CHAR(data_scelta, 'DD-MM-YYYY') || ' 23:59:59', 'DD-MM-YYYY HH24:MI:SS')
                AND CF = codice_paziente;

        EXCEPTION

            WHEN NO_DATA_FOUND THEN

                flag_Check_up := TRUE;
                DBMS_OUTPUT.PUT_LINE('Il paziente selezionato NON ha effettuato CHECK-UP il giorno ' || TO_CHAR(data_scelta, 'DD-MM-YYYY'));

    END;

    IF NOT flag_Check_up THEN

     DBMS_OUTPUT.PUT_LINE('Ha effettuato una CHECK-UP risultato: '|| esito || '.' );

    END IF;

END;





--Creazione della procedura che ci dice ogni paziente che subisce un trattaemento
--farmacologico, quale medicinale usa. Viene implementata come procedura poiché è 
--query poco intuitiva e molto lunga
CREATE OR REPLACE PROCEDURE Medicinali_del_paziente (codice_fiscale CHAR)
IS

    nome_paziente Paziente.Nome%TYPE;
    cognome_paziente Paziente.Cognome%TYPE;
    nome_med Medicinale.Nome_med%TYPE;

BEGIN

    SELECT Nome, Cognome INTO nome_paziente, cognome_paziente
    FROM Paziente
    WHERE CF = codice_fiscale;

    DBMS_OUTPUT.PUT_LINE('Il paziente ' || nome_paziente || ' ' || cognome_paziente || ' prende:');

    FOR med_rec IN (

        SELECT Nome_Med
        FROM ((
                SELECT CF, Nome, Cognome, ATC_usato
                FROM (
                      SELECT CF, Nome, Cognome, Nome_tratt_fatto
                      FROM (Paziente p JOIN Ha_tratt t ON p.CF = t.CF_paziente_farm)
                     ) a JOIN Fa_uso f ON a.Nome_tratt_fatto = f.Nome_tratt_uso ) b JOIN Medicinale m ON b.ATC_usato = m.ATC )

        WHERE CF = codice_fiscale

    ) LOOP

        nome_med := med_rec.Nome_Med;
        DBMS_OUTPUT.PUT_LINE('Medicinale: ' || nome_med);

    END LOOP;
END;










--Creazione della procedura che data una data ed un numero reparto, mostra le guardie ed il personale
--di servizio che lavora all'interno di quel reparto
CREATE OR REPLACE PROCEDURE Lavoratori_nel_reparto(nro_rep NUMBER, data_lav DATE)
IS

    nome Guardia.Nome_g % TYPE;
	cognome Guardia.Cognome_g % TYPE;
	
	nome_rep Reparto.nome_reparto % TYPE;

BEGIN

	SELECT Nome_reparto INTO nome_rep
    FROM REPARTO 
    WHERE codice_rep = nro_rep;

	DBMS_OUTPUT.PUT_LINE('Nel reparto '|| nome_rep || ' nel giorno '|| data_lav || 'lavorano:');

    --For che cicla tutte le tuple della query che trova le guardie che lavorano
    --nel reparto selezionato nella data selezionata
    FOR tupla_guardia IN (

        Select Nome_g, Cognome_g
        FROM (( Select *
        	   	From Effettua_turno
               	WHERE data_turno_g = data_lav AND cod_rep_turno_g = nro_rep) a 
                JOIN Guardia g ON a.matricola_turno = g.Matricola)
    
    ) LOOP
    
    	nome := tupla_guardia.nome_g;
    	cognome := tupla_guardia.cognome_g;
        
        --Stampa della persona appena selezionata dal FOR
    	DBMS_OUTPUT.PUT_LINE(nome || ' ' || cognome || ' --> Guardia');
    
    END LOOP;

    --For che cicla tutte le tuple della query che trova gli inservienti 
    --che lavorano nel reparto selezionato nella data selezionata
    FOR tupla_inserviente IN (

        SELECT Nome_dip, Cognome_dip
        FROM (( SELECT *
                FROM Turno_in
                WHERE codice_rep_inser = nro_rep AND data_turno = data_lav) a
                JOIN Personale_di_servizio p on a.CF_inserviente_turno = p.CF_Pers_serv)

    ) LOOP


        nome := tupla_inserviente.Nome_dip;
        cognome := tupla_inserviente.Cognome_dip;

        --Stampa della persona appena selezionata dal FOR
        DBMS_OUTPUT.PUT_LINE(nome || ' ' || cognome || ' --> Inserviente');


    END LOOP;
       
    --For che cicla tutte le tuple della query che trova i custodi
    --che lavorano nel reparto selezionato nella data selezionata

	FOR tupla_custode IN(

        SELECT Nome_dip, Cognome_dip 
        FROM (( Select *
                FROM Lavora_in
                WHERE data_turno = data_lav AND codice_rep_custode = nro_rep) a
                JOIN Personale_di_servizio p ON a.CF_custode_turno = p.CF_Pers_serv)

    ) LOOP

        nome := tupla_custode.Nome_dip;
        cognome := tupla_custode.Cognome_dip;

        --Stampa della persona appena selezionata dal FOR
        DBMS_OUTPUT.PUT_LINE(nome || ' ' || cognome || ' --> Custode');

	  END LOOP;


END;





-- Creazione della procedura che mostra in quale reparto lavora ogni persona del personale medico
-- Viene implementata come procedura separata dalla precedente poiché ricadono Specializzazioni
-- diverse per ognuno del personale medico, in più coloro che ne fanno parte non lavorano in mensa
-- dobbiamo quindi gestire anche un'eccezione
CREATE OR REPLACE PROCEDURE Turni_personale_medico (nro_rep NUMBER, turno_pers DATE)
IS

    nome Personale_Medico.Nome % TYPE;
	cognome Personale_Medico.Cognome % TYPE;
    valore_discr Personale_Medico.Discriminante % TYPE;
	
	nome_rep Reparto.nome_reparto % TYPE;

    -- Creazione dell'eccezione nel caso si sia inserito un
    -- numero reparto sbagliato
    codice_rep_sbagliato EXCEPTION;

BEGIN

    -- Gestiamo un'eccezione nel caso il numero reparto inserito
    -- sia uguale ad uno. Il personale_medico non lavora in mensa,
    -- esiste anche un trigger apposito per gestire questo vincolo
    IF nro_rep = 1 
    THEN 
        RAISE codice_rep_sbagliato;
    END IF;

    -- Selezioniamo il nome del reparto e lo scriviamo
    SELECT Nome_reparto INTO nome_rep
    FROM REPARTO 
    WHERE codice_rep = nro_rep;

	DBMS_OUTPUT.PUT_LINE('Nel reparto '|| nome_rep ||' nel giorno '|| turno_pers || ' lavorano:');

    -- Cicliamo sulla tabella del personale medico che lavora in quel reparto 
    -- nell'ora indicata, per leggere tutte le tuple generate dalla query
    FOR tupla_pers_med IN (
        
        SELECT Nome, Cognome, Discriminante
        FROM ( (SELECT * FROM Fa_turno
                WHERE data_turno = turno_pers AND codice_rep_turno = nro_rep) a
                JOIN Personale_medico p ON a.Pers_med = p.Codice_albo)
        
    ) LOOP
        
        nome := tupla_pers_med.Nome;
        cognome := tupla_pers_med.Cognome;
        -- Conserviamo il discriminante oltre che il nome ed il cognome
        valore_discr := tupla_pers_med.Discriminante;

        -- In base al discriminante scriviamo un messaggio diverso
        CASE valore_discr 
            WHEN 1 THEN DBMS_OUTPUT.PUT_LINE(nome || ' ' || cognome || ' --> Psichiatra');
            WHEN 2 THEN DBMS_OUTPUT.PUT_LINE(nome || ' ' || cognome || ' --> Infermiere');
            WHEN 3 THEN DBMS_OUTPUT.PUT_LINE(nome || ' ' || cognome || ' --> Psicoterapeuta');
            ELSE        DBMS_OUTPUT.PUT_LINE(nome || ' ' || cognome || ' --> Medico');
        END CASE;

    END LOOP;

-- Gestione dell'eccezione
EXCEPTION

    WHEN codice_rep_sbagliato THEN
        RAISE_APPLICATION_ERROR(-20045, 'ERRORE! HAI INSERITO UN CODICE REPARTO SBAGLIATO!');

END;
















