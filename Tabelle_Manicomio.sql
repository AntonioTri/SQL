--Creazione delle tabelle;

CREATE TABLE Trattamento(

    Nome_tratt      VARCHAR(40) PRIMARY KEY

);

CREATE TABLE Farmacologico(

    Nome_tratt_f     VARCHAR(40) PRIMARY KEY,

    --Chiave esterna verso calsse madre Trattamento
    CONSTRAINT FK_farmacologico_figlia
    FOREIGN KEY (Nome_tratt_f) REFERENCES Trattamento(Nome_tratt)  ON DELETE CASCADE  

);

CREATE TABLE Terapeutico(

    Nome_tratt_t  VARCHAR(40) PRIMARY KEY,

    --Chiave esterna verso classe madre Trattamento
    CONSTRAINT FK_terapeutico_figlia
    FOREIGN KEY (Nome_tratt_t) REFERENCES Trattamento(Nome_tratt) ON DELETE CASCADE

);

CREATE TABLE Medicinale(

    ATC         CHAR(15) PRIMARY KEY,
    Nome_med    VARCHAR(30) NOT NULL,
    Tipologia   VARCHAR(30) NOT NULL

);

CREATE TABLE Fa_uso(

    Nome_tratt_uso    VARCHAR(40) NOT NULL,
    ATC_usato         CHAR(15)NOT NULL,

    --Chiave esterna verso Trattamento
    CONSTRAINT FK_fa_uso_trattamento
    FOREIGN KEY (Nome_tratt_uso) REFERENCES Trattamento(Nome_tratt),
    
    --Chiave esterna verso Medicinale
    CONSTRAINT FK_fa_uso_medicinale
    FOREIGN KEY (ATC_usato) REFERENCES Medicinale(ATC)

);

-- Tabella reparto
CREATE TABLE Reparto (

    codice_rep        NUMBER PRIMARY KEY,
    Nome_reparto      VARCHAR(30) NOT NULL,
    Metri_quadri      NUMBER

);

CREATE TABLE Mensa (

    codice_m          NUMBER,
    Numero_posti      NUMBER,

    --Chiave esterna verso Reparto
    CONSTRAINT FK_mensa_reaprto
    FOREIGN KEY (codice_m) REFERENCES Reparto(codice_rep)


);

-- Tabella sottotipo infermieristico
CREATE TABLE Infermieristico (

    codice_rep_i     NUMBER PRIMARY KEY,
    Numero_stanze    NUMBER NOT NULL,

    --Chiave esterna verso classe madre Reparto
    CONSTRAINT FK_infermieristico_figlia
    FOREIGN KEY (codice_rep_i) REFERENCES reparto(codice_rep) ON DELETE CASCADE
);

-- Tabella sottotipo psichiatrico
CREATE TABLE Psichiatrico (

    codice_rep_p    NUMBER PRIMARY KEY,
    numero_sale     NUMBER NOT NULL,

    --Chiave esterna verso classe madre Reparto
    CONSTRAINT FK_psichiatrico_figlia
    FOREIGN KEY (codice_rep_p) REFERENCES reparto(codice_rep) ON DELETE CASCADE
);

-- Tabella sottotipo camere
CREATE TABLE Camere (

    codice_rep_c    NUMBER PRIMARY KEY,
    numero_camere   NUMBER NOT NULL,

    --Chiave esterna verso classe madre Reparto
    CONSTRAINT FK_camere_figlia
    FOREIGN KEY (codice_rep_c) REFERENCES reparto(codice_rep) ON DELETE CASCADE
);

CREATE TABLE Stanza(

    Numero_stanza       NUMBER PRIMARY KEY,
    codice_rep_cam      NUMBER,
    codice_rep_s        NUMBER,
    Discriminante_s     NUMBER NOT NULL CHECK (Discriminante_s IN (1,2)),

    --Chiave esterna verso Reparto camere
    CONSTRAINT FK_stanza_camere
    FOREIGN KEY (codice_rep_cam) REFERENCES Camere(codice_rep_c),

    --Chiave esterna verso Reparto psichiatrico
    CONSTRAINT FK_stanza_psichiatrico
    FOREIGN KEY (codice_rep_s) REFERENCES Psichiatrico(codice_rep_p)
);

