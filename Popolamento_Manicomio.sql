    --Popolamento tabella medicinale 


        INSERT INTO Medicinale (ATC,Nome_med,Tipologia) VALUES('N06AB03', 'Fluoxetina',  'Antidepressivi'); 
        INSERT INTO Medicinale (ATC,Nome_med,Tipologia) VALUES('N06AB06','Sertralina',   'Antidepressivi');
        INSERT INTO Medicinale (ATC,Nome_med,Tipologia) VALUES('N06AB05','Paroxetina',  'Antidepressivi');
        INSERT INTO Medicinale (ATC,Nome_med,Tipologia) VALUES('N05BA12','Alprazolam',  'Ansiolitici');
        INSERT INTO Medicinale (ATC,Nome_med,Tipologia) VALUES('N05BA01','Dieazepam',  'Ansiolitici');
        INSERT INTO Medicinale (ATC,Nome_med,Tipologia) VALUES('N05BA06','Lorazepam',  'Ansiolitici');
        INSERT INTO Medicinale (ATC,Nome_med,Tipologia) VALUES('N05AX12','Aripiprazolo', 'Antipsicotici');
        INSERT INTO Medicinale (ATC,Nome_med,Tipologia) VALUES('N05AH09','Olanzapina', 'Antipsicotici');
        INSERT INTO Medicinale (ATC,Nome_med,Tipologia) VALUES('N05AH08','Quetiapina','Antipsicotici');
        INSERT INTO Medicinale (ATC,Nome_med,Tipologia) VALUES('N05AX08','Risperidone','Antipsicotici');
        INSERT INTO Medicinale (ATC,Nome_med,Tipologia) VALUES('N05AH02','Clozapina','Ansiolitico');
        INSERT INTO Medicinale (ATC,Nome_med,Tipologia) VALUES('N02BE01','Ibuprofene','Antidolorifico');
        INSERT INTO Medicinale (ATC,Nome_med,Tipologia) VALUES('N02AA05','Paracetamolo','Antidolorifico');
        INSERT INTO Medicinale (ATC,Nome_med,Tipologia) VALUES('N02AX02','Tramadolo','Antidolorifico');
        INSERT INTO Medicinale (ATC,Nome_med,Tipologia) VALUES('M01AB05','Diclofenac','Antinfiammatorio');
        INSERT INTO Medicinale (ATC,Nome_med,Tipologia) VALUES('M01AH01','Naproxene','Antinfiammatorio');
        INSERT INTO Medicinale (ATC,Nome_med,Tipologia) VALUES('N05AN01','Litio','Stabilizzatore_dell_umore');
        INSERT INTO Medicinale (ATC,Nome_med,Tipologia) VALUES('N03AF01','Valproato','Stabilizzatore_dell_umore');
        INSERT INTO Medicinale (ATC,Nome_med,Tipologia) VALUES('N03AX12','Carbamazepina','Stabilizzatore_dell_umore');
        INSERT INTO Medicinale (ATC,Nome_med,Tipologia) VALUES('N05AH03','Lamotrigina','Stabilizzatore_dell_umore');
        INSERT INTO Medicinale (ATC,Nome_med,Tipologia) VALUES('N05AN02','Olanzapina','Stabilizzatore_dell_umore');


    -- Popolamento tabella trattamento


        INSERT INTO Trattamento (Nome_tratt) VALUES('Terapia antidepressiva');
        INSERT INTO Trattamento (Nome_tratt) VALUES('Terapia ansiolitica');
        INSERT INTO Trattamento (Nome_tratt) VALUES('Terapia Stabilizzatore_dell_umore');
        INSERT INTO Trattamento (Nome_tratt) VALUES('Terapia antipsicotica');
        INSERT INTO Trattamento (Nome_tratt) VALUES('Terapia individuale');
        INSERT INTO Trattamento (Nome_tratt) VALUES('Terapia di gruppo');
        INSERT INTO Trattamento (Nome_tratt) VALUES('Terapia occupazionale');
        INSERT INTO Trattamento (Nome_tratt) VALUES('Terapia ricreativa');
        INSERT INTO Trattamento (Nome_tratt) VALUES('Terapia elettroconvulsivante');
        INSERT INTO Trattamento (Nome_tratt) VALUES('Terapia cognitivo-comportamentale');
        INSERT INTO Trattamento (Nome_tratt) VALUES('Terapia dialettico-comportamentale');
        INSERT INTO Trattamento (Nome_tratt) VALUES('Terapia psicoanalitica');
        
    -- Popolamento tabella Farmacologico    


        INSERT INTO Farmacologico (Nome_tratt_f) VALUES('Terapia antidepressiva');
        INSERT INTO Farmacologico (Nome_tratt_f) VALUES('Terapia ansiolitica');
        INSERT INTO Farmacologico (Nome_tratt_f) VALUES('Terapia Stabilizzatore_dell_umore');
        INSERT INTO Farmacologico (Nome_tratt_f) VALUES('Terapia antipsicotica');	

    --Popolamento tabella Terapeutico


        INSERT INTO Terapeutico (Nome_tratt_t) VALUES('Terapia individuale');
        INSERT INTO Terapeutico (Nome_tratt_t) VALUES('Terapia di gruppo');
        INSERT INTO Terapeutico (Nome_tratt_t) VALUES('Terapia occupazionale');
        INSERT INTO Terapeutico (Nome_tratt_t) VALUES('Terapia ricreativa');
        INSERT INTO Terapeutico (Nome_tratt_t) VALUES('Terapia elettroconvulsivante');
        INSERT INTO Terapeutico (Nome_tratt_t) VALUES('Terapia cognitivo-comportamentale');
        INSERT INTO Terapeutico (Nome_tratt_t) VALUES('Terapia dialettico-comportamentale');
        INSERT INTO Terapeutico (Nome_tratt_t) VALUES('Terapia psicoanalitica');
        
    -- Popolamento tabella Fa_uso


        INSERT INTO Fa_uso (Nome_tratt_uso, ATC_usato) VALUES('Terapia antidepressiva','N06AB03');    
        INSERT INTO Fa_uso (Nome_tratt_uso, ATC_usato) VALUES('Terapia antidepressiva','N06AB06');    
        INSERT INTO Fa_uso (Nome_tratt_uso, ATC_usato) VALUES('Terapia antidepressiva','N05AN01');    
        INSERT INTO Fa_uso (Nome_tratt_uso, ATC_usato) VALUES('Terapia ansiolitica','N05BA12');    
        INSERT INTO Fa_uso (Nome_tratt_uso, ATC_usato) VALUES('Terapia ansiolitica','N05BA06');    
        INSERT INTO Fa_uso (Nome_tratt_uso, ATC_usato) VALUES('Terapia antipsicotica','N05AX12');    
        INSERT INTO Fa_uso (Nome_tratt_uso, ATC_usato) VALUES('Terapia antipsicotica','N06AB05');    
        INSERT INTO Fa_uso (Nome_tratt_uso, ATC_usato) VALUES('Terapia antipsicotica','N05AH03');    
        INSERT INTO Fa_uso (Nome_tratt_uso, ATC_usato) VALUES('Terapia antipsicotica','N05AH02');    
        INSERT INTO Fa_uso (Nome_tratt_uso, ATC_usato) VALUES('Terapia Stabilizzatore_dell_umore','N03AX12');    
        INSERT INTO Fa_uso (Nome_tratt_uso, ATC_usato) VALUES('Terapia Stabilizzatore_dell_umore','N06AB05');



    --Popolamento della tabella reparto

        INSERT INTO reparto (codice_rep, Nome_reparto, Metri_quadri) VALUES(1,'Mensa',500);
        INSERT INTO reparto (codice_rep, Nome_reparto, Metri_quadri) VALUES(2,'Infermieristico',500);
        INSERT INTO reparto (codice_rep, Nome_reparto, Metri_quadri) VALUES(3,'Psichiatrico',500);
        INSERT INTO reparto (codice_rep, Nome_reparto, Metri_quadri) VALUES(4,'Camere',500);

    --Mensa

        INSERT INTO Mensa (codice_m, Numero_posti) VALUES (1, 100);


    --Infermieristico

        INSERT INTO infermieristico (codice_rep_i, Numero_stanze) VALUES(2,10);


    --Psichiatrico

        INSERT INTO Psichiatrico (codice_rep_p, numero_sale) VALUES(3,10);


    --Camere

        INSERT INTO Camere (codice_rep_c, numero_camere) VALUES(4,60);


    --Stanza

        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (1, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (2, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (3, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (4, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (5, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (6, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (7, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (8, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (9, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (10, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (11, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (12, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (13, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (14, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (15, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (16, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (17, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (18, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (19, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (20, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (21, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (22, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (23, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (24, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (25, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (26, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (27, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (28, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (29, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (30, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (31, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (32, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (33, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (34, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (35, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (36, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (37, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (38, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (39, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (40, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (41, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (42, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (43, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (44, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (45, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (46, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (47, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (48, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (49, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (50, NULL, 3, 2);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (51, NULL, 3, 2);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (52, NULL, 3, 2);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (53, NULL, 3, 2);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (54, NULL, 3, 2);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (55, NULL, 3, 2);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (56, NULL, 3, 2);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (57, NULL, 3, 2);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (58, NULL, 3, 2);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (59, NULL, 3, 2);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (60, NULL, 3, 2);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (61, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (62, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (63, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (64, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (65, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (66, 4, NULL, 1);
        INSERT INTO Stanza (Numero_stanza, codice_rep_cam, codice_rep_s, Discriminante_s) VALUES (67, 4, NULL, 1);



    --Personale_Medico

        INSERT INTO PERSONALE_MEDICO (Codice_albo, Nome, Cognome, Tipologia, Specializzazione, Discriminante) VALUES('12345', 'Marco', 'Rossi', 'Psicoterapeuta', NULL, 3);
        INSERT INTO PERSONALE_MEDICO (Codice_albo, Nome, Cognome, Tipologia, Specializzazione, Discriminante) VALUES('67890', 'Laura', 'Bianchi', 'Psicoterapeuta', NULL, 3);
        INSERT INTO PERSONALE_MEDICO (Codice_albo, Nome, Cognome, Tipologia, Specializzazione, Discriminante) VALUES('54321', 'Luca', 'Verdi', 'Psicoterapeuta', NULL, 3);
        INSERT INTO PERSONALE_MEDICO (Codice_albo, Nome, Cognome, Tipologia, Specializzazione, Discriminante) VALUES('09876', 'Giulia', 'Neri', 'Psicoterapeuta', NULL, 3);
        INSERT INTO PERSONALE_MEDICO (Codice_albo, Nome, Cognome, Tipologia, Specializzazione, Discriminante) VALUES('11111', 'Mario', 'Rossi', 'Infermiere', NULL, 2);
        INSERT INTO PERSONALE_MEDICO (Codice_albo, Nome, Cognome, Tipologia, Specializzazione, Discriminante) VALUES('22222', 'Chiara', 'Bianchi', 'Infermiere', NULL, 2);
        INSERT INTO PERSONALE_MEDICO (Codice_albo, Nome, Cognome, Tipologia, Specializzazione, Discriminante) VALUES('33333', 'Luca', 'Maggiordomo', 'Infermiere', NULL, 2);
        INSERT INTO PERSONALE_MEDICO (Codice_albo, Nome, Cognome, Tipologia, Specializzazione, Discriminante) VALUES('44444', 'Giulia', 'Neri', 'Infermiere', NULL, 2);
        INSERT INTO PERSONALE_MEDICO (Codice_albo, Nome, Cognome, Tipologia, Specializzazione, Discriminante) VALUES('55555', 'Paolo', 'Gialli', 'Infermiere', NULL, 2);
        INSERT INTO PERSONALE_MEDICO (Codice_albo, Nome, Cognome, Tipologia, Specializzazione, Discriminante) VALUES('66666', 'Sara', 'Marroni', 'Infermiere', NULL, 2);
        INSERT INTO PERSONALE_MEDICO (Codice_albo, Nome, Cognome, Tipologia, Specializzazione, Discriminante) VALUES('77777', 'Andrea', 'Russo', 'Infermiere', NULL, 2);
        INSERT INTO PERSONALE_MEDICO (Codice_albo, Nome, Cognome, Tipologia, Specializzazione, Discriminante) VALUES('88888', 'Eleonora', 'Ferrari', 'Infermiere', NULL, 2);
        INSERT INTO PERSONALE_MEDICO (Codice_albo, Nome, Cognome, Tipologia, Specializzazione, Discriminante) VALUES('99999', 'Roberto', 'Bianco', 'Infermiere', NULL, 2);
        INSERT INTO PERSONALE_MEDICO (Codice_albo, Nome, Cognome, Tipologia, Specializzazione, Discriminante) VALUES('00000', 'Francesca', 'Verde', 'Infermiere', NULL, 2);
        INSERT INTO PERSONALE_MEDICO (Codice_albo, Nome, Cognome, Tipologia, Specializzazione, Discriminante) VALUES('54322', 'Marco', 'Rossi', 'Psichiatra', NULL, 1);
        INSERT INTO PERSONALE_MEDICO (Codice_albo, Nome, Cognome, Tipologia, Specializzazione, Discriminante) VALUES('67897', 'Laura', 'Bianchi', 'Psichiatra', NULL, 1);
        INSERT INTO PERSONALE_MEDICO (Codice_albo, Nome, Cognome, Tipologia, Specializzazione, Discriminante) VALUES('13579', 'Alessio', 'Gialli', 'Medico','Cardiologo', 4);
        INSERT INTO PERSONALE_MEDICO (Codice_albo, Nome, Cognome, Tipologia, Specializzazione, Discriminante) VALUES('24680', 'Giorgio', 'Verdi', 'Medico','Medico di base', 4);
        INSERT INTO PERSONALE_MEDICO (Codice_albo, Nome, Cognome, Tipologia, Specializzazione, Discriminante) VALUES('97531', 'Francesca', 'Neri', 'Medico','Osteopata', 4);
        INSERT INTO PERSONALE_MEDICO (Codice_albo, Nome, Cognome, Tipologia, Specializzazione, Discriminante) VALUES('86420', 'Elena', 'Bianchi', 'Medico','Pneumologo', 4);

    --Fa_turno


        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('12345', 3, TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('67890', 3, TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('54321', 3, TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('09876', 3, TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('11111', 2, TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('22222', 2, TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('33333', 4, TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('44444', 4, TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('55555', 2, TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('66666', 2, TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('77777', 4, TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('88888', 4, TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('99999', 2, TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('00000', 2, TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('54322', 3, TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('67897', 3, TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('13579', 2, TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('24680', 2, TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('97531', 2, TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('86420', 2, TO_DATE('15-05-2023','DD-MM-YYYY'));

        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('12345', 3, TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('67890', 3, TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('54321', 3, TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('09876', 3, TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('11111', 4, TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('22222', 4, TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('33333', 2, TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('44444', 2, TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('55555', 4, TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('66666', 4, TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('77777', 2, TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('88888', 2, TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('99999', 4, TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('00000', 4, TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('54322', 3, TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('67897', 3, TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('13579', 2, TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('24680', 2, TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('97531', 2, TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('86420', 2, TO_DATE('16-05-2023','DD-MM-YYYY'));

        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('12345', 3, TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('67890', 3, TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('54321', 3, TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('09876', 3, TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('11111', 2, TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('22222', 2, TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('33333', 4, TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('44444', 4, TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('55555', 2, TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('66666', 2, TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('77777', 4, TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('88888', 4, TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('99999', 2, TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('00000', 2, TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('54322', 3, TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('67897', 3, TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('13579', 2, TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('24680', 2, TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('97531', 2, TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('86420', 2, TO_DATE('17-05-2023','DD-MM-YYYY'));

        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('12345', 3, TO_DATE('18-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('67890', 3, TO_DATE('18-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('54321', 3, TO_DATE('18-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('09876', 3, TO_DATE('18-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('11111', 4, TO_DATE('18-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('22222', 4, TO_DATE('18-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('33333', 2, TO_DATE('18-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('44444', 2, TO_DATE('18-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('55555', 4, TO_DATE('18-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('66666', 4, TO_DATE('18-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('77777', 2, TO_DATE('18-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('88888', 2, TO_DATE('18-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('99999', 4, TO_DATE('18-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('00000', 4, TO_DATE('18-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('54322', 3, TO_DATE('18-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('67897', 3, TO_DATE('18-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('13579', 2, TO_DATE('18-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('24680', 2, TO_DATE('18-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('97531', 2, TO_DATE('18-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('86420', 2, TO_DATE('18-05-2023','DD-MM-YYYY'));

        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('12345', 3, TO_DATE('19-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('67890', 3, TO_DATE('19-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('54321', 3, TO_DATE('19-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('09876', 3, TO_DATE('19-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('11111', 2, TO_DATE('19-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('22222', 2, TO_DATE('19-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('33333', 4, TO_DATE('19-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('44444', 4, TO_DATE('19-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('55555', 2, TO_DATE('19-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('66666', 2, TO_DATE('19-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('77777', 4, TO_DATE('19-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('88888', 4, TO_DATE('19-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('99999', 2, TO_DATE('19-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('00000', 2, TO_DATE('19-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('54322', 3, TO_DATE('19-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('67897', 3, TO_DATE('19-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('13579', 2, TO_DATE('19-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('24680', 2, TO_DATE('19-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('97531', 2, TO_DATE('19-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('86420', 2, TO_DATE('19-05-2023','DD-MM-YYYY'));

        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('12345', 3, TO_DATE('20-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('67890', 3, TO_DATE('20-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('54321', 3, TO_DATE('20-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('09876', 3, TO_DATE('20-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('11111', 4, TO_DATE('20-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('22222', 4, TO_DATE('20-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('33333', 2, TO_DATE('20-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('44444', 2, TO_DATE('20-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('55555', 4, TO_DATE('20-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('66666', 4, TO_DATE('20-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('77777', 2, TO_DATE('20-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('88888', 2, TO_DATE('20-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('99999', 4, TO_DATE('20-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('00000', 4, TO_DATE('20-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('54322', 3, TO_DATE('20-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('67897', 3, TO_DATE('20-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('13579', 2, TO_DATE('20-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('24680', 2, TO_DATE('20-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('97531', 2, TO_DATE('20-05-2023','DD-MM-YYYY'));
        INSERT INTO Fa_Turno (pers_med, codice_rep_turno, data_turno) VALUES ('86420', 2, TO_DATE('20-05-2023','DD-MM-YYYY'));



    --Paziente

        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('GRNLSN95A41C156D', 1, 'Francesca', 'Grande', TO_DATE('10-09-1987', 'DD-MM-YYYY'), NULL, TO_DATE('26-10-2010', 'DD-MM-YYYY'), 'F');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('DNTNTN95B52D267E', 2, 'Luigi', 'Denti', TO_DATE('23-11-1992', 'DD-MM-YYYY'), NULL, TO_DATE('24-09-2011', 'DD-MM-YYYY'), 'M');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('MRLSNZ98C03E165F', 3, 'Simona', 'Merlo', TO_DATE('05-06-1998', 'DD-MM-YYYY'), NULL, TO_DATE('15-01-2020', 'DD-MM-YYYY'), 'F');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('VNCMRO98D24F274G', 4, 'Andrea', 'Vinci', TO_DATE('08-07-1998', 'DD-MM-YYYY'), NULL, TO_DATE('09-05-2019', 'DD-MM-YYYY'), 'M');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('FBRDNI99E15G383H', 5, 'Giulia', 'Fabbri', TO_DATE('17-06-2003', 'DD-MM-YYYY'), NULL, TO_DATE('11-01-2023', 'DD-MM-YYYY'), 'F');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('RSSLNA98F26H492I', 6, 'Bruno', 'Volzone', TO_DATE('03-11-1998', 'DD-MM-YYYY'), NULL, TO_DATE('13-12-2021', 'DD-MM-YYYY'), 'M');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('BNCMRA98G07I591W', 7, 'Laura', 'Bianchi', TO_DATE('29-09-2002', 'DD-MM-YYYY'), NULL, TO_DATE('07-07-2023', 'DD-MM-YYYY'), 'F');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('VRDGNN97H28L610M', 8, 'Luca', 'Verdi', TO_DATE('08-12-2001', 'DD-MM-YYYY'), NULL, TO_DATE('02-09-2023', 'DD-MM-YYYY'), 'M');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('RMRGPP95I09M719N', 9, 'Alessia', 'Russo', TO_DATE('15-07-1983', 'DD-MM-YYYY'), NULL, TO_DATE('10-08-2015', 'DD-MM-YYYY'), 'F');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('MRRSLR97L30N818O', 10, 'Antonio', 'Marini', TO_DATE('26-09-1963', 'DD-MM-YYYY'), NULL, TO_DATE('05-02-1999', 'DD-MM-YYYY'), 'M');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('GRNLSN95A41C156F', 11, 'India', 'Santella', TO_DATE('16-07-1998', 'DD-MM-YYYY'), NULL, TO_DATE('24-09-2020', 'DD-MM-YYYY'), 'F');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('DNTNTN95B52D267A', 12, 'Giovanni', 'Esposito', TO_DATE('07-11-1975', 'DD-MM-YYYY'), NULL, TO_DATE('29-11-2000', 'DD-MM-YYYY'), 'M');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('VNCMRO98D24F274P', 14, 'Sofia', 'Marchetti', TO_DATE('03-05-1944', 'DD-MM-YYYY'), NULL, TO_DATE('14-07-2000', 'DD-MM-YYYY'), 'M');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('FBRDNI99E15G383Z', 15, 'Aurora', 'Barone', TO_DATE('20-08-1986', 'DD-MM-YYYY'), NULL, TO_DATE('31-05-2006', 'DD-MM-YYYY'), 'F');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('RSSLNA98F26H492G', 16, 'Martina', 'Sanna', TO_DATE('11-03-1998', 'DD-MM-YYYY'), NULL, TO_DATE('03-06-2018', 'DD-MM-YYYY'), 'M');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('BNCMRA98G07I591Y', 17, 'Nicole', 'Serra', TO_DATE('14-04-1974', 'DD-MM-YYYY'), NULL, TO_DATE('01-01-2004', 'DD-MM-YYYY'), 'F');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('VRDGNN97H28L610O', 18, 'Chiara', 'Gentile', TO_DATE('18-09-1980', 'DD-MM-YYYY'), NULL, TO_DATE('12-02-2004', 'DD-MM-YYYY'),'M');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('RMRGPP95I09M719Q', 19, 'Alice', 'Moretti', TO_DATE('25-06-1990', 'DD-MM-YYYY'), NULL, TO_DATE('17-01-2018', 'DD-MM-YYYY'), 'F');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('GRNLSN95A41C156G', 20, 'Martina', 'Santoro', TO_DATE('06-11-1982', 'DD-MM-YYYY'), NULL, TO_DATE('21-04-2008', 'DD-MM-YYYY'), 'F');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('TRDNTN95B52D267Z', 21, 'Antonio', 'Tridente', TO_DATE('07-07-2001', 'DD-MM-YYYY'), NULL, TO_DATE('08-07-2022', 'DD-MM-YYYY'), 'M');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('MRLSNZ98C03E165A', 22, 'Luigi', 'Ariano', TO_DATE('28-06-2002', 'DD-MM-YYYY'), NULL, TO_DATE('19-05-2022', 'DD-MM-YYYY'), 'F');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('VNCMRO98D24F274F', 23, 'Morgan', 'Biondi', TO_DATE('25-01-2000', 'DD-MM-YYYY'), NULL, TO_DATE('26-12-2022', 'DD-MM-YYYY'), 'M');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('FBRDNI99E15G383Q', 24, 'Sara', 'Romano', TO_DATE('30-06-2001', 'DD-MM-YYYY'), NULL, TO_DATE('08-02-2021', 'DD-MM-YYYY'), 'F');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('RSSLNA98F26H492P', 25, 'Gabriella', 'Russo', TO_DATE('16-10-1943', 'DD-MM-YYYY'), NULL, TO_DATE('25-08-1999', 'DD-MM-YYYY'), 'M');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('BNCMRA98G07I591P', 26, 'Giorgia', 'Gallo', TO_DATE('12-03-1975', 'DD-MM-YYYY'), NULL, TO_DATE('05-07-1999', 'DD-MM-YYYY'), 'F');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('VRDGNN97H28L610S', 27, 'Alessia', 'Espotito', TO_DATE('21-08-1962', 'DD-MM-YYYY'), NULL, TO_DATE('09-09-1999', 'DD-MM-YYYY'), 'M');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('RMRGPP95I09M719G', 28, 'Giulia', 'Romero', TO_DATE('05-02-1987', 'DD-MM-YYYY'), NULL, TO_DATE('16-09-2006', 'DD-MM-YYYY'), 'F');
        
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('MRRSLR97L30N818I', 29, 'Antonio', 'Marini', TO_DATE('19-11-1966', 'DD-MM-YYYY'), NULL, TO_DATE('17-02-1999', 'DD-MM-YYYY'), 'M');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('GRNLSN95A41C156H', 30, 'Francesca', 'Grande', TO_DATE('17-05-1980', 'DD-MM-YYYY'), NULL, TO_DATE('24-03-2001', 'DD-MM-YYYY'), 'F');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('DNTNTN95B52D267X', 31, 'Papa', 'Francesco', TO_DATE('08-07-1971', 'DD-MM-YYYY'), NULL, TO_DATE('05-05-2002', 'DD-MM-YYYY'), 'M');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('MRLSNZ98C03E165P', 32, 'Simona', 'Merlo', TO_DATE('24-01-1952', 'DD-MM-YYYY'), NULL, TO_DATE('03-09-1999', 'DD-MM-YYYY'), 'F');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('VNCMRO98D24F274O', 33, 'Andrea', 'Vinci', TO_DATE('01-09-1998', 'DD-MM-YYYY'), NULL, TO_DATE('31-08-2019', 'DD-MM-YYYY'), 'M');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('FBRDNI99E15G383M', 34, 'Giulia', 'Fabbri', TO_DATE('10-02-1999', 'DD-MM-YYYY'), NULL, TO_DATE('30-10-2020', 'DD-MM-YYYY'), 'F');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('RSSLNA98F26H492Z', 35, 'Marco', 'Martino', TO_DATE('21-01-1998', 'DD-MM-YYYY'), NULL, TO_DATE('20-01-2020', 'DD-MM-YYYY'), 'M');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('BNCMRA98G07I591L', 36, 'Laura', 'Bianchi', TO_DATE('25-08-1998', 'DD-MM-YYYY'), NULL, TO_DATE('15-02-2019', 'DD-MM-YYYY'), 'F');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('VRDGNN97H28L610C', 37, 'Luca', 'Verdi', TO_DATE('15-03-1997', 'DD-MM-YYYY'), NULL, TO_DATE('24-12-2019', 'DD-MM-YYYY'), 'M');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('RMRGPP95I09M719B', 38, 'Giulia', 'Romero', TO_DATE('30-04-1995', 'DD-MM-YYYY'), NULL, TO_DATE('18-11-2016', 'DD-MM-YYYY'), 'F');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('MRRSLR97L30N818V', 39, 'Antonio', 'Lombardo', TO_DATE('15-06-1982', 'DD-MM-YYYY'), NULL, TO_DATE('12-06-2018', 'DD-MM-YYYY'), 'M');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('MRRSLR97L30N818J', 40, 'Filippo', 'Marchetti', TO_DATE('20-02-1997', 'DD-MM-YYYY'), NULL, TO_DATE('11-09-2018', 'DD-MM-YYYY'), 'M');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('RNCGLI95A01H501Q', 41, 'Daniele', 'Doesntmatter', TO_DATE('20-04-1995', 'DD-MM-YYYY'), NULL, TO_DATE('10-06-2020', 'DD-MM-YYYY'), 'M');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('MNCGLI95B42E290T', 42, 'Elisa', 'Manfredi', TO_DATE('21-05-1999', 'DD-MM-YYYY'), NULL, TO_DATE('10-11-2020', 'DD-MM-YYYY'), 'F');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('DSCMRZ95C55L348Y', 43, 'Fabrizio', 'De Santis', TO_DATE('03-06-1955', 'DD-MM-YYYY'), NULL, TO_DATE('14-08-2002', 'DD-MM-YYYY'), 'M');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('LGNGLI95D66G419U', 44, 'Sofia', 'Lombardi', TO_DATE('18-11-1982', 'DD-MM-YYYY'), NULL, TO_DATE('23-02-2002', 'DD-MM-YYYY'), 'F');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('MGNMRC95E77I510I', 45, 'Lorenzo', 'Mangani', TO_DATE('13-05-1964', 'DD-MM-YYYY'), NULL, TO_DATE('26-11-2003', 'DD-MM-YYYY'), 'M');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('VNTMRC95F88L621O', 46, 'Federica', 'Ferretti', TO_DATE('14-02-1998', 'DD-MM-YYYY'), NULL, TO_DATE('27-05-2020', 'DD-MM-YYYY'), 'F');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('BNTGNN95G99M732P', 47, 'Matteo', 'Bontempi', TO_DATE('30-10-1943', 'DD-MM-YYYY'), NULL, TO_DATE('01-08-1999', 'DD-MM-YYYY'), 'M');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('FGNMRC95H10D843Q', 48, 'Valentina', 'Foglia', TO_DATE('08-07-1969', 'DD-MM-YYYY'), NULL, TO_DATE('04-09-1999', 'DD-MM-YYYY'), 'F');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('NTLMRC95I21E954E', 49, 'Mario', 'Rossi', TO_DATE('27-03-1961', 'DD-MM-YYYY'), NULL, TO_DATE('11-12-1999', 'DD-MM-YYYY'), 'M');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('LGNGLI95D66G419A', 61, 'Luca', 'Galli', TO_DATE('05-07-1995', 'DD-MM-YYYY'), NULL, TO_DATE('23-05-2018', 'DD-MM-YYYY'), 'M');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('NTLMRC95I21E954F', 62, 'Natalia', 'Romano', TO_DATE('15-03-1995', 'DD-MM-YYYY'), NULL, TO_DATE('12-04-2019', 'DD-MM-YYYY'), 'F');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('FGNMRC95H10D843E', 63, 'Francesco', 'Marini', TO_DATE('08-10-1995', 'DD-MM-YYYY'), NULL, TO_DATE('10-01-2016', 'DD-MM-YYYY'), 'M');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('MGNMRC95E77I510C', 64, 'Maria', 'Monti', TO_DATE('27-07-1995', 'DD-MM-YYYY'), NULL, TO_DATE('15-02-2016', 'DD-MM-YYYY'), 'F');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('VNTMRC95F88L621B', 65, 'Valerio', 'Neri', TO_DATE('15-08-1995', 'DD-MM-YYYY'), NULL, TO_DATE('05-11-2018', 'DD-MM-YYYY'), 'M');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('BRTMRS95L32P065G', 66, 'Barbara', 'Durso', TO_DATE('26-12-1995', 'DD-MM-YYYY'), NULL, TO_DATE('19-07-2015', 'DD-MM-YYYY'), 'F');
        INSERT INTO Paziente (CF, Numero_stanza_paz, Nome, Cognome, DDN, DUP, Data_ingresso, Sesso) VALUES ('BRTMRS95L32P065D', 67, 'Beatrice', 'Piazza', TO_DATE('26-12-1982', 'DD-MM-YYYY'), NULL, TO_DATE('26-11-2002', 'DD-MM-YYYY'), 'F');


    --Guardia

        INSERT INTO Guardia (Matricola, nome_g, cognome_g, data_assunzione) VALUES ('G0012345678901234567', 'Marco', 'Rossi', TO_DATE('08-04-1980','DD-MM-YYYY'));
        INSERT INTO Guardia (Matricola, nome_g, cognome_g, data_assunzione) VALUES ('G0098765432109876543', 'Sofia', 'Bianchi', TO_DATE('16-11-1972','DD-MM-YYYY'));
        INSERT INTO Guardia (Matricola, nome_g, cognome_g, data_assunzione) VALUES ('G0054321098765432109', 'Luca', 'Esposito', TO_DATE('23-06-1990','DD-MM-YYYY'));
        INSERT INTO Guardia (Matricola, nome_g, cognome_g, data_assunzione) VALUES ('G0032109876543210987', 'Matteo', 'Martini', TO_DATE('05-02-2000','DD-MM-YYYY'));
        INSERT INTO Guardia (Matricola, nome_g, cognome_g, data_assunzione) VALUES ('G0065432109876543210', 'Giorgia', 'Ricci', TO_DATE('12-02-2004','DD-MM-YYYY'));
        INSERT INTO Guardia (Matricola, nome_g, cognome_g, data_assunzione) VALUES ('G0087654321098765432', 'Francesco', 'Conti', TO_DATE('20-07-1982','DD-MM-YYYY'));
        INSERT INTO Guardia (Matricola, nome_g, cognome_g, data_assunzione) VALUES ('G0043210987654321098', 'Alessia', 'Ferrari', TO_DATE('01-10-2001','DD-MM-YYYY'));
        INSERT INTO Guardia (Matricola, nome_g, cognome_g, data_assunzione) VALUES ('G0021098765432109876', 'Valentina', 'Colombo', TO_DATE('17-01-2000','DD-MM-YYYY'));
        INSERT INTO Guardia (Matricola, nome_g, cognome_g, data_assunzione) VALUES ('G0076543210987654321', 'Giovanni', 'Russo', TO_DATE('20-08-1992','DD-MM-YYYY'));
        INSERT INTO Guardia (Matricola, nome_g, cognome_g, data_assunzione) VALUES ('G0109876543210987654', 'Chiara', 'Romano', TO_DATE('14-05-2012','DD-MM-YYYY'));


    --Arma

        INSERT INTO Arma (Numero_matricola, matricola_guardia, Tipologia) VALUES (1001, 'G0012345678901234567', 'Manganella');
        INSERT INTO Arma (Numero_matricola, matricola_guardia, Tipologia) VALUES (1002, 'G0098765432109876543', 'Taser');
        INSERT INTO Arma (Numero_matricola, matricola_guardia, Tipologia) VALUES (1003, 'G0054321098765432109', 'Bastone telescopico');
        INSERT INTO Arma (Numero_matricola, matricola_guardia, Tipologia) VALUES (1004, 'G0032109876543210987', 'Spruzzatore di gas');
        INSERT INTO Arma (Numero_matricola, matricola_guardia, Tipologia) VALUES (1005, 'G0065432109876543210', 'Cortello');
        INSERT INTO Arma (Numero_matricola, matricola_guardia, Tipologia) VALUES (1006, 'G0087654321098765432', 'Mazza imbottita');
        INSERT INTO Arma (Numero_matricola, matricola_guardia, Tipologia) VALUES (1007, 'G0043210987654321098', 'Fucile a salve');
        INSERT INTO Arma (Numero_matricola, matricola_guardia, Tipologia) VALUES (1008, 'G0021098765432109876', 'Scudo anti-sommossa');
        INSERT INTO Arma (Numero_matricola, matricola_guardia, Tipologia) VALUES (1010, 'G0109876543210987654', 'Manette');


    --Ha_tratt

        INSERT INTO Ha_tratt (Nome_tratt_fatto, CF_paziente_farm, Durata_giorni, Quantita_ml, Frequenza_ore, Modalita_sommin) VALUES ('Terapia antidepressiva','GRNLSN95A41C156D', 412, 100, 12,'Orale');
        INSERT INTO Ha_tratt (Nome_tratt_fatto, CF_paziente_farm, Durata_giorni, Quantita_ml, Frequenza_ore, Modalita_sommin) VALUES ('Terapia ansiolitica','DNTNTN95B52D267E', 523, 150, 12,'Iniezione');
        INSERT INTO Ha_tratt (Nome_tratt_fatto, CF_paziente_farm, Durata_giorni, Quantita_ml, Frequenza_ore, Modalita_sommin) VALUES ('Terapia Stabilizzatore_dell_umore','VNCMRO98D24F274G',4321 , 120, 12,'Topica');
        INSERT INTO Ha_tratt (Nome_tratt_fatto, CF_paziente_farm, Durata_giorni, Quantita_ml, Frequenza_ore, Modalita_sommin) VALUES ('Terapia antipsicotica','MRLSNZ98C03E165F', 643, 110, 12,'Topica');
        INSERT INTO Ha_tratt (Nome_tratt_fatto, CF_paziente_farm, Durata_giorni, Quantita_ml, Frequenza_ore, Modalita_sommin) VALUES ('Terapia antidepressiva','FBRDNI99E15G383H', 223, 32, 24,'Iniezione');
        INSERT INTO Ha_tratt (Nome_tratt_fatto, CF_paziente_farm, Durata_giorni, Quantita_ml, Frequenza_ore, Modalita_sommin) VALUES ('Terapia ansiolitica','RSSLNA98F26H492I', 764, 90, 24,'Orale');
        INSERT INTO Ha_tratt (Nome_tratt_fatto, CF_paziente_farm, Durata_giorni, Quantita_ml, Frequenza_ore, Modalita_sommin) VALUES ('Terapia antipsicotica','BNCMRA98G07I591W', 54, 95, 24,'Sublinguale');
        INSERT INTO Ha_tratt (Nome_tratt_fatto, CF_paziente_farm, Durata_giorni, Quantita_ml, Frequenza_ore, Modalita_sommin) VALUES ('Terapia Stabilizzatore_dell_umore','VRDGNN97H28L610M', 784, 20, 36,'Orale');
        INSERT INTO Ha_tratt (Nome_tratt_fatto, CF_paziente_farm, Durata_giorni, Quantita_ml, Frequenza_ore, Modalita_sommin) VALUES ('Terapia antipsicotica','RMRGPP95I09M719N', 654, 30, 12,'Iniezione');
        INSERT INTO Ha_tratt (Nome_tratt_fatto, CF_paziente_farm, Durata_giorni, Quantita_ml, Frequenza_ore, Modalita_sommin) VALUES ('Terapia antidepressiva','MRRSLR97L30N818O', 25, 40, 6,'Iniezione');
        INSERT INTO Ha_tratt (Nome_tratt_fatto, CF_paziente_farm, Durata_giorni, Quantita_ml, Frequenza_ore, Modalita_sommin) VALUES ('Terapia ansiolitica','BRTMRS95L32P065G',856 , 35, 6,'Topica');
        INSERT INTO Ha_tratt (Nome_tratt_fatto, CF_paziente_farm, Durata_giorni, Quantita_ml, Frequenza_ore, Modalita_sommin) VALUES ('Terapia Stabilizzatore_dell_umore','BRTMRS95L32P065D', 96, 15, 6,'Sublinguale');
        INSERT INTO Ha_tratt (Nome_tratt_fatto, CF_paziente_farm, Durata_giorni, Quantita_ml, Frequenza_ore, Modalita_sommin) VALUES ('Terapia antidepressiva','VNTMRC95F88L621B', 623, 100, 12,'Sublinguale');
        INSERT INTO Ha_tratt (Nome_tratt_fatto, CF_paziente_farm, Durata_giorni, Quantita_ml, Frequenza_ore, Modalita_sommin) VALUES ('Terapia ansiolitica','MGNMRC95E77I510C', 236, 30, 36,'Orale');
        INSERT INTO Ha_tratt (Nome_tratt_fatto, CF_paziente_farm, Durata_giorni, Quantita_ml, Frequenza_ore, Modalita_sommin) VALUES ('Terapia Stabilizzatore_dell_umore','FGNMRC95H10D843E', 13, 25 , 36,'Iniezione');
        INSERT INTO Ha_tratt (Nome_tratt_fatto, CF_paziente_farm, Durata_giorni, Quantita_ml, Frequenza_ore, Modalita_sommin) VALUES ('Terapia antipsicotica','MNCGLI95B42E290T', 715, 60, 48,'Iniezione');
        INSERT INTO Ha_tratt (Nome_tratt_fatto, CF_paziente_farm, Durata_giorni, Quantita_ml, Frequenza_ore, Modalita_sommin) VALUES ('Terapia antidepressiva','MRRSLR97L30N818J', 56, 20, 48,'Orale');
        INSERT INTO Ha_tratt (Nome_tratt_fatto, CF_paziente_farm, Durata_giorni, Quantita_ml, Frequenza_ore, Modalita_sommin) VALUES ('Terapia ansiolitica','NTLMRC95I21E954F', 56, 61, 72,'Orale');
        INSERT INTO Ha_tratt (Nome_tratt_fatto, CF_paziente_farm, Durata_giorni, Quantita_ml, Frequenza_ore, Modalita_sommin) VALUES ('Terapia Stabilizzatore_dell_umore','LGNGLI95D66G419U', 342, 75, 72,'Iniezione');
        INSERT INTO Ha_tratt (Nome_tratt_fatto, CF_paziente_farm, Durata_giorni, Quantita_ml, Frequenza_ore, Modalita_sommin) VALUES ('Terapia antipsicotica','LGNGLI95D66G419A', 364, 80, 12,'Iniezione');



    --Prescrizione

        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('GRNLSN95A41C156D','54322','Terapia antidepressiva',TO_DATE('28-10-2010','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('DNTNTN95B52D267E','67897','Terapia ansiolitica',TO_DATE('26-09-2011','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('MRLSNZ98C03E165F','54322','Terapia antipsicotica',TO_DATE('17-01-2020','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('VNCMRO98D24F274G','67897','Terapia Stabilizzatore_dell_umore',TO_DATE('11-05-2019','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('FBRDNI99E15G383H','54322','Terapia antidepressiva',TO_DATE('13-01-2023','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('RSSLNA98F26H492I','67897','Terapia ansiolitica',TO_DATE('15-12-2021','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('BNCMRA98G07I591W','54322','Terapia antipsicotica',TO_DATE('09-07-2023','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('VRDGNN97H28L610M','67897','Terapia Stabilizzatore_dell_umore',TO_DATE('04-09-2023','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('RMRGPP95I09M719N','54322','Terapia antipsicotica',TO_DATE('13-08-2015','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('MRRSLR97L30N818O','67897','Terapia antidepressiva',TO_DATE('05-02-1999','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('GRNLSN95A41C156F','54322','Terapia individuale',TO_DATE('24-09-2010','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('DNTNTN95B52D267A','67897','Terapia individuale',TO_DATE('01-12-2000','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('VNCMRO98D24F274P','54322','Terapia individuale',TO_DATE('16-07-2000','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('FBRDNI99E15G383Z','67897','Terapia individuale',TO_DATE('02-06-2006','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('FBRDNI99E15G383Z','67897','Terapia occupazionale',TO_DATE('02-06-2006','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('RSSLNA98F26H492G','54322','Terapia ricreativa',TO_DATE('03-06-2004','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('RSSLNA98F26H492G','54322','Terapia individuale',TO_DATE('03-06-2004','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('BNCMRA98G07I591Y','67897','Terapia individuale',TO_DATE('03-01-2004','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('BNCMRA98G07I591Y','67897','Terapia elettroconvulsivante',TO_DATE('03-01-2004','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('VRDGNN97H28L610O','54322','Terapia individuale',TO_DATE('14-02-2004','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('VRDGNN97H28L610O','54322','Terapia elettroconvulsivante',TO_DATE('14-02-2004','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('RMRGPP95I09M719Q','67897','Terapia occupazionale',TO_DATE('19-01-2018','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('GRNLSN95A41C156G','54322','Terapia ricreativa',TO_DATE('23-04-2008','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('TRDNTN95B52D267Z','67897','Terapia elettroconvulsivante',TO_DATE('10-07-2022','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('MRLSNZ98C03E165A','54322','Terapia individuale',TO_DATE('21-05-2022','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('FBRDNI99E15G383Q','67897','Terapia occupazionale',TO_DATE('28-12-2022','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('BNCMRA98G07I591P','67897','Terapia ricreativa',TO_DATE('27-08-1999','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('VRDGNN97H28L610S','54322','Terapia elettroconvulsivante',TO_DATE('07-07-1999','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('RMRGPP95I09M719G','67897','Terapia individuale',TO_DATE('11-09-1999','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('MRRSLR97L30N818I','54322','Terapia occupazionale',TO_DATE('18-09-2000','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('GRNLSN95A41C156H','67897','Terapia ricreativa',TO_DATE('19-02-1999','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('DNTNTN95B52D267X','54322','Terapia elettroconvulsivante',TO_DATE('26-03-2001','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('MRLSNZ98C03E165P','67897','Terapia individuale',TO_DATE('07-05-2002','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('VNCMRO98D24F274O','54322','Terapia occupazionale',TO_DATE('04-09-1999','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('FBRDNI99E15G383M','67897','Terapia ricreativa',TO_DATE('01-09-1919','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('RSSLNA98F26H492Z','54322','Terapia elettroconvulsivante',TO_DATE('01-11-2020','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('BNCMRA98G07I591L','67897','Terapia individuale',TO_DATE('22-01-2020','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('VRDGNN97H28L610C','54322','Terapia occupazionale',TO_DATE('17-02-2019','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('RMRGPP95I09M719B','67897','Terapia ricreativa',TO_DATE('26-12-2019','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('MRRSLR97L30N818V','54322','Terapia elettroconvulsivante',TO_DATE('20-11-2016','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('MRRSLR97L30N818J','67897','Terapia antidepressiva',TO_DATE('14-06-2018','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('RNCGLI95A01H501Q','54322','Terapia occupazionale',TO_DATE('13-09-2018','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('MNCGLI95B42E290T','67897','Terapia antipsicotica',TO_DATE('12-06-2020','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('MNCGLI95B42E290T','67897','Terapia ricreativa',TO_DATE('12-06-2020','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('DSCMRZ95C55L348Y','54322','Terapia elettroconvulsivante',TO_DATE('12-11-2020','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('LGNGLI95D66G419U','67897','Terapia antipsicotica',TO_DATE('16-08-2002','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('LGNGLI95D66G419U','67897','Terapia individuale',TO_DATE('16-08-2002','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('MGNMRC95E77I510I','54322','Terapia occupazionale',TO_DATE('25-02-2002','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('VNTMRC95F88L621O','67897','Terapia ricreativa',TO_DATE('28-11-2003','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('BNTGNN95G99M732P','54322','Terapia elettroconvulsivante',TO_DATE('29-05-2020','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('FGNMRC95H10D843Q','67897','Terapia individuale',TO_DATE('03-08-1999','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('NTLMRC95I21E954E','54322','Terapia occupazionale',TO_DATE('06-09-1999','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('BRTMRS95L32P065D','67897','Terapia ansiolitica',TO_DATE('13-12-1999','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('BRTMRS95L32P065D','67897','Terapia ricreativa',TO_DATE('13-12-1999','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('LGNGLI95D66G419A','54322','Terapia antipsicotica',TO_DATE('28-11-2000','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('LGNGLI95D66G419A','54322','Terapia ricreativa',TO_DATE('28-11-2000','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('NTLMRC95I21E954F','67897','Terapia ansiolitica',TO_DATE('25-05-2018','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('NTLMRC95I21E954F','67897','Terapia elettroconvulsivante',TO_DATE('25-05-2018','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('FGNMRC95H10D843E','54322','Terapia Stabilizzatore_dell_umore',TO_DATE('14-04-2019','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('MGNMRC95E77I510C','67897','Terapia ricreativa',TO_DATE('13-01-2016','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('VNTMRC95F88L621B','54322','Terapia antidepressiva',TO_DATE('07-11-2018','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('VNTMRC95F88L621B','54322','Terapia individuale',TO_DATE('07-11-2018','DD-MM-YYYY'));
        INSERT INTO Prescrizione (CF_paz_prescrizione, Codice_albo_prescrizione, Nome_tratt_prescritto, data_prescrizione) VALUES ('BRTMRS95L32P065G','67897','Terapia individuale',TO_DATE('21-07-2015','DD-MM-YYYY'));


    --Somministra


        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','GRNLSN95A41C156D','11111', TIMESTAMP '2023-05-15 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','GRNLSN95A41C156D','11111', TIMESTAMP '2023-05-15 21:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','GRNLSN95A41C156D','11111', TIMESTAMP '2023-05-16 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','GRNLSN95A41C156D','11111', TIMESTAMP '2023-05-16 21:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','GRNLSN95A41C156D','11111', TIMESTAMP '2023-05-17 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','GRNLSN95A41C156D','11111', TIMESTAMP '2023-05-17 21:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','GRNLSN95A41C156D','11111', TIMESTAMP '2023-05-18 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','GRNLSN95A41C156D','11111', TIMESTAMP '2023-05-18 21:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','GRNLSN95A41C156D','11111', TIMESTAMP '2023-05-19 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','GRNLSN95A41C156D','11111', TIMESTAMP '2023-05-19 21:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia ansiolitica','DNTNTN95B52D267E','22222', TIMESTAMP '2023-05-15 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia ansiolitica','DNTNTN95B52D267E','22222', TIMESTAMP '2023-05-15 21:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia ansiolitica','DNTNTN95B52D267E','22222', TIMESTAMP '2023-05-16 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia ansiolitica','DNTNTN95B52D267E','22222', TIMESTAMP '2023-05-16 21:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia ansiolitica','DNTNTN95B52D267E','22222', TIMESTAMP '2023-05-17 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia ansiolitica','DNTNTN95B52D267E','22222', TIMESTAMP '2023-05-17 21:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia ansiolitica','DNTNTN95B52D267E','22222', TIMESTAMP '2023-05-18 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia ansiolitica','DNTNTN95B52D267E','22222', TIMESTAMP '2023-05-18 21:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia ansiolitica','DNTNTN95B52D267E','22222', TIMESTAMP '2023-05-19 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia ansiolitica','DNTNTN95B52D267E','22222', TIMESTAMP '2023-05-19 21:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia Stabilizzatore_dell_umore','VNCMRO98D24F274G','33333', TIMESTAMP '2023-05-15 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia Stabilizzatore_dell_umore','VNCMRO98D24F274G','33333', TIMESTAMP '2023-05-16 21:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia Stabilizzatore_dell_umore','VNCMRO98D24F274G','33333', TIMESTAMP '2023-05-18 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia Stabilizzatore_dell_umore','VNCMRO98D24F274G','33333', TIMESTAMP '2023-05-19 21:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antipsicotica','MRLSNZ98C03E165F','44444', TIMESTAMP '2023-05-15 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antipsicotica','MRLSNZ98C03E165F','44444', TIMESTAMP '2023-05-15 21:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antipsicotica','MRLSNZ98C03E165F','44444', TIMESTAMP '2023-05-16 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antipsicotica','MRLSNZ98C03E165F','44444', TIMESTAMP '2023-05-16 21:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antipsicotica','MRLSNZ98C03E165F','44444', TIMESTAMP '2023-05-17 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antipsicotica','MRLSNZ98C03E165F','44444', TIMESTAMP '2023-05-17 21:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antipsicotica','MRLSNZ98C03E165F','44444', TIMESTAMP '2023-05-18 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antipsicotica','MRLSNZ98C03E165F','44444', TIMESTAMP '2023-05-18 21:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antipsicotica','MRLSNZ98C03E165F','44444', TIMESTAMP '2023-05-19 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antipsicotica','MRLSNZ98C03E165F','44444', TIMESTAMP '2023-05-19 21:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antipsicotica','MRLSNZ98C03E165F','44444', TIMESTAMP '2023-05-20 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antipsicotica','MRLSNZ98C03E165F','44444', TIMESTAMP '2023-05-20 21:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','MRRSLR97L30N818O','55555', TIMESTAMP '2023-05-16 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','MRRSLR97L30N818O','55555', TIMESTAMP '2023-05-16 15:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','MRRSLR97L30N818O','55555', TIMESTAMP '2023-05-16 21:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','MRRSLR97L30N818O','55555', TIMESTAMP '2023-05-17 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','MRRSLR97L30N818O','55555', TIMESTAMP '2023-05-17 15:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','MRRSLR97L30N818O','55555', TIMESTAMP '2023-05-17 21:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','MRRSLR97L30N818O','55555', TIMESTAMP '2023-05-18 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','MRRSLR97L30N818O','55555', TIMESTAMP '2023-05-18 15:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','MRRSLR97L30N818O','55555', TIMESTAMP '2023-05-18 21:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','MRRSLR97L30N818O','55555', TIMESTAMP '2023-05-19 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','MRRSLR97L30N818O','55555', TIMESTAMP '2023-05-19 15:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','MRRSLR97L30N818O','55555', TIMESTAMP '2023-05-19 21:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','MRRSLR97L30N818O','55555', TIMESTAMP '2023-05-20 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','MRRSLR97L30N818O','55555', TIMESTAMP '2023-05-20 15:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','MRRSLR97L30N818O','55555', TIMESTAMP '2023-05-20 21:00:00');    
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia ansiolitica','BRTMRS95L32P065D','66666', TIMESTAMP '2023-05-16 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia ansiolitica','BRTMRS95L32P065D','66666', TIMESTAMP '2023-05-16 15:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia ansiolitica','BRTMRS95L32P065D','66666', TIMESTAMP '2023-05-16 21:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia ansiolitica','BRTMRS95L32P065D','66666', TIMESTAMP '2023-05-17 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia ansiolitica','BRTMRS95L32P065D','66666', TIMESTAMP '2023-05-17 15:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia ansiolitica','BRTMRS95L32P065D','66666', TIMESTAMP '2023-05-17 21:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia ansiolitica','BRTMRS95L32P065D','66666', TIMESTAMP '2023-05-18 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia ansiolitica','BRTMRS95L32P065D','66666', TIMESTAMP '2023-05-18 15:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia ansiolitica','BRTMRS95L32P065D','66666', TIMESTAMP '2023-05-18 21:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia ansiolitica','BRTMRS95L32P065D','66666', TIMESTAMP '2023-05-19 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia ansiolitica','BRTMRS95L32P065D','66666', TIMESTAMP '2023-05-19 15:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia ansiolitica','BRTMRS95L32P065D','66666', TIMESTAMP '2023-05-19 21:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','FBRDNI99E15G383H','77777', TIMESTAMP '2023-05-16 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','FBRDNI99E15G383H','77777', TIMESTAMP '2023-05-17 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','FBRDNI99E15G383H','77777', TIMESTAMP '2023-05-18 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','FBRDNI99E15G383H','77777', TIMESTAMP '2023-05-19 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','FBRDNI99E15G383H','77777', TIMESTAMP '2023-05-20 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','FBRDNI99E15G383H','77777', TIMESTAMP '2023-05-20 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia ansiolitica','RSSLNA98F26H492I','88888', TIMESTAMP '2023-05-16 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia ansiolitica','RSSLNA98F26H492I','88888', TIMESTAMP '2023-05-17 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia ansiolitica','RSSLNA98F26H492I','88888', TIMESTAMP '2023-05-18 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia ansiolitica','RSSLNA98F26H492I','88888', TIMESTAMP '2023-05-19 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia ansiolitica','RSSLNA98F26H492I','88888', TIMESTAMP '2023-05-20 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antipsicotica','BNCMRA98G07I591W','33333', TIMESTAMP '2023-05-16 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antipsicotica','BNCMRA98G07I591W','33333', TIMESTAMP '2023-05-17 09:30:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','VNTMRC95F88L621B','33333', TIMESTAMP '2023-05-16 09:30:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','VNTMRC95F88L621B','33333', TIMESTAMP '2023-05-16 21:30:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','VNTMRC95F88L621B','00000', TIMESTAMP '2023-05-17 09:30:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','VNTMRC95F88L621B','00000', TIMESTAMP '2023-05-17 21:30:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','VNTMRC95F88L621B','00000', TIMESTAMP '2023-05-18 09:30:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','VNTMRC95F88L621B','00000', TIMESTAMP '2023-05-18 21:30:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','VNTMRC95F88L621B','00000', TIMESTAMP '2023-05-19 09:30:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','VNTMRC95F88L621B','00000', TIMESTAMP '2023-05-19 21:30:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','VNTMRC95F88L621B','00000', TIMESTAMP '2023-05-20 09:30:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','VNTMRC95F88L621B','00000', TIMESTAMP '2023-05-20 21:30:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia ansiolitica','MGNMRC95E77I510C','77777', TIMESTAMP '2023-05-16 09:30:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia ansiolitica','MGNMRC95E77I510C','77777', TIMESTAMP '2023-05-17 15:30:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia Stabilizzatore_dell_umore','FGNMRC95H10D843E','77777', TIMESTAMP '2023-05-16 09:30:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia Stabilizzatore_dell_umore','FGNMRC95H10D843E','88888', TIMESTAMP '2023-05-17 15:30:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia Stabilizzatore_dell_umore','FGNMRC95H10D843E','77777', TIMESTAMP '2023-05-18 09:30:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia Stabilizzatore_dell_umore','FGNMRC95H10D843E','77777', TIMESTAMP '2023-05-19 15:30:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia Stabilizzatore_dell_umore','FGNMRC95H10D843E','88888', TIMESTAMP '2023-05-20 09:30:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antipsicotica','MNCGLI95B42E290T','88888', TIMESTAMP '2023-05-16 09:30:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antipsicotica','MNCGLI95B42E290T','88888', TIMESTAMP '2023-05-17 09:30:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antipsicotica','MNCGLI95B42E290T','88888', TIMESTAMP '2023-05-18 09:30:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antipsicotica','MNCGLI95B42E290T','88888', TIMESTAMP '2023-05-19 09:30:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antipsicotica','MNCGLI95B42E290T','99999', TIMESTAMP '2023-05-20 09:30:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','MRRSLR97L30N818J','99999', TIMESTAMP '2023-05-16 21:30:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','MRRSLR97L30N818J','99999', TIMESTAMP '2023-05-17 21:30:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','MRRSLR97L30N818J','99999', TIMESTAMP '2023-05-18 21:30:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','MRRSLR97L30N818J','99999', TIMESTAMP '2023-05-19 21:30:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antidepressiva','MRRSLR97L30N818J','99999', TIMESTAMP '2023-05-20 21:30:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia ansiolitica','NTLMRC95I21E954F','11111', TIMESTAMP '2023-05-16 09:30:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia ansiolitica','NTLMRC95I21E954F','11111', TIMESTAMP '2023-05-19 09:30:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antipsicotica','LGNGLI95D66G419U','22222', TIMESTAMP '2023-05-16 09:30:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antipsicotica','LGNGLI95D66G419U','22222', TIMESTAMP '2023-05-19 09:30:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antipsicotica','LGNGLI95D66G419A','99999', TIMESTAMP '2023-05-16 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antipsicotica','LGNGLI95D66G419A','99999', TIMESTAMP '2023-05-16 21:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antipsicotica','LGNGLI95D66G419A','99999', TIMESTAMP '2023-05-17 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antipsicotica','LGNGLI95D66G419A','99999', TIMESTAMP '2023-05-17 21:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antipsicotica','LGNGLI95D66G419A','99999', TIMESTAMP '2023-05-18 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antipsicotica','LGNGLI95D66G419A','99999', TIMESTAMP '2023-05-18 21:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antipsicotica','LGNGLI95D66G419A','99999', TIMESTAMP '2023-05-19 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antipsicotica','LGNGLI95D66G419A','99999', TIMESTAMP '2023-05-19 21:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antipsicotica','LGNGLI95D66G419A','99999', TIMESTAMP '2023-05-20 09:00:00');
        INSERT INTO Somministra (Nome_tratt_somm, CF_somm, Codice_albo_somm, Data_ora_somm) VALUES ('Terapia antipsicotica','LGNGLI95D66G419A','99999', TIMESTAMP '2023-05-20 21:00:00');



    --Seduta


        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(0,50,'12345','GRNLSN95A41C156D','Terapia individuale',TIMESTAMP '2023-05-15 10:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(1,51,'67890','DNTNTN95B52D267E','Terapia individuale',TIMESTAMP '2023-05-15 10:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(2,52,'54321','MRLSNZ98C03E165F','Terapia individuale',TIMESTAMP '2023-05-15 10:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(3,53,'09876','VNCMRO98D24F274G','Terapia individuale',TIMESTAMP '2023-05-15 10:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(4,50,'12345','FBRDNI99E15G383H','Terapia individuale',TIMESTAMP '2023-05-15 11:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(5,51,'67890','RSSLNA98F26H492I','Terapia individuale',TIMESTAMP '2023-05-15 11:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(6,52,'54321','BNCMRA98G07I591W','Terapia individuale',TIMESTAMP '2023-05-15 11:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(7,53,'09876','VRDGNN97H28L610M','Terapia individuale',TIMESTAMP '2023-05-15 11:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(8,50,'12345','RMRGPP95I09M719N','Terapia individuale',TIMESTAMP '2023-05-15 12:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(9,51,'67890','MRRSLR97L30N818O','Terapia individuale',TIMESTAMP '2023-05-15 12:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(10,52,'54321','GRNLSN95A41C156F','Terapia individuale',TIMESTAMP '2023-05-15 12:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(11,53,'09876','DNTNTN95B52D267A','Terapia individuale',TIMESTAMP '2023-05-15 12:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(12,50,'12345','VNCMRO98D24F274P','Terapia individuale',TIMESTAMP '2023-05-15 13:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(13,51,'67890','FBRDNI99E15G383Z','Terapia individuale',TIMESTAMP '2023-05-15 13:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(14,52,'54321','RSSLNA98F26H492G','Terapia individuale',TIMESTAMP '2023-05-15 13:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(15,53,'09876','BNCMRA98G07I591Y','Terapia individuale',TIMESTAMP '2023-05-15 13:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(16,50,'12345','VNCMRO98D24F274P','Terapia individuale',TIMESTAMP '2023-05-15 14:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(17,51,'67890','FBRDNI99E15G383Z','Terapia occupazionale',TIMESTAMP '2023-05-15 14:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(18,52,'54321','RSSLNA98F26H492G','Terapia ricreativa',TIMESTAMP '2023-05-16 14:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(19,53,'09876','BNCMRA98G07I591Y','Terapia elettroconvulsivante',TIMESTAMP '2023-05-15 13:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(20,50,'12345','VRDGNN97H28L610O','Terapia individuale',TIMESTAMP '2023-05-15 15:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(21,51,'67890','RMRGPP95I09M719Q','Terapia occupazionale',TIMESTAMP '2023-05-15 15:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(22,52,'54321','GRNLSN95A41C156G','Terapia ricreativa',TIMESTAMP '2023-05-15 15:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(23,53,'09876','TRDNTN95B52D267Z','Terapia elettroconvulsivante',TIMESTAMP '2023-05-15 15:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(24,50,'12345','VRDGNN97H28L610O','Terapia individuale',TIMESTAMP '2023-05-16 10:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(25,51,'67890','RMRGPP95I09M719Q','Terapia occupazionale',TIMESTAMP '2023-05-16 10:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(26,52,'54321','GRNLSN95A41C156G','Terapia ricreativa',TIMESTAMP '2023-05-16 10:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(27,53,'09876','TRDNTN95B52D267Z','Terapia elettroconvulsivante',TIMESTAMP '2023-05-16 10:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(28,50,'12345','MRLSNZ98C03E165A','Terapia individuale',TIMESTAMP '2023-05-16 11:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(29,51,'67890','FBRDNI99E15G383Q','Terapia occupazionale',TIMESTAMP '2023-05-16 11:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(30,52,'54321','BNCMRA98G07I591P','Terapia ricreativa',TIMESTAMP '2023-05-16 11:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(31,53,'09876','VRDGNN97H28L610S','Terapia elettroconvulsivante',TIMESTAMP '2023-05-16 11:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(32,50,'12345','RMRGPP95I09M719G','Terapia individuale',TIMESTAMP '2023-05-16 12:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(33,51,'67890','MRRSLR97L30N818I','Terapia occupazionale',TIMESTAMP '2023-05-16 12:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(34,52,'54321','GRNLSN95A41C156H','Terapia ricreativa',TIMESTAMP '2023-05-16 12:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(35,53,'09876','DNTNTN95B52D267X','Terapia elettroconvulsivante',TIMESTAMP '2023-05-16 12:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(36,50,'12345','MRLSNZ98C03E165P','Terapia individuale',TIMESTAMP '2023-05-16 13:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(37,51,'67890','VNCMRO98D24F274O','Terapia occupazionale',TIMESTAMP '2023-05-16 13:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(38,52,'54321','FBRDNI99E15G383M','Terapia ricreativa',TIMESTAMP '2023-05-16 13:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(39,53,'09876','RSSLNA98F26H492Z','Terapia elettroconvulsivante',TIMESTAMP '2023-05-16 13:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(40,50,'12345','BNCMRA98G07I591L','Terapia individuale',TIMESTAMP '2023-05-16 14:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(41,51,'67890','VRDGNN97H28L610C','Terapia occupazionale',TIMESTAMP '2023-05-16 14:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(42,52,'54321','RMRGPP95I09M719B','Terapia ricreativa',TIMESTAMP '2023-05-16 14:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(43,53,'09876','MRRSLR97L30N818V','Terapia elettroconvulsivante',TIMESTAMP '2023-05-16 14:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(44,50,'12345','VRDGNN97H28L610O','Terapia individuale',TIMESTAMP '2023-05-17 10:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(45,51,'67890','RNCGLI95A01H501Q','Terapia occupazionale',TIMESTAMP '2023-05-17 10:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(46,52,'54321','MNCGLI95B42E290T','Terapia ricreativa',TIMESTAMP '2023-05-17 10:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(47,53,'09876','DSCMRZ95C55L348Y','Terapia elettroconvulsivante',TIMESTAMP '2023-05-17 10:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(48,50,'12345','LGNGLI95D66G419U','Terapia individuale',TIMESTAMP '2023-05-17 11:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(49,51,'67890','MGNMRC95E77I510I','Terapia occupazionale',TIMESTAMP '2023-05-17 11:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(50,52,'54321','VNTMRC95F88L621O','Terapia ricreativa',TIMESTAMP '2023-05-17 11:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(51,53,'09876','BNTGNN95G99M732P','Terapia elettroconvulsivante',TIMESTAMP '2023-05-17 11:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(52,50,'12345','FGNMRC95H10D843Q','Terapia individuale',TIMESTAMP '2023-05-17 12:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(53,51,'67890','NTLMRC95I21E954E','Terapia occupazionale',TIMESTAMP '2023-05-17 12:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(54,52,'54321','BRTMRS95L32P065D','Terapia ricreativa',TIMESTAMP '2023-05-17 12:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(58,52,'54321','LGNGLI95D66G419A','Terapia ricreativa',TIMESTAMP '2023-05-17 13:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(59,53,'09876','MGNMRC95E77I510C','Terapia elettroconvulsivante',TIMESTAMP '2023-05-17 13:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(60,50,'12345','VNTMRC95F88L621B','Terapia individuale',TIMESTAMP '2023-05-18 10:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(62,52,'54321','FGNMRC95H10D843E','Terapia ricreativa',TIMESTAMP '2023-05-18 10:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(63,53,'09876','NTLMRC95I21E954F','Terapia elettroconvulsivante',TIMESTAMP '2023-05-18 10:30:00');
        INSERT INTO Seduta (ID_Seduta, Numero_stanza_s, Codice_albo_s, CF_s, Nome_tratt_s, Data_ora_s) VALUES(64,50,'12345','BRTMRS95L32P065G','Terapia individuale',TIMESTAMP '2023-05-19 10:30:00');



    --Condizione

        INSERT INTO Condizione(Nome) VALUES('Depressione');
        INSERT INTO Condizione(Nome) VALUES('Fobia sociale');
        INSERT INTO Condizione(Nome) VALUES('Disturbo bipolare');
        INSERT INTO Condizione(Nome) VALUES('Disturbo psicotico');
        INSERT INTO Condizione(Nome) VALUES('Disturbo di personalità multiple');
        INSERT INTO Condizione(Nome) VALUES('Disturbo narcisistico di personalità');
        INSERT INTO Condizione(Nome) VALUES('Schizofrenia');
        INSERT INTO Condizione(Nome) VALUES('Disturbo borderline di personalità');



    --Diagnostica

        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('GRNLSN95A41C156D','54322','Depressione',TIMESTAMP '2010-10-27 14:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('DNTNTN95B52D267E','67897','Disturbo bipolare',TIMESTAMP '2011-09-25 14:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('MRLSNZ98C03E165F','54322','Fobia sociale',TIMESTAMP '2020-01-16 15:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('VNCMRO98D24F274G','67897','Fobia sociale',TIMESTAMP '2019-05-10 15:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('FBRDNI99E15G383H','54322','Disturbo bipolare',TIMESTAMP '2023-01-12 18:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('RSSLNA98F26H492I','67897','Fobia sociale',TIMESTAMP '2021-12-14 14:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('BNCMRA98G07I591W','54322','Disturbo borderline di personalità',TIMESTAMP '2023-07-08 15:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('VRDGNN97H28L610M','67897','Fobia sociale',TIMESTAMP '2023-09-03 16:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('RMRGPP95I09M719N','54322','Disturbo psicotico',TIMESTAMP '2015-08-11 14:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('MRRSLR97L30N818O','67897','Disturbo bipolare',TIMESTAMP '1999-02-06 14:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('GRNLSN95A41C156F','54322','Schizofrenia',TIMESTAMP '2010-09-25 15:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('DNTNTN95B52D267A','67897','Disturbo borderline di personalità',TIMESTAMP '2000-11-30 13:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('VNCMRO98D24F274P','54322','Fobia sociale',TIMESTAMP '2000-07-15 10:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('FBRDNI99E15G383Z','67897','Fobia sociale',TIMESTAMP '2006-06-01 11:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('RSSLNA98F26H492G','54322','Disturbo psicotico',TIMESTAMP '2018-06-04 12:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('BNCMRA98G07I591Y','67897','Fobia sociale',TIMESTAMP '2004-01-02 13:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('VRDGNN97H28L610O','54322','Depressione',TIMESTAMP '2004-02-13 14:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('RMRGPP95I09M719Q','67897','Disturbo psicotico',TIMESTAMP '2018-01-18 14:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('GRNLSN95A41C156G','54322','Disturbo di personalità multiple',TIMESTAMP '2008-04-22 15:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('TRDNTN95B52D267Z','67897','Depressione',TIMESTAMP '2020-04-09 16:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('MRLSNZ98C03E165A','54322','Schizofrenia',TIMESTAMP '2022-05-20 10:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('VNCMRO98D24F274F','67897','Depressione',TIMESTAMP '2021-02-09 11:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('FBRDNI99E15G383Q','54322','Schizofrenia',TIMESTAMP '2022-12-27 12:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('RSSLNA98F26H492P','67897','Depressione',TIMESTAMP '2021-02-09 13:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('BNCMRA98G07I591P','54322','Disturbo bipolare',TIMESTAMP '1999-09-26 14:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('VRDGNN97H28L610S','67897','Schizofrenia',TIMESTAMP '1999-07-06 15:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('RMRGPP95I09M719G','54322','Depressione',TIMESTAMP '1999-09-10 16:00:00');

        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('GRNLSN95A41C156H','54322','Fobia sociale',TIMESTAMP '2001-03-25 11:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('DNTNTN95B52D267X','67897','Disturbo bipolare',TIMESTAMP '2002-05-06 12:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('MRLSNZ98C03E165P','54322','Disturbo bipolare',TIMESTAMP '1999-09-04 13:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('MRLSNZ98C03E165F','67897','Depressione',TIMESTAMP '2020-01-16 14:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('VNCMRO98D24F274O','54322','Schizofrenia',TIMESTAMP '2019-09-01 15:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('FBRDNI99E15G383M','67897','Depressione',TIMESTAMP '2020-10-31 10:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('RSSLNA98F26H492Z','54322','Disturbo borderline di personalità',TIMESTAMP '2020-01-21 11:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('BNCMRA98G07I591L','67897','Depressione',TIMESTAMP '2019-02-16 12:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('VRDGNN97H28L610C','54322','Depressione',TIMESTAMP '2019-12-25 13:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('RMRGPP95I09M719B','67897','Fobia sociale',TIMESTAMP '2016-11-19 14:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('MRRSLR97L30N818J','67897','Depressione',TIMESTAMP '2018-09-12 16:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('RNCGLI95A01H501Q','54322','Depressione',TIMESTAMP '2020-06-10 14:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('MNCGLI95B42E290T','67897','Schizofrenia',TIMESTAMP '2020-11-10 14:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('DSCMRZ95C55L348Y','54322','Depressione',TIMESTAMP '2002-08-15 15:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('LGNGLI95D66G419U','67897','Disturbo borderline di personalità',TIMESTAMP '2002-02-24 16:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('VNTMRC95F88L621O','67897','Depressione',TIMESTAMP '2020-05-28 15:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('BNTGNN95G99M732P','54322','Schizofrenia',TIMESTAMP '1999-08-02 16:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('FGNMRC95H10D843Q','67897','Depressione',TIMESTAMP '1999-09-05 17:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('NTLMRC95I21E954E','54322','Fobia sociale',TIMESTAMP '1999-12-12 18:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('VRDGNN97H28L610S','67897','Depressione',TIMESTAMP '1999-09-10 16:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('VRDGNN97H28L610C','54322','Disturbo psicotico',TIMESTAMP '2019-12-25 14:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('LGNGLI95D66G419A','67897','Depressione',TIMESTAMP '2018-05-24 14:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('MGNMRC95E77I510C','54322','Depressione',TIMESTAMP '2016-02-16 15:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('VNTMRC95F88L621B','67897','Disturbo psicotico',TIMESTAMP '2018-11-06 16:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('MNCGLI95B42E290T','54322','Depressione',TIMESTAMP '2020-11-11 14:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('FGNMRC95H10D843E','67897','Schizofrenia',TIMESTAMP '2016-01-11 14:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('BRTMRS95L32P065G','67897','Depressione',TIMESTAMP '2015-07-20 16:00:00');


        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('MRRSLR97L30N818I','67897','Disturbo bipolare',TIMESTAMP '2000-09-17 10:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('MRRSLR97L30N818V','54322','Disturbo bipolare',TIMESTAMP '2018-06-13 15:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('MGNMRC95E77I510I','54322','Disturbo psicotico',TIMESTAMP '2003-11-27 14:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('BRTMRS95L32P065D','67897','Depressione',TIMESTAMP '2000-11-27 14:00:00');
        INSERT INTO Diagnostica ( CF_dia, Codice_albo_dia, Nome_condizione, data_diagn) VALUES ('NTLMRC95I21E954F','54322','Disturbo narcisistico di personalità',TIMESTAMP '2019-04-13 15:00:00');


    --Sintomi

        INSERT INTO Sintomi(sintomo_diagn,fk_condizione) VALUES('Perdità di interesse','Depressione');
        INSERT INTO Sintomi(sintomo_diagn,fk_condizione) VALUES('Autolesionismo','Depressione');
        INSERT INTO Sintomi(sintomo_diagn,fk_condizione) VALUES('Paura intensa','Fobia sociale');
        INSERT INTO Sintomi(sintomo_diagn,fk_condizione) VALUES('Paura umiliazione','Fobia sociale');
        INSERT INTO Sintomi(sintomo_diagn,fk_condizione) VALUES('Distacco sociale','Fobia sociale');
        INSERT INTO Sintomi(sintomo_diagn,fk_condizione) VALUES('Senso di grandisoità','Disturbo bipolare');
        INSERT INTO Sintomi(sintomo_diagn,fk_condizione) VALUES('Alta distraibilità','Disturbo bipolare');
        INSERT INTO Sintomi(sintomo_diagn,fk_condizione) VALUES('Allucinazioni','Disturbo psicotico');
        INSERT INTO Sintomi(sintomo_diagn,fk_condizione) VALUES('Deliri','Disturbo psicotico');
        INSERT INTO Sintomi(sintomo_diagn,fk_condizione) VALUES('Vuoti memoria','Disturbo di personalità multiple');
        INSERT INTO Sintomi(sintomo_diagn,fk_condizione) VALUES('Piu identità','Disturbo psicotico');
        INSERT INTO Sintomi(sintomo_diagn,fk_condizione) VALUES('Megalomania','Disturbo narcisistico di personalità');
        INSERT INTO Sintomi(sintomo_diagn,fk_condizione) VALUES('Egocentrismo','Disturbo narcisistico di personalità');
        INSERT INTO Sintomi(sintomo_diagn,fk_condizione) VALUES('Deliri','Schizofrenia');
        INSERT INTO Sintomi(sintomo_diagn,fk_condizione) VALUES('Cataconici','Schizofrenia');
        INSERT INTO Sintomi(sintomo_diagn,fk_condizione) VALUES('Attacchi di rabbia','Disturbo borderline di personalità');
        INSERT INTO Sintomi(sintomo_diagn,fk_condizione) VALUES('Ansia intesnsa','Disturbo borderline di personalità');



    -- Checkup

        INSERT INTO Check_UP (ID_CheckUp, CF_checkup, risultato, Ind_grav) VALUES ('574908361529874','VNCMRO98D24F274G','P',0);
        INSERT INTO Check_UP (ID_CheckUp, CF_checkup, risultato, Ind_grav) VALUES ('921837504635298','FBRDNI99E15G383H','N',1);
        INSERT INTO Check_UP (ID_CheckUp, CF_checkup, risultato, Ind_grav) VALUES ('185743296502817','BNCMRA98G07I591W','N',3);
        INSERT INTO Check_UP (ID_CheckUp, CF_checkup, risultato, Ind_grav) VALUES ('736245908162937','RMRGPP95I09M719N','P',0);
        INSERT INTO Check_UP (ID_CheckUp, CF_checkup, risultato, Ind_grav) VALUES ('329681754079523','GRNLSN95A41C156F','P',0);
        INSERT INTO Check_UP (ID_CheckUp, CF_checkup, risultato, Ind_grav) VALUES ('510927386432719','VNCMRO98D24F274P','P',0);
        INSERT INTO Check_UP (ID_CheckUp, CF_checkup, risultato, Ind_grav) VALUES ('692837415063729','RSSLNA98F26H492G','N',2);  
        INSERT INTO Check_UP (ID_CheckUp, CF_checkup, risultato, Ind_grav) VALUES ('824619305738142','DNTNTN95B52D267X','P',0);
        INSERT INTO Check_UP (ID_CheckUp, CF_checkup, risultato, Ind_grav) VALUES ('362945871092356','BNCMRA98G07I591L','N',3);
        INSERT INTO Check_UP (ID_CheckUp, CF_checkup, risultato, Ind_grav) VALUES ('193576240895163','RNCGLI95A01H501Q','P',0);
        INSERT INTO Check_UP (ID_CheckUp, CF_checkup, risultato, Ind_grav) VALUES ('486290157634029','VNTMRC95F88L621O','P',0);
        INSERT INTO Check_UP (ID_CheckUp, CF_checkup, risultato, Ind_grav) VALUES ('751963804529718','RSSLNA98F26H492P','P',0);
        INSERT INTO Check_UP (ID_CheckUp, CF_checkup, risultato, Ind_grav) VALUES ('257048196372910','MRLSNZ98C03E165P','P',0);
        INSERT INTO Check_UP (ID_CheckUp, CF_checkup, risultato, Ind_grav) VALUES ('908317546239015','MRRSLR97L30N818V','N',2);
        INSERT INTO Check_UP (ID_CheckUp, CF_checkup, risultato, Ind_grav) VALUES ('630219587463872','MGNMRC95E77I510C','N',5);
        INSERT INTO Check_UP (ID_CheckUp, CF_checkup, risultato, Ind_grav) VALUES ('415279036821594','NTLMRC95I21E954F','P',0);
        INSERT INTO Check_UP (ID_CheckUp, CF_checkup, risultato, Ind_grav) VALUES ('982647103562319','BRTMRS95L32P065D','N',4);
        INSERT INTO Check_UP (ID_CheckUp, CF_checkup, risultato, Ind_grav) VALUES ('174963208597341','FGNMRC95H10D843Q','P',0);
        INSERT INTO Check_UP (ID_CheckUp, CF_checkup, risultato, Ind_grav) VALUES ('536028941792306','BNTGNN95G99M732P','P',0);



    --Diagnosi

        INSERT INTO Diagnosi (ID_CheckUp, Malattia_diagnosticata) VALUES ('921837504635298','Influenza');
        INSERT INTO Diagnosi (ID_CheckUp, Malattia_diagnosticata) VALUES ('185743296502817','Ulcera');
        INSERT INTO Diagnosi (ID_CheckUp, Malattia_diagnosticata) VALUES ('185743296502817','Diabete');
        INSERT INTO Diagnosi (ID_CheckUp, Malattia_diagnosticata) VALUES ('692837415063729','Osteoporosi');
        INSERT INTO Diagnosi (ID_CheckUp, Malattia_diagnosticata) VALUES ('362945871092356','Raffreddore');
        INSERT INTO Diagnosi (ID_CheckUp, Malattia_diagnosticata) VALUES ('362945871092356','Dermatite');
        INSERT INTO Diagnosi (ID_CheckUp, Malattia_diagnosticata) VALUES ('908317546239015','Insonnia');
        INSERT INTO Diagnosi (ID_CheckUp, Malattia_diagnosticata) VALUES ('630219587463872','Anemia');
        INSERT INTO Diagnosi (ID_CheckUp, Malattia_diagnosticata) VALUES ('630219587463872','Bronchite');
        INSERT INTO Diagnosi (ID_CheckUp, Malattia_diagnosticata) VALUES ('630219587463872','Emicrania');
        INSERT INTO Diagnosi (ID_CheckUp, Malattia_diagnosticata) VALUES ('982647103562319','Asma');
        INSERT INTO Diagnosi (ID_CheckUp, Malattia_diagnosticata) VALUES ('982647103562319','Tonsillite');



    --Effettua check_up

        INSERT INTO Effettua_ck (data_ora_ck, ck_up_eff, Codice_albo_ck) VALUES (TIMESTAMP'2023-05-15 07:30:00', '574908361529874', '86420');
        INSERT INTO Effettua_ck (data_ora_ck, ck_up_eff, Codice_albo_ck) VALUES (TIMESTAMP'2023-05-16 14:15:00', '921837504635298', '97531');
        INSERT INTO Effettua_ck (data_ora_ck, ck_up_eff, Codice_albo_ck) VALUES (TIMESTAMP'2023-05-15 09:45:00', '185743296502817', '86420');
        INSERT INTO Effettua_ck (data_ora_ck, ck_up_eff, Codice_albo_ck) VALUES (TIMESTAMP'2023-05-16 10:00:00', '736245908162937', '97531');
        INSERT INTO Effettua_ck (data_ora_ck, ck_up_eff, Codice_albo_ck) VALUES (TIMESTAMP'2023-05-18 16:30:00', '329681754079523', '13579');
        INSERT INTO Effettua_ck (data_ora_ck, ck_up_eff, Codice_albo_ck) VALUES (TIMESTAMP'2023-05-19 13:45:00', '510927386432719', '24680');
        INSERT INTO Effettua_ck (data_ora_ck, ck_up_eff, Codice_albo_ck) VALUES (TIMESTAMP'2023-05-15 18:00:00', '692837415063729', '13579');
        INSERT INTO Effettua_ck (data_ora_ck, ck_up_eff, Codice_albo_ck) VALUES (TIMESTAMP'2023-05-17 08:30:00', '824619305738142', '86420');
        INSERT INTO Effettua_ck (data_ora_ck, ck_up_eff, Codice_albo_ck) VALUES (TIMESTAMP'2023-05-18 11:15:00', '362945871092356', '86420');
        INSERT INTO Effettua_ck (data_ora_ck, ck_up_eff, Codice_albo_ck) VALUES (TIMESTAMP'2023-05-16 16:45:00', '193576240895163', '24680');
        INSERT INTO Effettua_ck (data_ora_ck, ck_up_eff, Codice_albo_ck) VALUES (TIMESTAMP'2023-05-17 09:00:00', '486290157634029', '97531');
        INSERT INTO Effettua_ck (data_ora_ck, ck_up_eff, Codice_albo_ck) VALUES (TIMESTAMP'2023-05-19 14:30:00', '751963804529718', '13579');
        INSERT INTO Effettua_ck (data_ora_ck, ck_up_eff, Codice_albo_ck) VALUES (TIMESTAMP'2023-05-20 10:45:00', '257048196372910', '24680');
        INSERT INTO Effettua_ck (data_ora_ck, ck_up_eff, Codice_albo_ck) VALUES (TIMESTAMP'2023-05-18 19:30:00', '908317546239015', '86420');
        INSERT INTO Effettua_ck (data_ora_ck, ck_up_eff, Codice_albo_ck) VALUES (TIMESTAMP'2023-05-16 11:30:00', '630219587463872', '24680');
        INSERT INTO Effettua_ck (data_ora_ck, ck_up_eff, Codice_albo_ck) VALUES (TIMESTAMP'2023-05-19 08:15:00', '415279036821594', '13579');
        INSERT INTO Effettua_ck (data_ora_ck, ck_up_eff, Codice_albo_ck) VALUES (TIMESTAMP'2023-05-20 16:00:00', '982647103562319', '86420');
        INSERT INTO Effettua_ck (data_ora_ck, ck_up_eff, Codice_albo_ck) VALUES (TIMESTAMP'2023-05-15 12:45:00', '174963208597341', '24680');
        INSERT INTO Effettua_ck (data_ora_ck, ck_up_eff, Codice_albo_ck) VALUES (TIMESTAMP'2023-05-17 14:30:00', '536028941792306', '13579');

        

    --Ricovero

        INSERT INTO Ricovero (giorni_durata, ricovero_inferm, ricovero_checkup) VALUES (2, 2,'921837504635298');
        INSERT INTO Ricovero (giorni_durata, ricovero_inferm, ricovero_checkup) VALUES (10, 2,'185743296502817');
        INSERT INTO Ricovero (giorni_durata, ricovero_inferm, ricovero_checkup) VALUES (14, 2,'692837415063729');
        INSERT INTO Ricovero (giorni_durata, ricovero_inferm, ricovero_checkup) VALUES (7, 2,'362945871092356');
        INSERT INTO Ricovero (giorni_durata, ricovero_inferm, ricovero_checkup) VALUES (7, 2,'908317546239015');
        INSERT INTO Ricovero (giorni_durata, ricovero_inferm, ricovero_checkup) VALUES (30, 2,'630219587463872');
        INSERT INTO Ricovero (giorni_durata, ricovero_inferm, ricovero_checkup) VALUES (14, 2,'982647103562319');



    -- Effettua_turno

        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0012345678901234567',3, TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0012345678901234567',1, TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0012345678901234567',2, TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0012345678901234567',4, TO_DATE('18-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0012345678901234567',1, TO_DATE('19-05-2023','DD-MM-YYYY'));

        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0098765432109876543',2, TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0098765432109876543',3, TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0098765432109876543',4, TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0098765432109876543',1, TO_DATE('18-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0098765432109876543',3, TO_DATE('19-05-2023','DD-MM-YYYY'));
        
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0054321098765432109',2, TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0054321098765432109',1, TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0054321098765432109',4, TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0054321098765432109',3, TO_DATE('18-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0054321098765432109',3, TO_DATE('19-05-2023','DD-MM-YYYY'));
        
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0032109876543210987',4, TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0032109876543210987',3, TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0032109876543210987',2, TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0032109876543210987',1, TO_DATE('18-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0032109876543210987',4, TO_DATE('19-05-2023','DD-MM-YYYY'));

        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0065432109876543210',1, TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0065432109876543210',2, TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0065432109876543210',3, TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0065432109876543210',4, TO_DATE('18-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0065432109876543210',2, TO_DATE('19-05-2023','DD-MM-YYYY'));

        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0087654321098765432',2, TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0087654321098765432',4, TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0087654321098765432',3, TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0087654321098765432',2, TO_DATE('18-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0087654321098765432',1, TO_DATE('19-05-2023','DD-MM-YYYY'));

        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0043210987654321098',1, TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0043210987654321098',3, TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0043210987654321098',1, TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0043210987654321098',2, TO_DATE('18-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0043210987654321098',4, TO_DATE('19-05-2023','DD-MM-YYYY'));

        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0021098765432109876',4, TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0021098765432109876',4, TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0021098765432109876',3, TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0021098765432109876',1, TO_DATE('18-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0021098765432109876',2, TO_DATE('19-05-2023','DD-MM-YYYY'));

        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0076543210987654321',3, TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0076543210987654321',1, TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0076543210987654321',3, TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0076543210987654321',4, TO_DATE('18-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0076543210987654321',2, TO_DATE('19-05-2023','DD-MM-YYYY'));

        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0109876543210987654',2, TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0109876543210987654',3, TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0109876543210987654',1, TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0109876543210987654',4, TO_DATE('18-05-2023','DD-MM-YYYY'));
        INSERT INTO Effettua_turno(Matricola_turno, Cod_rep_turno_g, data_turno_g) VALUES ('G0109876543210987654',1, TO_DATE('19-05-2023','DD-MM-YYYY'));



    --Personale di servizio

        INSERT INTO Personale_di_servizio(CF_Pers_serv, Nome_dip, Cognome_dip, discriminante_pers_serv) VALUES ('BNTPLA95T30G419E', 'Bianca', 'Topolino', 3);
        INSERT INTO Personale_di_servizio(CF_Pers_serv, Nome_dip, Cognome_dip, discriminante_pers_serv) VALUES ('CNTRLI95H08D843F', 'Caterina', 'Lippi', 3);
        INSERT INTO Personale_di_servizio(CF_Pers_serv, Nome_dip, Cognome_dip, discriminante_pers_serv) VALUES ('DMNNCR95E77I510C', 'Domenico', 'Neri', 3);
        INSERT INTO Personale_di_servizio(CF_Pers_serv, Nome_dip, Cognome_dip, discriminante_pers_serv) VALUES ('FRNTZI95F88L621B', 'Francesca', 'Zito', 3);
        
        INSERT INTO Personale_di_servizio(CF_Pers_serv, Nome_dip, Cognome_dip, discriminante_pers_serv) VALUES ('GNDNLC95G99M732K', 'Giovanni', 'D Angelo', 2);
        INSERT INTO Personale_di_servizio(CF_Pers_serv, Nome_dip, Cognome_dip, discriminante_pers_serv) VALUES ('HMTDST95I21E954G', 'Hamza', 'Di Stefano', 2);
        INSERT INTO Personale_di_servizio(CF_Pers_serv, Nome_dip, Cognome_dip, discriminante_pers_serv) VALUES ('IMNRFF95D66G419P', 'Imran', 'Farina', 2);
        INSERT INTO Personale_di_servizio(CF_Pers_serv, Nome_dip, Cognome_dip, discriminante_pers_serv) VALUES ('JNNLUC95B12K843R', 'Gianna', 'Luciano', 2);
        INSERT INTO Personale_di_servizio(CF_Pers_serv, Nome_dip, Cognome_dip, discriminante_pers_serv) VALUES ('KNDRBN95H10D843T', 'Kendra', 'Bianchi', 2);
        INSERT INTO Personale_di_servizio(CF_Pers_serv, Nome_dip, Cognome_dip, discriminante_pers_serv) VALUES ('LRTNDR95M45L623Q', 'Laura', 'Tondi', 2);
        INSERT INTO Personale_di_servizio(CF_Pers_serv, Nome_dip, Cognome_dip, discriminante_pers_serv) VALUES ('MRNTNN95L32P065S', 'Marina', 'Tanner', 2);
        INSERT INTO Personale_di_servizio(CF_Pers_serv, Nome_dip, Cognome_dip, discriminante_pers_serv) VALUES ('NPTLRA95E77I510U', 'Natalia', 'Pellegrini', 2);

        INSERT INTO Personale_di_servizio(CF_Pers_serv, Nome_dip, Cognome_dip, discriminante_pers_serv) VALUES ('PLMNNR95F88L621I', 'Paloma', 'Mannino',1);
        INSERT INTO Personale_di_servizio(CF_Pers_serv, Nome_dip, Cognome_dip, discriminante_pers_serv) VALUES ('QRNTNI95G99M732O', 'Quentin', 'Rinaldi',1);



    --Turno in

        INSERT INTO Turno_in(CF_inserviente_turno, codice_rep_inser, data_turno) VALUES ('GNDNLC95G99M732K',1,TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Turno_in(CF_inserviente_turno, codice_rep_inser, data_turno) VALUES ('GNDNLC95G99M732K',2,TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Turno_in(CF_inserviente_turno, codice_rep_inser, data_turno) VALUES ('GNDNLC95G99M732K',3,TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Turno_in(CF_inserviente_turno, codice_rep_inser, data_turno) VALUES ('GNDNLC95G99M732K',4,TO_DATE('18-05-2023','DD-MM-YYYY'));
        INSERT INTO Turno_in(CF_inserviente_turno, codice_rep_inser, data_turno) VALUES ('HMTDST95I21E954G',1,TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Turno_in(CF_inserviente_turno, codice_rep_inser, data_turno) VALUES ('HMTDST95I21E954G',2,TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Turno_in(CF_inserviente_turno, codice_rep_inser, data_turno) VALUES ('HMTDST95I21E954G',3,TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Turno_in(CF_inserviente_turno, codice_rep_inser, data_turno) VALUES ('HMTDST95I21E954G',4,TO_DATE('18-05-2023','DD-MM-YYYY'));
        INSERT INTO Turno_in(CF_inserviente_turno, codice_rep_inser, data_turno) VALUES ('IMNRFF95D66G419P',1,TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Turno_in(CF_inserviente_turno, codice_rep_inser, data_turno) VALUES ('IMNRFF95D66G419P',2,TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Turno_in(CF_inserviente_turno, codice_rep_inser, data_turno) VALUES ('IMNRFF95D66G419P',3,TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Turno_in(CF_inserviente_turno, codice_rep_inser, data_turno) VALUES ('IMNRFF95D66G419P',4,TO_DATE('18-05-2023','DD-MM-YYYY'));
        INSERT INTO Turno_in(CF_inserviente_turno, codice_rep_inser, data_turno) VALUES ('JNNLUC95B12K843R',1,TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Turno_in(CF_inserviente_turno, codice_rep_inser, data_turno) VALUES ('JNNLUC95B12K843R',2,TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Turno_in(CF_inserviente_turno, codice_rep_inser, data_turno) VALUES ('JNNLUC95B12K843R',3,TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Turno_in(CF_inserviente_turno, codice_rep_inser, data_turno) VALUES ('JNNLUC95B12K843R',4,TO_DATE('18-05-2023','DD-MM-YYYY'));
        INSERT INTO Turno_in(CF_inserviente_turno, codice_rep_inser, data_turno) VALUES ('KNDRBN95H10D843T',1,TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Turno_in(CF_inserviente_turno, codice_rep_inser, data_turno) VALUES ('KNDRBN95H10D843T',2,TO_DATE('19-05-2023','DD-MM-YYYY'));
        INSERT INTO Turno_in(CF_inserviente_turno, codice_rep_inser, data_turno) VALUES ('KNDRBN95H10D843T',3,TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Turno_in(CF_inserviente_turno, codice_rep_inser, data_turno) VALUES ('KNDRBN95H10D843T',4,TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Turno_in(CF_inserviente_turno, codice_rep_inser, data_turno) VALUES ('LRTNDR95M45L623Q',1,TO_DATE('19-05-2023','DD-MM-YYYY'));
        INSERT INTO Turno_in(CF_inserviente_turno, codice_rep_inser, data_turno) VALUES ('LRTNDR95M45L623Q',2,TO_DATE('19-05-2023','DD-MM-YYYY'));
        INSERT INTO Turno_in(CF_inserviente_turno, codice_rep_inser, data_turno) VALUES ('LRTNDR95M45L623Q',3,TO_DATE('16-05-2023','DD-MM-YYYY'));
        INSERT INTO Turno_in(CF_inserviente_turno, codice_rep_inser, data_turno) VALUES ('LRTNDR95M45L623Q',4,TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Turno_in(CF_inserviente_turno, codice_rep_inser, data_turno) VALUES ('NPTLRA95E77I510U',1,TO_DATE('17-05-2023','DD-MM-YYYY'));
        INSERT INTO Turno_in(CF_inserviente_turno, codice_rep_inser, data_turno) VALUES ('NPTLRA95E77I510U',2,TO_DATE('19-05-2023','DD-MM-YYYY'));
        INSERT INTO Turno_in(CF_inserviente_turno, codice_rep_inser, data_turno) VALUES ('MRNTNN95L32P065S',3,TO_DATE('15-05-2023','DD-MM-YYYY'));
        INSERT INTO Turno_in(CF_inserviente_turno, codice_rep_inser, data_turno) VALUES ('MRNTNN95L32P065S',4,TO_DATE('16-05-2023','DD-MM-YYYY'));



    --Lavora in

        INSERT INTO Lavora_in(CF_custode_turno, codice_rep_custode, data_turno) VALUES ('BNTPLA95T30G419E', 1, TO_DATE('15-05-2023', 'DD-MM-YYYY'));
        INSERT INTO Lavora_in(CF_custode_turno, codice_rep_custode, data_turno) VALUES ('BNTPLA95T30G419E', 1, TO_DATE('16-05-2023', 'DD-MM-YYYY'));
        INSERT INTO Lavora_in(CF_custode_turno, codice_rep_custode, data_turno) VALUES ('BNTPLA95T30G419E', 1, TO_DATE('17-05-2023', 'DD-MM-YYYY'));
        INSERT INTO Lavora_in(CF_custode_turno, codice_rep_custode, data_turno) VALUES ('BNTPLA95T30G419E', 1, TO_DATE('18-05-2023', 'DD-MM-YYYY'));
        INSERT INTO Lavora_in(CF_custode_turno, codice_rep_custode, data_turno) VALUES ('BNTPLA95T30G419E', 1, TO_DATE('19-05-2023', 'DD-MM-YYYY'));

        INSERT INTO Lavora_in(CF_custode_turno, codice_rep_custode, data_turno) VALUES ('CNTRLI95H08D843F', 2, TO_DATE('15-05-2023', 'DD-MM-YYYY'));
        INSERT INTO Lavora_in(CF_custode_turno, codice_rep_custode, data_turno) VALUES ('CNTRLI95H08D843F', 2, TO_DATE('16-05-2023', 'DD-MM-YYYY'));
        INSERT INTO Lavora_in(CF_custode_turno, codice_rep_custode, data_turno) VALUES ('CNTRLI95H08D843F', 2, TO_DATE('17-05-2023', 'DD-MM-YYYY'));
        INSERT INTO Lavora_in(CF_custode_turno, codice_rep_custode, data_turno) VALUES ('CNTRLI95H08D843F', 2, TO_DATE('18-05-2023', 'DD-MM-YYYY'));
        INSERT INTO Lavora_in(CF_custode_turno, codice_rep_custode, data_turno) VALUES ('CNTRLI95H08D843F', 2, TO_DATE('19-05-2023', 'DD-MM-YYYY'));

        INSERT INTO Lavora_in(CF_custode_turno, codice_rep_custode, data_turno) VALUES ('DMNNCR95E77I510C', 3, TO_DATE('15-05-2023', 'DD-MM-YYYY'));
        INSERT INTO Lavora_in(CF_custode_turno, codice_rep_custode, data_turno) VALUES ('DMNNCR95E77I510C', 3, TO_DATE('16-05-2023', 'DD-MM-YYYY'));
        INSERT INTO Lavora_in(CF_custode_turno, codice_rep_custode, data_turno) VALUES ('DMNNCR95E77I510C', 3, TO_DATE('17-05-2023', 'DD-MM-YYYY'));
        INSERT INTO Lavora_in(CF_custode_turno, codice_rep_custode, data_turno) VALUES ('DMNNCR95E77I510C', 3, TO_DATE('18-05-2023', 'DD-MM-YYYY'));
        INSERT INTO Lavora_in(CF_custode_turno, codice_rep_custode, data_turno) VALUES ('DMNNCR95E77I510C', 3, TO_DATE('19-05-2023', 'DD-MM-YYYY'));

        INSERT INTO Lavora_in(CF_custode_turno, codice_rep_custode, data_turno) VALUES ('FRNTZI95F88L621B', 4, TO_DATE('15-05-2023', 'DD-MM-YYYY'));
        INSERT INTO Lavora_in(CF_custode_turno, codice_rep_custode, data_turno) VALUES ('FRNTZI95F88L621B', 4, TO_DATE('16-05-2023', 'DD-MM-YYYY'));
        INSERT INTO Lavora_in(CF_custode_turno, codice_rep_custode, data_turno) VALUES ('FRNTZI95F88L621B', 4, TO_DATE('17-05-2023', 'DD-MM-YYYY'));
        INSERT INTO Lavora_in(CF_custode_turno, codice_rep_custode, data_turno) VALUES ('FRNTZI95F88L621B', 4, TO_DATE('18-05-2023', 'DD-MM-YYYY'));
        INSERT INTO Lavora_in(CF_custode_turno, codice_rep_custode, data_turno) VALUES ('FRNTZI95F88L621B', 4, TO_DATE('19-05-2023', 'DD-MM-YYYY'));



    --Visitatore

        INSERT INTO Visitatore(CF_visitatore, nome_visitatore, cog_visitatore, ruolo) VALUES ('BNTPLA95T30G419R', 'Bianca', 'Topolino', 'Parente');
        INSERT INTO Visitatore(CF_visitatore, nome_visitatore, cog_visitatore, ruolo) VALUES ('CNTRLI95H08D843V', 'Caterina', 'Lippi', 'Ricercatore');
        INSERT INTO Visitatore(CF_visitatore, nome_visitatore, cog_visitatore, ruolo) VALUES ('DMNNCR95E77I780C', 'Domenico', 'Neri', 'Medico');
        INSERT INTO Visitatore(CF_visitatore, nome_visitatore, cog_visitatore, ruolo) VALUES ('FRNTZI95F88L621N', 'Francesca', 'Zito', 'Parente');
        INSERT INTO Visitatore(CF_visitatore, nome_visitatore, cog_visitatore, ruolo) VALUES ('GNDNLC95G99M732M', 'Giovanni', 'DAngelo', 'Medico');
        INSERT INTO Visitatore(CF_visitatore, nome_visitatore, cog_visitatore, ruolo) VALUES ('HMTDST95I21E954J', 'Hamza', 'Di Stefano', 'Parente');
        INSERT INTO Visitatore(CF_visitatore, nome_visitatore, cog_visitatore, ruolo) VALUES ('IMNRFF95D66G419L', 'Imran', 'Farina', 'Medico');
        INSERT INTO Visitatore(CF_visitatore, nome_visitatore, cog_visitatore, ruolo) VALUES ('JNNLUC95B12K843G', 'Gianna', 'Luciano', 'Parente');
        INSERT INTO Visitatore(CF_visitatore, nome_visitatore, cog_visitatore, ruolo) VALUES ('KNDRBN95H10D843O', 'Kendra', 'Bianchi', 'Ricercatore');
        INSERT INTO Visitatore(CF_visitatore, nome_visitatore, cog_visitatore, ruolo) VALUES ('BRTMRS95L32P065Z', 'Beatrice', 'Piazza', 'Parente');



    --Prenotazione

        INSERT INTO Prenotazione(data_ora_visita, CF_dipendenza, CF_pers_serv_pre, CF_paziente, esito, tipologia) VALUES (TIMESTAMP'2023-05-19 13:30:00', 'BNTPLA95T30G419R', 'PLMNNR95F88L621I', 'MRLSNZ98C03E165A', 'Accettata', 'Parentela');
        INSERT INTO Prenotazione(data_ora_visita, CF_dipendenza, CF_pers_serv_pre, CF_paziente, esito, tipologia) VALUES (TIMESTAMP'2023-05-16 12:15:00', 'CNTRLI95H08D843V', 'QRNTNI95G99M732O', 'RSSLNA98F26H492P', 'Rifiutata', 'Ricerca');
        INSERT INTO Prenotazione(data_ora_visita, CF_dipendenza, CF_pers_serv_pre, CF_paziente, esito, tipologia) VALUES (TIMESTAMP'2023-05-18 09:40:00', 'DMNNCR95E77I780C', 'PLMNNR95F88L621I', 'MRRSLR97L30N818I', 'Accettata', 'Medica');
        INSERT INTO Prenotazione(data_ora_visita, CF_dipendenza, CF_pers_serv_pre, CF_paziente, esito, tipologia) VALUES (TIMESTAMP'2023-05-18 09:40:00', 'FRNTZI95F88L621N', 'PLMNNR95F88L621I', 'VRDGNN97H28L610S', 'Rifiutata', 'Parentela');
        INSERT INTO Prenotazione(data_ora_visita, CF_dipendenza, CF_pers_serv_pre, CF_paziente, esito, tipologia) VALUES (TIMESTAMP'2023-05-17 15:00:00', 'GNDNLC95G99M732M', 'QRNTNI95G99M732O', 'RSSLNA98F26H492Z', 'Accettata', 'Medica');
        INSERT INTO Prenotazione(data_ora_visita, CF_dipendenza, CF_pers_serv_pre, CF_paziente, esito, tipologia) VALUES (TIMESTAMP'2023-05-16 17:20:00', 'HMTDST95I21E954J', 'QRNTNI95G99M732O', 'VRDGNN97H28L610C', 'Accettata', 'Parentela');
        INSERT INTO Prenotazione(data_ora_visita, CF_dipendenza, CF_pers_serv_pre, CF_paziente, esito, tipologia) VALUES (TIMESTAMP'2023-05-19 16:00:00', 'IMNRFF95D66G419L', 'PLMNNR95F88L621I', 'MRRSLR97L30N818J', 'Rifiutata', 'Medica');
        INSERT INTO Prenotazione(data_ora_visita, CF_dipendenza, CF_pers_serv_pre, CF_paziente, esito, tipologia) VALUES (TIMESTAMP'2023-05-17 12:00:00', 'JNNLUC95B12K843G', 'QRNTNI95G99M732O', 'MNCGLI95B42E290T', 'Rifiutata', 'Parentela');
        INSERT INTO Prenotazione(data_ora_visita, CF_dipendenza, CF_pers_serv_pre, CF_paziente, esito, tipologia) VALUES (TIMESTAMP'2023-05-16 18:00:00', 'KNDRBN95H10D843O', 'PLMNNR95F88L621I', 'MGNMRC95E77I510I', 'Rifiutata', 'Ricerca');
        INSERT INTO Prenotazione(data_ora_visita, CF_dipendenza, CF_pers_serv_pre, CF_paziente, esito, tipologia) VALUES (TIMESTAMP'2023-05-19 19:45:00', 'BRTMRS95L32P065Z', 'QRNTNI95G99M732O', 'BRTMRS95L32P065D', 'Accettata', 'Parentela');
        



--Visita


        INSERT INTO Visita (data_visita_prenotazione, CF_prenotazione_visita, CF_visita_paziente) VALUES (TIMESTAMP'2023-05-19 13:30:00', 'BNTPLA95T30G419R', 'MRLSNZ98C03E165A');
        INSERT INTO Visita (data_visita_prenotazione, CF_prenotazione_visita, CF_visita_paziente) VALUES (TIMESTAMP'2023-05-18 09:40:00', 'DMNNCR95E77I780C', 'MRRSLR97L30N818I');
        INSERT INTO Visita (data_visita_prenotazione, CF_prenotazione_visita, CF_visita_paziente) VALUES (TIMESTAMP'2023-05-17 15:00:00', 'GNDNLC95G99M732M', 'RSSLNA98F26H492Z');
        INSERT INTO Visita (data_visita_prenotazione, CF_prenotazione_visita, CF_visita_paziente) VALUES (TIMESTAMP'2023-05-16 17:20:00', 'HMTDST95I21E954J', 'VRDGNN97H28L610C');
        INSERT INTO Visita (data_visita_prenotazione, CF_prenotazione_visita, CF_visita_paziente) VALUES (TIMESTAMP'2023-05-19 19:45:00', 'BRTMRS95L32P065Z', 'BRTMRS95L32P065D');
	
  




