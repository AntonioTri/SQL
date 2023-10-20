--Creazione del Trigger per impedire a personali medici che non siano
--Psichiatri di effettuare delle Prescrizioni di trattamenti

CREATE OR REPLACE TRIGGER Psichiatri_fanno_prescrizioni
BEFORE INSERT OR UPDATE ON Prescrizione
FOR EACH ROW

DECLARE

    discriminante_psichiatra NUMBER;
    non_e_uno_psichiatra EXCEPTION;

BEGIN

    SELECT Discriminante INTO discriminante_psichiatra
    FROM Personale_Medico
    WHERE Codice_albo = :NEW.Codice_albo_prescrizione;

    IF discriminante_psichiatra <> 1 
    THEN RAISE non_e_uno_psichiatra;
    END IF;

EXCEPTION

    WHEN non_e_uno_psichiatra 
    THEN RAISE_APPLICATION_ERROR(-20000, 'ERRORE! IL CODICE ALBO NON APPARTIENE AD UNO PSICHIATRA!');

END;


--Creazione del Trigger per impedire a personali medici che non siano
--Infermieri di effettuare delle Somministrazioni di trattamenti farmacologici

CREATE OR REPLACE TRIGGER Infermieri_fanno_somministrazioni
BEFORE INSERT OR UPDATE ON Somministra
FOR EACH ROW

DECLARE

    discriminante_infermiere NUMBER;
    non_e_infermiere EXCEPTION;

BEGIN

    SELECT Discriminante INTO discriminante_infermiere
    FROM Personale_Medico
    WHERE Codice_albo = :NEW.Codice_albo_somm;

    IF discriminante_infermiere <> 2 
    THEN RAISE non_e_infermiere;
    END IF;

EXCEPTION

    WHEN non_e_infermiere
    THEN RAISE_APPLICATION_ERROR(-20001, 'ERRORE! IL CODICE ALBO NON APPARTIENE AD UN INFERMIERE!');

END;


--Creazione del Trigger per impedire l'inserimento di pazienti in infermieria 
--Se il loro Check Up é risultato Positivo, e stanno quindi bene.

CREATE OR REPLACE TRIGGER Il_ricovero_e_solo_per_malati
BEFORE INSERT OR UPDATE ON Ricovero
FOR EACH ROW

DECLARE 

    risultato_CK Check_UP.risultato % TYPE;
    sta_bene EXCEPTION;

BEGIN

    SELECT risultato INTO risultato_CK
    FROM Check_Up
    WHERE ID_CheckUp = :NEW.ricovero_checkup;

    IF risultato_CK = 'P'
    THEN RAISE sta_bene;
    END IF;

EXCEPTION

    WHEN sta_bene
    THEN RAISE_APPLICATION_ERROR(-20002, 'ERRORE! IL CHECK-UP CHE STAI INSERENDO HA AVUTO ESITO POSITIVO!');

END;


--Creazione del trigger che impedisce di inserire nella tabella
--Effettua_CK personali medici che non siano Medici.

CREATE OR REPLACE TRIGGER Medici_fanno_CK
BEFORE INSERT OR UPDATE ON Effettua_ck
FOR EACH ROW

DECLARE

    discriminante_medico Personale_Medico.Codice_albo % TYPE;
    non_e_medico EXCEPTION;

BEGIN

    SELECT Discriminante INTO discriminante_medico
    FROM Personale_Medico
    WHERE Codice_albo = :NEW.Codice_albo_ck;

    IF discriminante_medico <> 4
    THEN RAISE non_e_medico;
    END IF;

EXCEPTION

    WHEN non_e_medico
    THEN RAISE_APPLICATION_ERROR(-20003, 'ERRORE! SOLO I MEDICI POSSONO EFFETTUARE CEHCK-UP');

END;


--Creazione del trigger per impedire che persone diverse da psichiatri
--tengano le sedute

CREATE OR REPLACE TRIGGER Psicoterapeuta_fanno_sedute
BEFORE INSERT OR UPDATE ON Seduta
FOR EACH ROW

DECLARE

    discr_psicoterapeuta_seduta Personale_Medico.Codice_albo % TYPE;
    non_e_psicoterapeuta EXCEPTION;