CREATE TABLE Personale_Medico(

    Codice_albo             CHAR(15) PRIMARY KEY,
    Nome                    VARCHAR(20) NOT NULL,
    Cognome                 VARCHAR(20) NOT NULL,
    Tipologia               VARCHAR(30) NOT NULL,
    Specializzazione        VARCHAR(30),
    Discriminante           NUMBER NOT NULL CHECK (Discriminante IN (1,2,3,4))


);

CREATE TABLE Fa_Turno(

    pers_med            CHAR(15),
    codice_rep_turno    NUMBER,
    data_turno          DATE NOT NULL,

    --Chiave esterna verso Personale_medico
    CONSTRAINT FK_turno_persmed
    FOREIGN KEY (pers_med) REFERENCES Personale_Medico(Codice_albo),

    --Chiave esterna verso Reparto
    CONSTRAINT FK_turno_reparto
    FOREIGN KEY (codice_rep_turno) REFERENCES Reparto(codice_rep)

);

CREATE TABLE Paziente(

    CF                  CHAR(16) PRIMARY KEY,
    Numero_stanza_paz   NUMBER NOT NULL,
    Nome                VARCHAR(20) NOT NULL,
    Cognome             VARCHAR(20) NOT NULL,
    DDN                 DATE NOT NULL,
    DUP                 DATE,
    Data_ingresso       DATE NOT NULL,
    Sesso               CHAR(1) CHECK(Sesso IN ('M','F')),

    --Chiave esterna verso Stanza
    CONSTRAINT FK_paziente_stanza
    FOREIGN KEY (Numero_stanza_paz) REFERENCES Stanza(Numero_stanza)


);

CREATE TABLE Ha_tratt(

    Nome_tratt_fatto    VARCHAR(40) CHECK( Nome_tratt_fatto IN ('Terapia antidepressiva','Terapia ansiolitica','Terapia Stabilizzatore_dell_umore','Terapia antipsicotica')),
    CF_paziente_farm    CHAR(16),
    Durata_giorni       NUMBER NOT NULL,
    Quantita_ml         NUMBER NOT NULL,
    Frequenza_ore       NUMBER NOT NULL,
    Modalita_sommin     VARCHAR(40) NOT NULL,

    --Chiave esterna verso Tratt_Farmacologico
    CONSTRAINT FK_paz_tratt
    FOREIGN KEY (CF_paziente_farm) REFERENCES Paziente(CF),

    --Chiave esterna verso 
    CONSTRAINT FK_farm_tratt
    FOREIGN KEY (Nome_tratt_fatto) REFERENCES Farmacologico(Nome_tratt_f)

);

CREATE TABLE Prescrizione (

    CF_paz_prescrizione         CHAR(16),
    Codice_albo_prescrizione    CHAR(15),
    Nome_tratt_prescritto       VARCHAR(40),
    data_prescrizione           DATE,

    --Chiave esterna verso Pazietne
    CONSTRAINT FK_prescrizione_trattamento
    FOREIGN KEY (CF_paz_prescrizione) REFERENCES Paziente(CF),

    --Chiave esterna verso Personale Medico
    CONSTRAINT FK_prescrizione_persmed
    FOREIGN KEY (Codice_albo_prescrizione) REFERENCES Personale_Medico(Codice_albo),

    --Chiave esterna verso Trattamento
    CONSTRAINT FK_prescrizione_trattamenmto
    FOREIGN KEY (Nome_tratt_prescritto) REFERENCES Trattamento(Nome_tratt)

);


CREATE TABLE Seduta(

    ID_seduta         char(10) PRIMARY KEY,
    Numero_stanza_s   NUMBER,
    Codice_albo_s     CHAR(15),
    CF_s              CHAR(16),
    Nome_tratt_s      VARCHAR(40),
    Data_ora_s        TIMESTAMP NOT NULL,

    --Chiave esterna verso Stanza
    CONSTRAINT FK_seduta_stanza
    FOREIGN KEY (Numero_stanza_s) REFERENCES Stanza(Numero_stanza),

    --Chiave esterna verso Personale medico
    CONSTRAINT FK_seduta_persmed
    FOREIGN KEY (Codice_albo_s) REFERENCES Personale_Medico(Codice_albo),

    --Chiave esterna verso Paziente
    CONSTRAINT FK_seduta_paziente
    FOREIGN KEY (CF_s) REFERENCES Paziente(CF),

    --!!Errore Chiave esterna verso Trattamento
    CONSTRAINT FK_seduta_trattamento
    FOREIGN KEY (Nome_tratt_s) REFERENCES Terapeutico(Nome_tratt_t)

);

