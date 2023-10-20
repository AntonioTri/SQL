--Trovare gli infermieri ceh hanno almeno 3 colleghi con lo stesso sesso e la stessa data di nascita
--Database ospedale
select nome, cognome
from persona p join infermiere i on p.CF = i.CF
where data_nascita in ( select data_nascita
    			from (	select data_nascita, sesso, count(*) as conta
     				from persona p join infermiere i on p.CF = i.CF
     				group by data_nascita, sesso)
    			where conta >=3);



--Per ogni specializzazione visualizzare il numero di interventi effettuati ed il numero di pazienti operati
-- da medici con quella specializzazione e almeno cinque anni di esperienza
Select specializzazione, nro_operazioni, nro_operati_da_esperti
from
        (select specializzazione, count(*) as nro_operazioni
         from Medico m join effettua e on m.CF = e.CF_med
         group by specializzazione) x

        join

    	(select specializzazione as spec_5_anni, count(*) as nro_operati_da_esperti
	 	 from Medico m join effettua e on m.CF = e.CF_med
         where anni_esp >= 5
         group by specializzazione) y

	on x.specializzazione = y.spec_5_anni;




--visualizzare per ciascun medico, nome, cognome, CF ed il numero di vole in cui ha partecipato ad un'operazione
--con almeno 2 colleghi, se non ha fatto operazioni deve comparire 0 
select p.CF, p.nome, p.cognome, Nro_interv_in_compagnia 
from Medico m 
join persona p 
on m.CF = p.CF
left 	join   (Select cf_med, nome, cognome, persone_presenti, count(CF_med) as Nro_interv_in_compagnia
				from  (	Select * 
      					from   (select CF_med, ID, count(*) as Persone_presenti  
      							from effettua e 
     							join intervento i on e.ID_int = i.ID
      							join assiste a on i.ID = a.ID_int
            		    		group by CF_med, ID)
	 					where persone_presenti > 2) x
    
	    		join Medico m on x.CF_med = m.CF
	    		join Persona p on m.CF = p.CF
        		group by cf_med, nome, cognome, persone_presenti) y
    
on y.CF_med = p.CF;


CREATE OR REPLACE TRIGGER odiamo_oncologi 
BEFORE INSERT OR UPDATE ON effettua 
FOR EACH ROW 
 
DECLARE 
 
	tipo_int intervento.tipo %TYPE;  
 	conta number; 
	conta2 number; 
	CF_med_var effettua.CF_med %TYPE; 
    data_e_ora_var intervento.data_e_ora%TYPE; 
 
BEGIN 
 
	SELECT tipo INTO tipo_int 
	FROM intervento 
	WHERE ID = :NEW.ID_int; 
 
	SELECT COUNT(*) AS conta INTO conta 
	FROM medico 
	WHERE specializzazione = 'ONCOLOGO' AND CF = :NEW.CF_med; 
 
	--DBMS_OUTPUT.PUT_LINE(conta); 
 
	IF conta > 0 AND tipo_int = 'LASER' 
	THEN RAISE_APPLICATION_ERROR(-20001, 'Gli oncologi non possono fare operazioni laser'); 
	END IF; 
 
	SELECT * INTO CF_med_var, data_e_ora_var, conta2
	from( 	SELECT CF_med, data_e_ora, count(*)  
			FROM effettua e 
			JOIN intervento i on e.ID_int = i.ID 
			GROUP BY CF_med, data_e_ora)
	WHERE CF_med = :NEW.CF_med; 
	--HAVING CF_med = :NEW.CF_med; 
 
	IF conta2 >3 
	THEN RAISE_APPLICATION_ERROR(-200002, 'L oncologo in questione ha gia svolto 3 interventi'); 
	END IF; 






END;




insert into PERSONA(CF,NOME,COGNOME,DATA_NASCITA,SESSO) values('AAA0000000000199','TUAMAMMA','PUTTANA',to_date('18/10/1980','dd/mm/yyyy'),'M')
insert into MEDICO(SPECIALIZZAZIONE, ANNI_ESP, CF) values('ONCOLOGO',25,'AAA0000000000199')
insert into  EFFETTUA(CF_MED, ID_INT) values('AAA0000000000199',103)



CREATE OR REPLACE TRIGGER interventi_paziente
BEFORE INSERT OR UPDATE ON intervento
FOR EACH ROW

DECLARE

	nro_int NUMBER;
	Ultimo_intervento DATE;
	tipologia_ultimo_int intervento.tipo % TYPE;