BEGIN

    SELECT Discriminante INTO discr_psicoterapeuta_seduta
    FROM Personale_Medico
    WHERE Codice_albo = :NEW.Codice_albo_s;
    
    IF discr_psicoterapeuta_seduta <> 3
    THEN RAISE non_e_psicoterapeuta;
    END IF;

EXCEPTION

    WHEN non_e_psicoterapeuta
    THEN RAISE_APPLICATION_ERROR(-20004, 'ERRORE! SOLO GLI PSICOTERAPEUTI POSSONO TENERE SEDUTE PSICHIATRICHE!');

END;


--Creazione del Trigger oer impedire che la Seduta si tenga
--nelle camere adibite all'accoglienza dei pazienti

CREATE OR REPLACE TRIGGER stanza_adibita_a_sedute 
BEFORE INSERT OR UPDATE ON Seduta
FOR EACH ROW

DECLARE

    discriminante_stanza Stanza.Discriminante_s % TYPE;
    stanza_non_adibita EXCEPTION;

BEGIN

    SELECT Discriminante_s INTO discriminante_stanza
    FROM Stanza
    WHERE Numero_stanza = :NEW.Numero_stanza_s;

    IF discriminante_stanza <> 2 
    THEN RAISE stanza_non_adibita;
    END IF;

EXCEPTION  

    WHEN stanza_non_adibita
    THEN RAISE_APPLICATION_ERROR(-20005, 'ERRORE! LA STANZA NON É ADIBITA ALLE SEDUTE!');

END;


--Creazione del Trigger per impedire che ad un paziente venga
--associata una sala per le sedute psichiatriche invece che una camera

CREATE OR REPLACE TRIGGER I_pazienti_stanno_nelle_camere
BEFORE INSERT OR UPDATE ON Paziente
FOR EACH ROW

DECLARE

    discriminante_camera Stanza.Discriminante_s % TYPE;
    non_e_una_stanza EXCEPTION;

BEGIN

    SELECT Discriminante_s INTO discriminante_camera
    FROM Stanza
    WHERE Numero_stanza = :NEW.Numero_stanza_paz;

    IF discriminante_camera <> 1
    THEN RAISE non_e_una_stanza;
    END IF;

EXCEPTION

    WHEN non_e_una_stanza
    THEN RAISE_APPLICATION_ERROR(-20006, 'ERRORE! I PAZIENTI POSSONO ESSERE INSERITI ESCLUSIVAMENTE NELLE CAMERE, NON NELLE SALE!');

END;


--Crazione del Trigger per impedire che nessuno apparte gli Psichiatri
--svolgano delle diagnosi ai pazienti

CREATE OR REPLACE TRIGGER psichiatri_digniosticano
BEFORE INSERT OR UPDATE ON Diagnostica
FOR EACH ROW

DECLARE

    discrminante_psichiatra Personale_Medico.Discriminante % TYPE;
    diverso_da_psichiatra EXCEPTION;

BEGIN

    SELECT Discriminante INTO discrminante_psichiatra
    FROM Personale_Medico
    WHERE Codice_albo = :NEW.Codice_albo_dia;

    IF discrminante_psichiatra <> 1 
    THEN RAISE diverso_da_psichiatra;
    END IF;

EXCEPTION

    WHEN diverso_da_psichiatra
    THEN RAISE_APPLICATION_ERROR(-20007, 'ERRORE! SOLO GLI PSICHIATRI FANNO UNA DIAGNOSTICA!');

END;



--Creazione del trigger per impedire che vengano assegnati turni
--di pulizia a CUSTODI o SEGRATARI 

CREATE OR REPLACE TRIGGER Solo_gli_inservienti_puliscono
BEFORE INSERT OR UPDATE ON Turno_in
FOR EACH ROW

DECLARE

    discriminante_inserviente Personale_di_servizio.discriminante_pers_serv % TYPE;
    non_e_inserviente EXCEPTION;

BEGIN

    SELECT discriminante_pers_serv INTO discriminante_inserviente
    FROM Personale_di_servizio
    WHERE CF_Pers_serv = :NEW.CF_inserviente_turno;

    IF discriminante_inserviente <> 2
    THEN RAISE non_e_inserviente;
    END IF;

