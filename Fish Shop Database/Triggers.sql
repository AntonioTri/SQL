CREATE OR REPLACE TRIGGER DATEINCOERENTI
BEFORE INSERT ON FORNITURA
FOR EACH ROW
DECLARE
DATA_NON_VALIDA EXCEPTION;

BEGIN
IF(:NEW.DATA_CONSEGNA - :NEW.DATA_ORDINE)<0 THEN
RAISE DATA_NON_VALIDA;
END IF;

EXCEPTION
WHEN DATA_NON_VALIDA THEN RAISE_APPLICATION_ERROR(-20009,'DATA CONSEGNA ANTECENTE A DATA ORDINE');

END;



CREATE OR REPLACE TRIGGER DOPPITURNI
BEFORE INSERT OR UPDATE ON TURNO
FOR EACH ROW
DECLARE TURNO_DOPPIO EXCEPTION;
CONTA NUMBER := 0;

BEGIN
SELECT COUNT(*) INTO CONTA FROM TURNO WHERE (:NEW.CF_TURNO = CF_TURNO) AND (TRUNC (:NEW.DATA_INIZIO) = TRUNC (DATA_INIZIO));
DBMS_OUTPUT.PUT_LINE(CONTA);
IF CONTA > 0 THEN
RAISE TURNO_DOPPIO;
END IF;
--IF((:NEW.DATA_INIZIO - :OLD.DATA_INIZIO) < INTERVAL '1' DAY) AND (:NEW.CF_TURNO = :OLD.CF_TURNO) THEN
--RAISE TURNO_DOPPIO;
--END IF;

EXCEPTION
WHEN TURNO_DOPPIO THEN RAISE_APPLICATION_ERROR(-20008,'STAI INSERENDO 2 TURNI IN UN GIORNO ALLO STESSO LAVORATORE');
END;



CREATE OR REPLACE TRIGGER DOPPIOSTIPENDIO
BEFORE INSERT OR UPDATE ON STIPENDIO
FOR EACH ROW
DECLARE DOPPIO_STIPENDIO EXCEPTION;
CONTA NUMBER := 0;

BEGIN
SELECT COUNT(*) INTO CONTA FROM STIPENDIO WHERE (:NEW.CF_RICEVENTE = CF_RICEVENTE) AND ((:NEW.DATA_STIPENDIO-DATA_STIPENDIO)/24) < 744;
IF CONTA > 0 THEN
RAISE DOPPIO_STIPENDIO;
END IF;

EXCEPTION
WHEN DOPPIO_STIPENDIO THEN RAISE_APPLICATION_ERROR (-20007, 'Questo stipendio è stato già inserito');
END;



CREATE OR REPLACE TRIGGER QUANTITA_NON_DISPONIBILE
BEFORE INSERT ON DIVENTA
FOR EACH ROW
DECLARE QUANTITA_NONDISPONIBILE EXCEPTION;
QUANTITA_INVENTARIO NUMBER := 0;

BEGIN
SELECT QUANTITA_INV INTO QUANTITA_INVENTARIO FROM INVENTARIO WHERE ID_LOTTO = :NEW.IDL;
IF :NEW.QUANTITÁ > QUANTITA_INVENTARIO THEN
RAISE QUANTITA_NONDISPONIBILE;
END IF;

EXCEPTION
WHEN QUANTITA_NONDISPONIBILE THEN RAISE_APPLICATION_ERROR(-20006,'Prodotto esaurito');
END;





CREATE OR REPLACE TRIGGER VENDITA_COSTO
BEFORE INSERT OR UPDATE ON INVENTARIO
FOR EACH ROW
DECLARE
IN_PERDITA EXCEPTION;
COSTO_FORN NUMBER;

BEGIN
SELECT COSTO INTO COSTO_FORN FROM FORNITURA JOIN FORNISCE ON (NUMERO_FATTURA=N_FATTURA) WHERE IDLOTTO=:NEW.ID_LOTTO;
IF :NEW.COSTO_VENDITA < COSTO_FORN THEN
RAISE IN_PERDITA;
END IF;