BEGIN

	--Con questa quera troviamo il numero interventi gia fatti dal paziente in questione
	Select count(*) AS nro_interventi INTO nro_int
	from intervento
	group by CF_paz, data_ric
	having CF_paz = :NEW.CF_paz;

	--Poi controlliamo se e maggiore o uguale a 2, perche se vale 1, inserisce ancora, se diventa uguale a 2 lla prossima gia non deve piu inserire
	IF nro_int >= 2 
	THEN RAISE_APPLICATION_ERROR(-20004, 'Il pazinete ha gia subito 2 interventi durante il ricovero');
	END IF;

	--Se ha gia fatto un intervento viene inserita la data massima in 'Ultimo_intervento', altrimenti questo vale NULL
	Select MAX(DATA_E_ORA) into Ultimo_intervento
    from intervento
    where CF_paz = :NEW.CF_paz;

	--Si controlla se la data dell'ultimo intervento non valga NULL e se la differenza tra la data del nuovo intervento che si sta
	--provando ad inserire e la data dell'ultimo sia maggiore di 7 ( valgono le operazioni aritmetiche e ci da lo scarto in giorni sotto forma di intero)
	--Se  e stato fdadtto gia un intervento e la differenza delle date da meno di 7 giorni la tupla non viene inserita
	IF Ultimo_intervento IS NOT NULL AND ((:NEW.data_e_ora - Ultimo_intervento) < 7)
	THEN RAISE_APPLICATION_ERROR(-20005, 'Non possono essere assegnati interventi allo stesso paziente a meno di una settimana di distanza');
	END IF;

	--Si seleziona la tipologia dell'ultimo intervento fatto utilizzando la data prima trovata in combinazione col codice fiscale
	Select tipo INTO tipologia_ultimo_int
	from intervento
	where data_e_ora = Ultimo_intervento AND CF_paz = :NEW.CF_paz;

	--Se la tipologia dell'ultimo intervento e la tipologia del nuovo sono uguali fa errore e non viene inserita la tupla
	IF tipologia_ultimo_int = :NEW.tipo
	THEN RAISE_APPLICATION_ERROR(-20006, 'Un paziente non puo subire due interventi dello stesso tipo');
	END IF;

	--E tutto sequenziale quindi, prima viene controllato se ha gia fatto 2 interventi, poi si controlla se ne ha fatto solo 1
	--e si controlla se sia lontano almeno 7 giorni, poi si controlla se le tipologie sono diverse

END;






CREATE OR REPLACE TRIGGER interventi_paziente
BEFORE INSERT OR UPDATE ON Effettua
FOR EACH ROW

DECLARE

	Op_in_settimana number;
	data_int_assegnato date;

BEGIN

	Select data_e_ora INTO data_int_assegnato
	from intervento
	where ID = :NEW.ID_int;


	Select count(*) INTO Op_in_settimana
	from intervento
	where data_e_ora >= data_int_assegnato -4 AND data_e_ora < data_int_assegnato + 3;

	IF Op_in_settimana >=10 
	THEN RAISE_APPLICATION_ERROR(-20007, 'Un medico non puo fare piu di 10 operazioni in una settimana')





END;




--Un infermiere con meno di 5 anni di esperienza non puo assistere ad interventi di tipo oncologo e non puo assistere a tre interventi consecutivi'
--Se uno di questi dura piu di tre ore allora gli interventi massimi nello stesso giorno scendono a due


CREATE OR REPLACE TRIGGER infermieri_esperti
BEFORE INSERT OR UPDATE ON assiste
FOR EACH ROW

DECLARE

	data_assunzione_inf date;
	data_operazione date;
	differenza_giorni_date number;
	tipo_operazione intervento.tipo % TYPE;

	intervento_1 number;
	intervento_2 number;
	intervento_3 number;

	nro_interventi number;

	durata_1 number;
	durata_2 number;
	data_1 date;
	data_2 date;
	data_3 date;

BEGIN

	select data_ass into data_assunzione_inf
	from infermiere
	where CF = :NEW.CF_inf;

	select data_e_ora into data_operazione
	from intervento
	where ID = :NEW.ID_int;

	select tipo into tipo_operazione
	from intervento
	where ID = :NEW.ID_int;

	differenza_giorni_date := data_operazione - data_assunzione_inf;

	IF differenza_giorni_date < 5*365 AND tipo_operazione = 'ONCOLOGICO'
	THEN RAISE_APPLICATION_ERROR(-20010, 'Gli infermieri con meno di 5 anni di esperienza non possono assistere ad interventi oncologici');
	END IF;

	IF differenza_giorni_date < 5*365 THEN

		select MAX(ID_int) into intervento_1
		from assiste
		where CF_inf = :NEW.CF_inf; 

		select MAX(ID_int) into intervento_2
		from assiste
		where CF_inf = :NEW.CF_inf AND ID_int < intervento_1; 

			IF intervento_2 = intervento_1 - 1 THEN

				select durata, data_e_ora into durata_1, data_1
				from intervento
				where ID = intervento_1;

				select durata, data_e_ora into durata_2, data_2
				from intervento
				where ID = intervento_2;

				select data_e_ora into data_3
				from intervento
                where ID = :NEW.ID_int;
				
				IF (durata_1 >=3 OR durata_2 >=3) AND ((data_1 = data_2) AND (data_2 = data_3))
				THEN RAISE_APPLICATION_ERROR(-20011, 'L infermiere  in questione risulta inesperto ed assegnato alle ultime 2 operazioni nello stesso giorno, una di esse e durata piu di 3 ore, pertanto non puo partecipare alla ' || :NEW.ID_int || ' poiche successiva delle due assegnategli in precedenza' || data_1 || ' ' || data_2 );
				END IF;
				
				select count(*) into nro_interventi
				from intervento i join assiste a on i.ID = a.ID_int
				group by data_e_ora, CF_inf
				having CF_inf = :NEW.CF_inf;

        		select MAX(ID_int) into intervento_3
        		from assiste
        		where CF_inf = :NEW.CF_inf AND ID_int < intervento_2;

				IF (intervento_3 = intervento_2 - 1) AND (nro_interventi >=3) AND ((data_1 = data_2) AND (data_2 = data_3))
                THEN RAISE_APPLICATION_ERROR(-20012, 'L infermiere in questione risulta inesperto e non puo assistere a piu di 3 interventi consecutivi');
				END IF;

			END IF;

	END IF;