EXCEPTION

    WHEN non_e_inserviente
    THEN RAISE_APPLICATION_ERROR(-20008, 'ERRORE! I CUSTODI O I SEGRETARI PULISCONO!');

END;


--Creazione del Trigger per impedire che INSERVIENTI o SEGRETARI
--custodiscano i reparti

CREATE OR REPLACE TRIGGER I_custodi_custodiscono
BEFORE INSERT OR UPDATE ON Lavora_in
FOR EACH ROW

DECLARE

    discriminante_custode Personale_di_servizio.discriminante_pers_serv % TYPE;
    non_e_custode EXCEPTION;

BEGIN

    SELECT discriminante_pers_serv INTO discriminante_custode
    FROM Personale_di_servizio
    WHERE CF_Pers_serv = :NEW.CF_custode_turno;

    IF discriminante_custode <> 3
    THEN RAISE non_e_custode;
    END IF;

EXCEPTION

    WHEN non_e_custode
    THEN RAISE_APPLICATION_ERROR(-20009, 'ERRORE! UN INSERVIENTE OD UN SEGRETARIO NON SANNO COME SI CHIUIDONO LE PORTE!');

END;



--Creazione del Trigger che permette di associare nella tabella dei 
--turni del personale medico, ad ogni individuo il suo reparto adeguato.
--Esempio, non ha sensoc eh un medico faccia un turno in un reparto "Mensa"
--il Trigger serve apposta per impedire che ció accada. 

CREATE OR REPLACE TRIGGER Ad_ognuno_il_suo_reparto
BEFORE INSERT OR UPDATE ON Fa_Turno
FOR EACH ROW

DECLARE

    dis_infermieristico Personale_Medico.Discriminante % TYPE;
    dis_psicoterapia Personale_Medico.Discriminante % TYPE;
    dis_camere Personale_Medico.Discriminante % TYPE;


BEGIN

    IF :NEW.codice_rep_turno = 1
    THEN RAISE_APPLICATION_ERROR(-20010, 'ERRORE! IL PERSONALE MEDICO NON FA TURNI DI LAVORO NELLA MENSA!');
    END IF;

    IF :NEW.codice_rep_turno = 2 THEN

        SELECT Discriminante INTO dis_infermieristico
        FROM Personale_Medico
        WHERE Codice_albo = :NEW.pers_med;

        IF dis_infermieristico NOT IN (2,4)
        THEN RAISE_APPLICATION_ERROR(-20011, 'ERRORE! PSICHIATRI O PSICOTERAPEUTI NON LAVORANO IN INFERMIERIA!');
        END IF;

    END IF;

    IF :NEW.codice_rep_turno = 3 THEN

        SELECT Discriminante INTO dis_psicoterapia
        FROM Personale_Medico
        WHERE Codice_albo = :NEW.pers_med;

        IF dis_psicoterapia NOT IN(1,3)
        THEN RAISE_APPLICATION_ERROR(-20012, 'ERRORE! SOLO PSICOTERAPEUTI E PSICHIATRI LAVORANO NEL REAPRTO PSICHIATRIA!');
        END IF;

    END IF;

    IF :NEW.codice_rep_turno = 4 THEN

        SELECT Discriminante INTO dis_camere
        FROM Personale_Medico
        WHERE Codice_albo = :NEW.pers_med;

        IF dis_camere <> 2
        THEN RAISE_APPLICATION_ERROR(-20013, 'ERRORE! GLI INFERMIERI SONO GLI UNICI CHE HANNO ACCESSO AL REPARTO CAMERE!');
        END IF;

    END IF;

END;



--creazione del Trigger per far si che non si possano inserire valori
 --nella colonna specializzazione se il discriminante è dierso da 4,ovvero se non sono medici.
 

CREATE OR REPLACE TRIGGER solo_medici_hanno_specializzazione
BEFORE INSERT OR UPDATE ON Personale_Medico
FOR EACH ROW

DECLARE
	
	spec_solo_per_medici EXCEPTION;
	
