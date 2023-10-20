CREATE OR REPLACE PROCEDURE NUMERO_ACQUISTI (GIORNO DATE)
IS CLICK NUMBER := 0;
BEGIN
SELECT COUNT(*) INTO CLICK FROM ACQUISTO WHERE DATA_ACQUISTO = GIORNO;
DBMS_OUTPUT.PUT_LINE (CLICK);
END;

CREATE OR REPLACE PROCEDURE NUMERO_PROMO (MESE DATE,COD_PROMO VARCHAR2)
IS CONT NUMBER := 0;
BEGIN
SELECT COUNT(*) INTO CONT FROM ACQUISTO JOIN PROMOZIONE ON (ID_PROMOZIONE = CODICE_PROMO) WHERE TRUNC(DATA_ACQUISTO, 'MONTH') = TRUNC(MESE,'MONTH') AND CODICE_PROMO = COD_PROMO;
DBMS_OUTPUT.PUT_LINE(CONT);
END;


CREATE OR REPLACE PROCEDURE NUMERO_PROMO_CLIENTE (MESE DATE,COD_PROMO VARCHAR2,CARTA VARCHAR2)
IS CONT NUMBER := 0;
BEGIN
SELECT COUNT(*) INTO CONT FROM ACQUISTO JOIN PROMOZIONE ON (ID_PROMOZIONE = CODICE_PROMO) WHERE TRUNC(DATA_ACQUISTO, 'MONTH') = TRUNC(MESE,'MONTH') AND CODICE_PROMO = COD_PROMO AND IDCARTA = CARTA ;
DBMS_OUTPUT.PUT_LINE('La carta x ha ' || CONT);
END;





CREATE OR REPLACE PROCEDURE CONSEGNE_RIDER (RIDERONE VARCHAR2, GIORNO DATE)
IS CONT NUMBER := 0;
BEGIN
SELECT COUNT(*) INTO CONT FROM RIDER JOIN CONSEGNA ON (ID_RIDER = ID_RIDER1) WHERE TRUNC(ORARIO_CONSEGNA) = GIORNO AND (ID_RIDER = RIDERONE);
DBMS_OUTPUT.PUT_LINE(CONT);
END;

CREATE OR REPLACE PROCEDURE NUMERO_FORNITURA (MESE DATE,COD_FORNITURA VARCHAR2)
IS CONT NUMBER := 0;
BEGIN
SELECT COUNT(*) INTO CONT FROM FORNITURA JOIN FORNITORE ON (PARTITA_IVA = PI_FORNITORE) WHERE TRUNC(DATA_ORDINE, 'MONTH') = TRUNC(MESE,'MONTH') AND PARTITA_IVA = COD_FORNITURA;
DBMS_OUTPUT.PUT_LINE(CONT);
END;

CREATE OR REPLACE PROCEDURE BUDGET (MESE DATE)
IS USCITE NUMBER := 0; ENTRATE NUMBER := 0;
USCITE2 NUMBER:=0;
TOTALE NUMBER:=0;
BEGIN
SELECT SUM(COSTO) INTO USCITE FROM FORNITURA WHERE TRUNC(DATA_ORDINE,'MONTH') = TRUNC(MESE,'MONTH');
SELECT SUM(LORDO) INTO USCITE2 FROM STIPENDIO WHERE TRUNC(DATA_STIPENDIO,'MONTH') = TRUNC(MESE,'MONTH');
SELECT SUM(QUANTITA*COSTO_VENDITA) INTO ENTRATE
FROM (INVENTARIO JOIN DIVENTA ON (IDL = ID_LOTTO)) JOIN ACQUISTO ON (SCONTRINO = COD_SCONTRINO)
WHERE TRUNC(DATA_ACQUISTO,'MONTH') = TRUNC(MESE,'MONTH');
TOTALE := ENTRATE - USCITE - USCITE2;
DBMS_OUTPUT.PUT_LINE('Il bilancio per questo mese e:' || TOTALE);
END;


END;

CREATE OR REPLACE PROCEDURE TOTALE (SCONTRINO_INV VARCHAR2, CARTA_ID VARCHAR2)
IS TOT NUMBER := 0;
POINTS NUMBER;
PERCENTUALE INTEGER;
SOTT NUMBER;
TOTALESPESA INTEGER :=0;
BEGIN
SELECT SUM(QUANTITA*COSTO_VENDITA) INTO TOT
FROM (INVENTARIO JOIN DIVENTA ON (IDL = ID_LOTTO)) JOIN ACQUISTO ON (SCONTRINO = COD_SCONTRINO)
WHERE SCONTRINO = SCONTRINO_INV;
SELECT PERCENTUALE_PROMO INTO PERCENTUALE FROM PROMOZIONE WHERE CODICE_PROMO = (SELECT ID_PROMOZIONE FROM ACQUISTO WHERE SCONTRINO = SCONTRINO_INV);
SOTT := (TOT*PERCENTUALE)/100;
TOT = TOT-SOTT;
DBMS_OUTPUT.PUT_LINE('Il totale della spesa e: ' || TOT);
DBMS_OUTPUT.PUT_LINE('Totale sconto:' || SOTT);
END;



CREATE OR REPLACE PROCEDURE PUNTI(CARTA VARCHAR2)
IS TOTALESPESA INTEGER :=0;
BEGIN
SELECT SUM(COSTO_VENDITA*QUANTITA) INTO TOTALESPESA FROM (INVENTARIO JOIN DIVENTA ON(IDL = ID_LOTTO)) 
JOIN ACQUISTO ON(SCONTRINO = COD_SCONTRINO)
WHERE IDCARTA = CARTA ;
IF TOTALESPESA >= 1500
THEN TOTALESPESA:= 15;
ELSE
TOTALESPESA := TOTALESPESA/100;
END IF;
DBMS_OUTPUT.PUT_LINE('PUNTI DISPONIBILI SULLA CARTA: ' || TOTALESPESA);
END;






