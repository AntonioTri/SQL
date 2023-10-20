
DROP TABLE CONSEGNA;
DROP TABLE RIDER;
DROP TABLE DIVENTA;
DROP TABLE ACQUISTO;
DROP TABLE CARTA_FEDELTA;
DROP TABLE PROMOZIONE;
DROP TABLE AGENZIA_RIDER;
DROP TABLE CLIENTE;
DROP TABLE FORNISCE;
DROP TABLE INVENTARIO;
DROP TABLE FORNITURA;
DROP TABLE FORNITORE;
DROP TABLE TURNO;
DROP TABLE STIPENDIO;
DROP TABLE DIPENDENTE;
DROP TABLE RESPONSABILE;

create table RESPONSABILE ( 
    COD_FISC varchar2(16) not null constraint responsabile_pk primary key, 
    NOME varchar2(4000) not null, 
    COGNOME varchar2(4000) not null, 
    STIPENDIO number not null, 
    NASCITA date 
);



create table DIPENDENTE ( 
    COD_FIS varchar2(16) not null constraint dipendente_pk primary key, 
    NOME_DIP varchar2(4000) not null, 
    COGNOME_DIP varchar2(4000) not null, 
    RUOLO varchar2(4000) not null, 
    NASCITA_DIP date not null,
    COD_FISC_RESP varchar2(16) not null,
    CONSTRAINT fk_responsabile
    FOREIGN KEY (COD_FISC_RESP) REFERENCES RESPONSABILE(COD_FISC),
CONSTRAINT ruoli_ammessi CHECK(
LOWER(RUOLO) IN
   ('addetto vendite','cassa','pulizia pesce'))
);



create table STIPENDIO (
    LORDO number,
    DATA_STIPENDIO date,
    CF_RICEVENTE varchar2(16),
    CONSTRAINT STIPENDIO_PK PRIMARY KEY(DATA_STIPENDIO,CF_RICEVENTE),						
    CONSTRAINT FK_DIPENDENTE
    FOREIGN KEY (CF_RICEVENTE) REFERENCES DIPENDENTE(COD_FIS),
CONSTRAINT stipendi CHECK(
LORDO BETWEEN 600 and 2600)
);



create table TURNO(
DATA_INIZIO timestamp not null,
CF_TURNO varchar2(16) not null,
CONSTRAINT TURNO_PK PRIMARY KEY(CF_TURNO,DATA_INIZIO),
CONSTRAINT fk_dip
FOREIGN KEY (CF_TURNO) REFERENCES DIPENDENTE(COD_FIS)
);



create table FORNITORE(
PARTITA_IVA varchar2(11) not null constraint fornitore_pk primary key,
PROVENIENZA varchar2(30) not null,
COMPAGNIA varchar2(20)
);



create table FORNITURA(
NUMERO_FATTURA varchar2(30) not null constraint fornitura_pk primary key,
QUANTITA number,
COSTO number,
CF_ORDINANTE varchar2(16) not null,
PI_FORNITORE varchar2(11) not null,
DATA_ORDINE date,
DATA_CONSEGNA date,
CONSTRAINT fk_fornitura
FOREIGN KEY (CF_ORDINANTE) REFERENCES RESPONSABILE(COD_FISC),
CONSTRAINT fk_fornitura2
FOREIGN KEY (PI_FORNITORE) REFERENCES FORNITORE(PARTITA_IVA)
);



create table INVENTARIO(
ID_LOTTO varchar2(10) not null constraint inventario_pk primary key,
ALLEVAMENTO number(1) not null,
QUANTITA_INV number not null,
SPECIE varchar2(15),
INDICE_FRESCHEZZA varchar2(1),
NOME_LUOGO varchar2(30) not null,
COSTO_VENDITA number,
DATA_PESCA date
);



create table FORNISCE(
N_FATTURA varchar2(20) not null,
IDLOTTO varchar2(10) not null,
CONSTRAINT FORNISCE_PK PRIMARY KEY(IDLOTTO,N_FATTURA),
CONSTRAINT fk_fornitura3 
FOREIGN KEY(N_FATTURA) REFERENCES FORNITURA(NUMERO_FATTURA),
CONSTRAINT fk_inventario
FOREIGN KEY(IDLOTTO) REFERENCES INVENTARIO(ID_LOTTO)
);



create table CLIENTE(
CF varchar2(16) not null CONSTRAINT pr_cliente primary key,
TELEFONO varchar(10) not null,
NOME varchar2(15),
COGNOME varchar2(15),
NASCITA1 date,
VIA varchar2(15),
CAP varchar2(5),
CITTA varchar2(12)
);



create table AGENZIA_RIDER(
PARTITAIVA VARCHAR2(11) not null CONSTRAINT agenzia_pk primary key,
NOME_AGENZIA varchar2(15) not null,
NUMERO_VERDE varchar2(10)
);



create table PROMOZIONE(
CODICE_PROMO varchar2(6) not null CONSTRAINT promozione_pk primary key,
NOME_PROMO varchar2(10) not null,
PERCENTUALE_PROMO number,
DATA_INIZIO date,
DATA_FINE date
);



create table CARTA_FEDELTA(
ID_CARTA VARCHAR2(15) not null constraint pk_carta primary key,
CF_POSSESSORE varchar2(16) not null,
CONSTRAINT fk_cliente
FOREIGN KEY(CF_POSSESSORE) REFERENCES CLIENTE(CF)
);



create table ACQUISTO(
SCONTRINO varchar2(15) not null constraint acquisto_pk primary key,
DATA_ACQUISTO date,
IDCARTA VARCHAR(15) not null, 
ID_PROMOZIONE varchar2(6) not null,
CONSTRAINT fk_carta
FOREIGN KEY (IDCARTA) REFERENCES CARTA_FEDELTA(ID_CARTA),
CONSTRAINT fk_promo
FOREIGN KEY (ID_PROMOZIONE) REFERENCES PROMOZIONE(CODICE_PROMO)
);



create table DIVENTA(
IDL varchar2(20) not null,
COD_SCONTRINO varchar2(15) not null,
QUANTITA number not null,
CONSTRAINT DIVENTA_PK PRIMARY KEY(IDL,COD_SCONTRINO),
CONSTRAINT fk_inventario1 
FOREIGN KEY (IDL) REFERENCES INVENTARIO(ID_LOTTO),
CONSTRAINT fk_acquisto 
FOREIGN KEY (COD_SCONTRINO) REFERENCES ACQUISTO(SCONTRINO)
);



create table RIDER(
ID_RIDER varchar2(15) not null CONSTRAINT rider_pk primary key,
NOME_RID varchar2(15) not null,
COGNOME_RID varchar2(15) not null,
NASCITA_RIDER date,
PI_AGENZIA varchar2(11) not null,
CONSTRAINT fk_agenzia
FOREIGN KEY (PI_AGENZIA) REFERENCES AGENZIA_RIDER(PARTITAIVA)
);



create table CONSEGNA(
ID_CONSEGNA varchar2(10)  not null CONSTRAINT consegna_pk primary key,
ORARIO_CONSEGNA timestamp,
ORARIO_PREVISTO timestamp,
SCONTRINO2 varchar2(15) not null,
ID_RIDER1 varchar2(15) not null,
CONSTRAINT fk_acquisto1
FOREIGN KEY (SCONTRINO2) REFERENCES ACQUISTO(SCONTRINO),
CONSTRAINT fk_rider
FOREIGN KEY (ID_RIDER1) REFERENCES  RIDER(ID_RIDER)
);