BEGIN

	IF :NEW.Discriminante <> 4 AND :NEW.Specializzazione IS NOT NULL 
	THEN RAISE spec_solo_per_medici;
	END IF;

EXCEPTION

	WHEN spec_solo_per_medici
	THEN RAISE_APPLICATION_ERROR(-20014,'ERRORE! SOLO I MEDICI POSSONO AVERE UNA SPECIALIZZAZIONE!');

END;



--Creazione del trigger per imperdire che un Check-Up positivo
--abbia indice di gravità diverso da 0
--Non ha senso che un Paziente che sta bene, abbia un indice di gravità.


CREATE OR REPLACE TRIGGER Se_sta_bene_sta_bene
BEFORE INSERT OR UPDATE ON Check_Up
FOR EACH ROW

DECLARE

	sta_bene_ma_non_sta_bene EXCEPTION;

BEGIN

	IF :NEW.risultato = 'P' AND :NEW.Ind_grav <> 0
	THEN RAISE sta_bene_ma_non_sta_bene;
	END IF;

EXCEPTION

	WHEN sta_bene_ma_non_sta_bene
	THEN RAISE_APPLICATION_ERROR(-200015,'ERRORE! IL PAZIENTE NON PUÒ STARE BENE E MALE ALLO STESSO TEMPO!');	

END;



--Crezione del Trigger per impedire che una Prenotazione risultata Rifutata
--Venga inserita nell'elenco Visite

CREATE OR REPLACE TRIGGER No_visite_falze
BEFORE INSERT OR UPDATE ON Visita
FOR EACH ROW

DECLARE
	
	esito_prenotazione Prenotazione.esito % TYPE;
	prenotazione_rifiutata EXCEPTION;

BEGIN

	SELECT esito INTO esito_prenotazione
	FROM Prenotazione
	WHERE data_ora_visita = :NEW.data_visita_prenotazione AND CF_dipendenza = :NEW.CF_prenotazione_visita;
	
	IF esito_prenotazione <> 'Accettata'
	THEN RAISE prenotazione_rifiutata;
	END IF;

EXCEPTION

	WHEN prenotazione_rifiutata
	THEN RAISE_APPLICATION_ERROR(-20016, 'ERRORE! UN VISITATORE NON PUÒ EFFETTUARE UNA VISITA SE QUESTA GLI È STATA RIFIUTATA!');

END;



--Creazione del Trigger per impedire a pazienti minorenni di entrare in struttura

CREATE OR REPLACE TRIGGER Paziente_Troppo_piccolo 
BEFORE INSERT OR UPDATE ON Paziente 
FOR EACH ROW 
     
DECLARE 
	 
    troppo_piccolo EXCEPTION; 
	eta_ingresso NUMBER; 
 
BEGIN 
 
    eta_ingresso := TRUNC(MONTHS_BETWEEN(:NEW.Data_ingresso,:NEW.DDN) / 12); 
    IF eta_ingresso<18 
    THEN RAISE troppo_piccolo; 
    END IF; 
 
EXCEPTION 
 
    WHEN troppo_piccolo 
    THEN RAISE_APPLICATION_ERROR(-20017, 'ERRORE! IL PAZIENTE DEVE AVERE ALMENO 18 ANNI!'); 
 
END;

--Creazione del trigger per definire bene al momento della loro creazione
--Le Stanze in modo che siano o sale o Camere

CREATE OR REPLACE TRIGGER camere_so_camere_sale_so_sale
BEFORE INSERT OR UPDATE ON Stanza 
FOR EACH ROW

DECLARE 

	controllino_camerone EXCEPTION;
	controllino_stanzone EXCEPTION; 	
 
BEGIN

	IF :NEW.Discriminante_s = 1 THEN
		
		IF :NEW.codice_rep_cam <> 4 OR :NEW.codice_rep_s IS NOT NULL
		THEN RAISE controllino_camerone;
		END IF ;
		
	END IF;
	
	IF :NEW.Discriminante_s = 2 THEN
		
		IF :NEW.codice_rep_cam IS NOT NULL OR :NEW.codice_rep_s <> 3
		THEN RAISE controllino_stanzone;
		END IF ;
		
    END IF;

END;