EXCEPTION
WHEN IN_PERDITA THEN RAISE_APPLICATION_ERROR(-20005,'Il costo di vendita è minore rispetto a quanto è stato pagato il prodotto');
END;


CREATE OR REPLACE TRIGGER CONTROLLO_PROMO
BEFORE INSERT ON PROMOZIONE
FOR EACH ROW
DECLARE PROMO_INCOERENTE EXCEPTION;

BEGIN
IF :NEW.DATA_INIZIO > :NEW.DATA_FINE THEN
RAISE PROMO_INCOERENTE;
END IF;

EXCEPTION
WHEN PROMO_INCOERENTE THEN RAISE_APPLICATION_ERROR(-20004,'Promo incoerente');
END;



CREATE OR REPLACE TRIGGER DATA_CONSEGNA_ERR
BEFORE INSERT OR UPDATE ON CONSEGNA
FOR EACH ROW
DECLARE CONSEGNA_INCOERENTE EXCEPTION;
ACQUISTO_DATE NUMBER := 0;

BEGIN 
SELECT COUNT(*) INTO ACQUISTO_DATE FROM ACQUISTO JOIN CONSEGNA ON (SCONTRINO = SCONTRINO2) WHERE TRUNC(:NEW.ORARIO_CONSEGNA) < DATA_ACQUISTO;
IF ACQUISTO_DATE > 0 THEN
RAISE CONSEGNA_INCOERENTE;
END IF;

EXCEPTION
WHEN CONSEGNA_INCOERENTE THEN RAISE_APPLICATION_ERROR(-20003,'Consegna incoerente');
END;


CREATE OR REPLACE TRIGGER ENOUGH_RIDER
BEFORE INSERT ON RIDER
FOR EACH ROW
DECLARE
COUNT_AGENZIA NUMBER := 0;
RIDER_ECC EXCEPTION;

BEGIN
SELECT COUNT (*) INTO COUNT_AGENZIA FROM RIDER WHERE (PI_AGENZIA=:NEW.PI_AGENZIA);
IF COUNT_AGENZIA > 100 THEN
RAISE RIDER_ECC;
END IF;

EXCEPTION
WHEN RIDER_ECC THEN RAISE_APPLICATION_ERROR(-20002,'Troppi rider');
END;





CREATE OR REPLACE TRIGGER PROMO_NON_VALIDA
BEFORE INSERT ON DIVENTA
FOR EACH ROW
DECLARE
TOTALE NUMBER;
PUNTI INTEGER;
PERCENTUALE NUMBER;
NOME_NUOVA_PROMO VARCHAR2(6);
INVALID_PROMO EXCEPTION;

BEGIN
SELECT SUM(COSTO_VENDITA*QUANTITA) INTO TOTALE FROM (INVENTARIO JOIN DIVENTA ON(IDL = ID_LOTTO)) 
JOIN ACQUISTO ON(SCONTRINO = COD_SCONTRINO)
WHERE IDCARTA in (SELECT IDCARTA FROM ACQUISTO WHERE SCONTRINO = :NEW.COD_SCONTRINO) ;
IF TOTALE > 1500 THEN PUNTI :=15;
ELSE PUNTI := TOTALE/100;
END IF;
SELECT CODICE_PROMO INTO NOME_NUOVA_PROMO FROM PROMOZIONE WHERE PERCENTUALE_PROMO = PUNTI;

SELECT PERCENTUALE_PROMO INTO PERCENTUALE
FROM PROMOZIONE
WHERE CODICE_PROMO IN (SELECT ID_PROMOZIONE FROM ACQUISTO WHERE SCONTRINO = :NEW.COD_SCONTRINO);
IF PUNTI<PERCENTUALE THEN
UPDATE ACQUISTO
set ID_PROMOZIONE = NOME_NUOVA_PROMO
where SCONTRINO = :NEW.COD_SCONTRINO;
 RAISE INVALID_PROMO;
END IF;

EXCEPTION
WHEN INVALID_PROMO THEN
RAISE_APPLICATION_ERROR(-20000,'Promo non valida');
END;