END;






insert into INTERVENTO(ID, TIPO, DATA_E_ORA, DURATA, SALA_OP, CF_PAZ,DATA_RIC) values(115,'VASECTOMIA',to_date('19/03/2009 11:00:00','dd/mm/yyyy HH24:mi:ss'),1,'SALA TRE','AAA0000000000018',to_date('02/05/2009','dd/mm/yyyy'));
update intervento set data_e_ora = '20-MAR-2009' where id = 115;

insert into ASSISTE(CF_INF, ID_INT) values('AAA0000000000999', 115);

update intervento set durata = 2 where ID = 114;
update intervento set data_e_ora = '19-MAR-2009' where ID = 115;
update intervento set durata = 2 where ID = 116;






INSERT INTO Persona (CF, nome, cognome, data_nascita, sesso) VALUES ('abcdefghijklmnop', 'Pippo', 'Baudo', '18-NOV-1958', 'M');
INSERT INTO INFERMIERE (data_ass, qualifica, cf) VALUES ('21-OCT-1990', 'Tirocinante sottopagato', 'abcdefghijklmnop');

INSERT INTO Persona (CF, nome, cognome, data_nascita, sesso) VALUES ('123456789acvbnmg', 'Pippotto', 'D acqua', '18-NOV-1958', 'M');
INSERT INTO INFERMIERE (data_ass, qualifica, cf) VALUES ('25-NOV-1995', 'Tirocinante sottopagato', '123456789acvbnmg');



--Visualizzare il nome e cognome dell'utente che nell'ultimo mese (fa fede la data di sistema) si è
--aggiudicato l’oggetto con il prezzo base più alto tra tutti quelli messi in vendita in quel mese (si presuppone che tale utente sia unico)


SELECT nome, cognome
FROM asta a
JOIN rilanciata r ON a.ID_asta = r.ID_asta
JOIN utente u ON r.login = u.login
WHERE data_inizio >= ADD_MONTHS(TRUNC(sysdate), -1)
AND prezzo_base = (
    SELECT MAX(prezzo_base)
    FROM asta
    WHERE data_inizio >= ADD_MONTHS(TRUNC(sysdate), -1)
)
AND prezzo_rilancio = (
	SELECT MAX(prezzo_rilancio)
    FROM asta a
    join rilanciata r on a.ID_asta = r.ID_asta
    WHERE data_inizio >= ADD_MONTHS(TRUNC(sysdate), -1)
);



INSERT INTO OGGETTO (NOME, CODICE_OGGETTO, PROVENIENZA,	INGOMBRO) VALUES ('GIOCONDA 2.0','1000000099','LOUVRE', 1);
INSERT INTO ASTA(ID_ASTA, RILANCIO_MIN, PREZZO_BASE, DATA_INIZIO, DATA_FINE, CODICE_OGGETTO) VALUES
('A000000099', 6000, 24000, to_date('01-09-2023 10:00','dd-mm-yyyy hh24:mi'),to_date('25-09-2023 18:00','dd-mm-yyyy hh24:mi'),'1000000099');

INSERT INTO OGGETTO (NOME, CODICE_OGGETTO, PROVENIENZA,	INGOMBRO) VALUES ('GIOCONDA 3.0','1000000100','LOUVRE', 1);
INSERT INTO ASTA(ID_ASTA, RILANCIO_MIN, PREZZO_BASE, DATA_INIZIO, DATA_FINE, CODICE_OGGETTO) VALUES
('A000000100', 6000, 24000, to_date('01-08-2023 10:00','dd-mm-yyyy hh24:mi'),to_date('19-09-2023 18:00','dd-mm-yyyy hh24:mi'),'1000000099');

INSERT INTO RILANCIATA(ID_ASTA, LOGIN, PREZZO_RILANCIO) VALUES
('A000000099','SOTHEBYS',30000);

INSERT INTO RILANCIATA(ID_ASTA, LOGIN, PREZZO_RILANCIO) VALUES
('A000000100','SOTHEBYS',30000);

