CREATE TABLE Somministra(

    Nome_tratt_somm    VARCHAR(40),
    CF_somm            CHAR(16),
    Codice_albo_somm   CHAR(15),
    Data_ora_somm      TIMESTAMP NOT NULL,

    --Chiave esterna verso Trattamento
    CONSTRAINT FK_somministra_farmacologico
    FOREIGN KEY (Nome_tratt_somm) REFERENCES Farmacologico(Nome_tratt_f),

    --Chiave esterna verso Paziente
    CONSTRAINT KF_somministra_paziente
    FOREIGN KEY (CF_somm) REFERENCES Paziente(CF),

    --Chiave esterna verso Personale medico
    CONSTRAINT FK_somministra_persmed
    FOREIGN KEY (Codice_albo_somm) REFERENCES Personale_Medico(Codice_albo)

);

CREATE TABLE Check_Up(

    ID_CheckUp     CHAR(15) PRIMARY KEY,
    CF_checkup     CHAR(16),
    risultato      CHAR(1) CHECK (risultato IN ('P', 'N')),
    Ind_grav       NUMBER CHECK (Ind_grav IN(0,1,2,3,4,5)),

    --Chiave esterna verso Paziente
    CONSTRAINT FK_check_paz
    FOREIGN KEY (CF_checkup) REFERENCES Paziente(CF)



);

CREATE TABLE Diagnosi(

    ID_CheckUp                  Char(15),
    Malattia_diagnosticata      VARCHAR(30),

    --Chiave esterna della tabella per i multivalori verso Check_Up
    CONSTRAINT FK_diagnosi_ck
    FOREIGN KEY (ID_CheckUp) REFERENCES Check_Up(ID_CheckUp)

);

CREATE TABLE Effettua_ck(

    data_ora_ck     TIMESTAMP NOT NULL,
    ck_up_eff       CHAR(15),
    Codice_albo_ck  CHAR(15),

    --Chiave esterna verso Personale Medico
    CONSTRAINT FK_ck_persmed
    FOREIGN KEY (Codice_albo_ck) REFERENCES Personale_Medico(Codice_albo),

    --Chiave esterna verso Check_up
    CONSTRAINT FK_check_up
    FOREIGN KEY (ck_up_eff) REFERENCES Check_Up (ID_CheckUp)


);

CREATE TABLE Ricovero (

    giorni_durata       NUMBER NOT NULL,
    ricovero_inferm     NUMBER,
    ricovero_checkup    CHAR(15),

    --Chiave esterna verso Reparto infeermieristico
    CONSTRAINT FK_ricovero_inf
    FOREIGN KEY (ricovero_inferm) REFERENCES Infermieristico(codice_rep_i),

    --Chiave esterna verso Check_up
    CONSTRAINT FK_ricovero_chekup
    FOREIGN KEY (ricovero_checkup) REFERENCES Check_Up(ID_CheckUp)

);

CREATE TABLE Condizione(

    Nome    VARCHAR(60) PRIMARY KEY

);

CREATE TABLE Sintomi(

    sintomo_diagn         VARCHAR(60),
    fk_condizione         VARCHAR(60),

    --Chiave esterna dalla tabella dei Sintomi verso Condizione
    CONSTRAINT FK_Sintomi_condizione
    FOREIGN KEY (fk_condizione) REFERENCES Condizione(Nome)

);

CREATE TABLE Diagnostica(

    CF_dia              CHAR(16),
    Codice_albo_dia     CHAR(15),
    Nome_condizione     VARCHAR(60),
    data_diagn          TIMESTAMP,

    --Chiave esterna verso Paziente
    CONSTRAINT FK_diagnostica_paziente
    FOREIGN KEY (CF_dia) REFERENCES Paziente(CF),

    --Chiave esterna verso Personale Medico
    CONSTRAINT FK_diagnostica_persmed
    FOREIGN KEY (Codice_albo_dia) REFERENCES Personale_Medico(Codice_albo),

    --Chiave esterna verso Malattia
    CONSTRAINT FK_diagnostica_condizione
    FOREIGN KEY (Nome_condizione) REFERENCES Condizione(Nome)

);

CREATE TABLE Guardia(

    Matricola       CHAR(20) PRIMARY KEY,
    nome_g          VARCHAR(20) NOT NULL,
    cognome_g       VARCHAR(20) NOT NULL,
    data_assunzione DATE NOT NULL

);

CREATE TABLE Arma(

    Numero_matricola    NUMBER PRIMARY KEY,
    matricola_guardia   CHAR(20) UNIQUE,
    Tipologia           VARCHAR(20) NOT NULL,

    --Chiave esterna verso Guardia
    CONSTRAINT FK_arma_guardia
    FOREIGN KEY (matricola_guardia) REFERENCES Guardia(Matricola)

);

CREATE TABLE Effettua_turno(

    Matricola_turno     CHAR(20),
    Cod_rep_turno_g     NUMBER,
    data_turno_g        DATE NOT NULL,

    --Chiave esterna verso Guardia
    CONSTRAINT FK_turno_guardia
    FOREIGN KEY (Matricola_turno) REFERENCES Guardia(Matricola),

    --Chiave esterna verso Reparto
    CONSTRAINT FK_turno_rep_g
    FOREIGN KEY (Cod_rep_turno_g) REFERENCES Reparto(codice_rep) 

);

CREATE TABLE Personale_di_servizio(

    CF_Pers_serv             CHAR(16) PRIMARY KEY,
    Nome_dip                 VARCHAR(20) NOT NULL,
    Cognome_dip              VARCHAR(20) NOT NULL,
    discriminante_pers_serv  NUMBER NOT NULL CHECK ( discriminante_pers_serv IN(1,2,3)) 

);

CREATE TABLE Turno_in(

    CF_inserviente_turno CHAR(16),
    codice_rep_inser     NUMBER,
    data_turno           DATE NOT NULL,

    --Chiave esterna verso Inserviente
    CONSTRAINT FK_turno_inserviente
    FOREIGN KEY (CF_inserviente_turno) REFERENCES Personale_di_servizio(CF_Pers_serv),

    --Chiave esterna verso Reparto
    CONSTRAINT FK_turno_ins_rep
    FOREIGN KEY (codice_rep_inser) REFERENCES reparto(codice_rep)

);

CREATE TABLE Lavora_in(

    CF_custode_turno    CHAR(16),
    codice_rep_custode  NUMBER,
    data_turno          DATE NOT NULL,

    --Chiave esterna verso Custode
    CONSTRAINT FK_lavora_custode
    FOREIGN KEY (CF_custode_turno) REFERENCES Personale_di_servizio(CF_Pers_serv),

    --Chiave esterna verso Reparto
    CONSTRAINT FK_lavora_reaparto
    FOREIGN KEY (codice_rep_custode) REFERENCES reparto(codice_rep)

);

CREATE TABLE Visitatore(

    CF_visitatore       CHAR(16) PRIMARY KEY,
    nome_visitatore     VARCHAR(20) NOT NULL,
    cog_visitatore      VARCHAR(20) NOT NULL,
    ruolo               VARCHAR(20) NOT NULL CHECK (ruolo IN ('Parente','Ricercatore','Medico'))

);

CREATE TABLE Prenotazione(

    data_ora_visita     TIMESTAMP,         
    CF_dipendenza       CHAR(16),
    CF_pers_serv_pre    CHAR(16),
    CF_paziente		    CHAR(16) NOT NULL,
    esito               CHAR(16) CHECK (esito IN('Accettata','Rifiutata')),
    tipologia           VARCHAR(20) NOT NULL CHECK (tipologia IN ('Parentela','Ricerca','Medica')),


    --Definizione della chiave mista
    CONSTRAINT PK_Prenotazione PRIMARY KEY (CF_dipendenza, data_ora_visita),

    --Chiave esterna verso l'entitá forte
    CONSTRAINT FK_prenotazione_visitatore
    FOREIGN KEY (CF_dipendenza) REFERENCES Visitatore(CF_visitatore),

    --Chiave esterna verso Personale di servizio
    CONSTRAINT FK_prenotazione_personale
    FOREIGN KEY (CF_pers_serv_pre) REFERENCES Personale_di_servizio(CF_Pers_serv)
    
);


CREATE TABLE Visita (

	data_visita_prenotazione 	TIMESTAMP,
	CF_prenotazione_visita  	CHAR(16),
	CF_visita_paziente		CHAR(16),
	
	--Chiave esterna verso Prenotazione
	CONSTRAINT visita_prenotazione
	FOREIGN KEY (CF_prenotazione_visita, data_visita_prenotazione) REFERENCES Prenotazione(CF_dipendenza, data_ora_visita),
	
	--Chiave esterna verso Paziente
	CONSTRAINT visita_paziente
	FOREIGN KEY (CF_visita_paziente) REFERENCES Paziente(CF)

);





