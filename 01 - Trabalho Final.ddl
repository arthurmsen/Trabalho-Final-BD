-- Gerado por Oracle SQL Developer Data Modeler 24.3.0.240.1210
--   em:        2025-06-23 21:26:55 BRT
--   site:      SQL Server 2012
--   tipo:      SQL Server 2012



CREATE TABLE Aplicador 
    (
     Id_Aplicador VARCHAR (16) NOT NULL , 
     Nome_Aplicador VARCHAR (64) , 
     CPF VARCHAR (32) , 
     Registro_medico VARCHAR (32) , 
     Sexo_biologico CHAR (1) , 
     Data_de_nascimento DATE 
    )
GO

ALTER TABLE Aplicador ADD CONSTRAINT Aplicador_PK PRIMARY KEY CLUSTERED (Id_Aplicador)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Bairro 
    (
     Id_Bairro VARCHAR (16) NOT NULL , 
     Nome_Bairro VARCHAR (64) , 
     Municipio_Id_Municipio VARCHAR (16) NOT NULL , 
     Municipio_UF_Id_UF VARCHAR (16) NOT NULL 
    )
GO

ALTER TABLE Bairro ADD CONSTRAINT Bairro_PK PRIMARY KEY CLUSTERED (Id_Bairro, Municipio_Id_Municipio, Municipio_UF_Id_UF)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Endereco_Aplicador 
    (
     Id_Endereco_Aplicador VARCHAR (16) NOT NULL , 
     Numero_Aplicador VARCHAR (8) NOT NULL , 
     Complemento_Aplicador VARCHAR (64) NOT NULL , 
     Aplicador_Id_Aplicador VARCHAR (16) NOT NULL , 
     Rua_Id_Rua VARCHAR (16) NOT NULL , 
     Rua_Bairro_Id_Bairro VARCHAR (16) NOT NULL , 
     Rua_Bairro_Municipio_Id_Municipio VARCHAR (16) NOT NULL , 
     Rua_Bairro_Municipio_UF_Id_UF VARCHAR (16) NOT NULL 
    )
GO

ALTER TABLE Endereco_Aplicador ADD CONSTRAINT Endereco_Aplicador_PK PRIMARY KEY CLUSTERED (Id_Endereco_Aplicador, Aplicador_Id_Aplicador, Rua_Id_Rua, Rua_Bairro_Id_Bairro, Rua_Bairro_Municipio_Id_Municipio, Rua_Bairro_Municipio_UF_Id_UF)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Endereco_Fabricante 
    (
     Id_Endereco_Fabricante VARCHAR (16) NOT NULL , 
     Numero_Fabricante VARCHAR (8) , 
     Complemento_Fabricante VARCHAR (64) , 
     Fabricante_Id_Fabricante VARCHAR (16) NOT NULL , 
     Rua_Id_Rua VARCHAR (16) NOT NULL , 
     Rua_Bairro_Id_Bairro VARCHAR (16) NOT NULL , 
     Rua_Bairro_Municipio_Id_Municipio VARCHAR (16) NOT NULL , 
     Rua_Bairro_Municipio_UF_Id_UF VARCHAR (16) NOT NULL 
    )
GO 

    


CREATE UNIQUE NONCLUSTERED INDEX 
    Endereco_Fabricante__IDX ON Endereco_Fabricante 
    ( 
     Fabricante_Id_Fabricante 
    ) 
GO

ALTER TABLE Endereco_Fabricante ADD CONSTRAINT Endereco_Fabricante_PK PRIMARY KEY CLUSTERED (Id_Endereco_Fabricante, Rua_Id_Rua, Rua_Bairro_Id_Bairro, Rua_Bairro_Municipio_Id_Municipio, Rua_Bairro_Municipio_UF_Id_UF)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Endereco_Paciente 
    (
     Id_Endereco_Paciente VARCHAR (16) NOT NULL , 
     Numero_Paciente VARCHAR (8) , 
     Complemento_Paciente VARCHAR (64) , 
     Paciente_Id_Paciente VARCHAR (16) NOT NULL , 
     Rua_Id_Rua VARCHAR (16) NOT NULL , 
     Rua_Bairro_Id_Bairro VARCHAR (16) NOT NULL , 
     Rua_Bairro_Municipio_Id_Municipio VARCHAR (16) NOT NULL , 
     Rua_Bairro_Municipio_UF_Id_UF VARCHAR (16) NOT NULL 
    )
GO

ALTER TABLE Endereco_Paciente ADD CONSTRAINT Endereco_Paciente_PK PRIMARY KEY CLUSTERED (Id_Endereco_Paciente, Paciente_Id_Paciente, Rua_Id_Rua, Rua_Bairro_Id_Bairro, Rua_Bairro_Municipio_Id_Municipio, Rua_Bairro_Municipio_UF_Id_UF)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Endereco_Posto 
    (
     Id_Endereco_Posto VARCHAR (16) NOT NULL , 
     Numero_Posto VARCHAR (8) , 
     Complemento_Posto VARCHAR (64) , 
     Posto_de_saude_Id_Posto_de_saude VARCHAR (16) NOT NULL , 
     Rua_Id_Rua VARCHAR (16) NOT NULL , 
     Rua_Bairro_Id_Bairro VARCHAR (16) NOT NULL , 
     Rua_Bairro_Municipio_Id_Municipio VARCHAR (16) NOT NULL , 
     Rua_Bairro_Municipio_UF_Id_UF VARCHAR (16) NOT NULL 
    )
GO 

    


CREATE UNIQUE NONCLUSTERED INDEX 
    Endereco_Posto__IDX ON Endereco_Posto 
    ( 
     Posto_de_saude_Id_Posto_de_saude 
    ) 
GO

ALTER TABLE Endereco_Posto ADD CONSTRAINT Endereco_Posto_PK PRIMARY KEY CLUSTERED (Id_Endereco_Posto, Rua_Id_Rua, Rua_Bairro_Id_Bairro, Rua_Bairro_Municipio_Id_Municipio, Rua_Bairro_Municipio_UF_Id_UF)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Fabricante 
    (
     Id_Fabricante VARCHAR (16) NOT NULL , 
     Nome_Fabricante VARCHAR (64) , 
     CNPJ VARCHAR (32) 
    )
GO

ALTER TABLE Fabricante ADD CONSTRAINT Fabricante_PK PRIMARY KEY CLUSTERED (Id_Fabricante)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Lote 
    (
     Id_Lote VARCHAR (16) NOT NULL , 
     Codigo VARCHAR (16) , 
     Data_de_fabricacao DATE , 
     Data_de_validade DATE , 
     Fabricante_Id_Fabricante VARCHAR (16) NOT NULL , 
     Quantidade INTEGER 
    )
GO

ALTER TABLE Lote ADD CONSTRAINT Lote_PK PRIMARY KEY CLUSTERED (Id_Lote, Fabricante_Id_Fabricante)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Municipio 
    (
     Id_Municipio VARCHAR (16) NOT NULL , 
     Nome_Municipio VARCHAR (64) , 
     UF_Id_UF VARCHAR (16) NOT NULL 
    )
GO

ALTER TABLE Municipio ADD CONSTRAINT Município_PK PRIMARY KEY CLUSTERED (Id_Municipio, UF_Id_UF)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Paciente 
    (
     Id_Paciente VARCHAR (16) NOT NULL , 
     Nome_Paciente VARCHAR (64) , 
     CPF VARCHAR (32) , 
     Sexo_biologico CHAR (1) , 
     Data_de_nascimento DATE 
    )
GO

ALTER TABLE Paciente ADD CONSTRAINT Paciente_PK PRIMARY KEY CLUSTERED (Id_Paciente)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Posto_de_saude 
    (
     Id_Posto_de_saude VARCHAR (16) NOT NULL , 
     Nome_Posto VARCHAR (64) , 
     CNPJ VARCHAR (32) 
    )
GO

ALTER TABLE Posto_de_saude ADD CONSTRAINT Posto_de_saúde_PK PRIMARY KEY CLUSTERED (Id_Posto_de_saude)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Rua 
    (
     Id_Rua VARCHAR (16) NOT NULL , 
     Nome_Rua VARCHAR (64) , 
     Bairro_Id_Bairro VARCHAR (16) NOT NULL , 
     Bairro_Municipio_Id_Municipio VARCHAR (16) NOT NULL , 
     Bairro_Municipio_UF_Id_UF VARCHAR (16) NOT NULL 
    )
GO

ALTER TABLE Rua ADD CONSTRAINT Rua_PK PRIMARY KEY CLUSTERED (Id_Rua, Bairro_Id_Bairro, Bairro_Municipio_Id_Municipio, Bairro_Municipio_UF_Id_UF)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE UF 
    (
     Id_UF VARCHAR (16) NOT NULL , 
     Nome_UF VARCHAR (64) 
    )
GO

ALTER TABLE UF ADD CONSTRAINT UF_PK PRIMARY KEY CLUSTERED (Id_UF)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Vacina 
    (
     Id_Vacina VARCHAR (16) NOT NULL , 
     Tipo VARCHAR (32) , 
     Horario_de_aplicacao DATETIME , 
     Lote_Id_Lote VARCHAR (16) NOT NULL , 
     Lote_Fabricante_Id_Fabricante VARCHAR (16) NOT NULL , 
     Paciente_Id_Paciente VARCHAR (16) NOT NULL , 
     Aplicador_Id_Aplicador VARCHAR (16) NOT NULL , 
     Posto_de_saude_Id_Posto_de_saude VARCHAR (16) NOT NULL , 
     Dose INTEGER 
    )
GO

ALTER TABLE Vacina ADD CONSTRAINT Vacina_PK PRIMARY KEY CLUSTERED (Id_Vacina, Lote_Id_Lote, Lote_Fabricante_Id_Fabricante, Paciente_Id_Paciente, Aplicador_Id_Aplicador, Posto_de_saude_Id_Posto_de_saude)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

ALTER TABLE Bairro 
    ADD CONSTRAINT Bairro_Municipio_FK FOREIGN KEY 
    ( 
     Municipio_Id_Municipio, 
     Municipio_UF_Id_UF
    ) 
    REFERENCES Municipio 
    ( 
     Id_Municipio , 
     UF_Id_UF 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Endereco_Aplicador 
    ADD CONSTRAINT Endereco_Aplicador_Aplicador_FK FOREIGN KEY 
    ( 
     Aplicador_Id_Aplicador
    ) 
    REFERENCES Aplicador 
    ( 
     Id_Aplicador 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Endereco_Aplicador 
    ADD CONSTRAINT Endereco_Aplicador_Rua_FK FOREIGN KEY 
    ( 
     Rua_Id_Rua, 
     Rua_Bairro_Id_Bairro, 
     Rua_Bairro_Municipio_Id_Municipio, 
     Rua_Bairro_Municipio_UF_Id_UF
    ) 
    REFERENCES Rua 
    ( 
     Id_Rua , 
     Bairro_Id_Bairro , 
     Bairro_Municipio_Id_Municipio , 
     Bairro_Municipio_UF_Id_UF 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Endereco_Fabricante 
    ADD CONSTRAINT Endereco_Fabricante_Fabricante_FK FOREIGN KEY 
    ( 
     Fabricante_Id_Fabricante
    ) 
    REFERENCES Fabricante 
    ( 
     Id_Fabricante 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Endereco_Fabricante 
    ADD CONSTRAINT Endereco_Fabricante_Rua_FK FOREIGN KEY 
    ( 
     Rua_Id_Rua, 
     Rua_Bairro_Id_Bairro, 
     Rua_Bairro_Municipio_Id_Municipio, 
     Rua_Bairro_Municipio_UF_Id_UF
    ) 
    REFERENCES Rua 
    ( 
     Id_Rua , 
     Bairro_Id_Bairro , 
     Bairro_Municipio_Id_Municipio , 
     Bairro_Municipio_UF_Id_UF 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Endereco_Paciente 
    ADD CONSTRAINT Endereco_Paciente_Paciente_FK FOREIGN KEY 
    ( 
     Paciente_Id_Paciente
    ) 
    REFERENCES Paciente 
    ( 
     Id_Paciente 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Endereco_Paciente 
    ADD CONSTRAINT Endereco_Paciente_Rua_FK FOREIGN KEY 
    ( 
     Rua_Id_Rua, 
     Rua_Bairro_Id_Bairro, 
     Rua_Bairro_Municipio_Id_Municipio, 
     Rua_Bairro_Municipio_UF_Id_UF
    ) 
    REFERENCES Rua 
    ( 
     Id_Rua , 
     Bairro_Id_Bairro , 
     Bairro_Municipio_Id_Municipio , 
     Bairro_Municipio_UF_Id_UF 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Endereco_Posto 
    ADD CONSTRAINT Endereco_Posto_Posto_de_saude_FK FOREIGN KEY 
    ( 
     Posto_de_saude_Id_Posto_de_saude
    ) 
    REFERENCES Posto_de_saude 
    ( 
     Id_Posto_de_saude 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Endereco_Posto 
    ADD CONSTRAINT Endereco_Posto_Rua_FK FOREIGN KEY 
    ( 
     Rua_Id_Rua, 
     Rua_Bairro_Id_Bairro, 
     Rua_Bairro_Municipio_Id_Municipio, 
     Rua_Bairro_Municipio_UF_Id_UF
    ) 
    REFERENCES Rua 
    ( 
     Id_Rua , 
     Bairro_Id_Bairro , 
     Bairro_Municipio_Id_Municipio , 
     Bairro_Municipio_UF_Id_UF 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Lote 
    ADD CONSTRAINT Lote_Fabricante_FK FOREIGN KEY 
    ( 
     Fabricante_Id_Fabricante
    ) 
    REFERENCES Fabricante 
    ( 
     Id_Fabricante 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Municipio 
    ADD CONSTRAINT Municipio_UF_FK FOREIGN KEY 
    ( 
     UF_Id_UF
    ) 
    REFERENCES UF 
    ( 
     Id_UF 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Rua 
    ADD CONSTRAINT Rua_Bairro_FK FOREIGN KEY 
    ( 
     Bairro_Id_Bairro, 
     Bairro_Municipio_Id_Municipio, 
     Bairro_Municipio_UF_Id_UF
    ) 
    REFERENCES Bairro 
    ( 
     Id_Bairro , 
     Municipio_Id_Municipio , 
     Municipio_UF_Id_UF 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Vacina 
    ADD CONSTRAINT Vacina_Aplicador_FK FOREIGN KEY 
    ( 
     Aplicador_Id_Aplicador
    ) 
    REFERENCES Aplicador 
    ( 
     Id_Aplicador 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Vacina 
    ADD CONSTRAINT Vacina_Lote_FK FOREIGN KEY 
    ( 
     Lote_Id_Lote, 
     Lote_Fabricante_Id_Fabricante
    ) 
    REFERENCES Lote 
    ( 
     Id_Lote , 
     Fabricante_Id_Fabricante 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Vacina 
    ADD CONSTRAINT Vacina_Paciente_FK FOREIGN KEY 
    ( 
     Paciente_Id_Paciente
    ) 
    REFERENCES Paciente 
    ( 
     Id_Paciente 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Vacina 
    ADD CONSTRAINT Vacina_Posto_de_saude_FK FOREIGN KEY 
    ( 
     Posto_de_saude_Id_Posto_de_saude
    ) 
    REFERENCES Posto_de_saude 
    ( 
     Id_Posto_de_saude 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            14
-- CREATE INDEX                             2
-- ALTER TABLE                             30
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE DATABASE                          0
-- CREATE DEFAULT                           0
-- CREATE INDEX ON VIEW                     0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE ROLE                              0
-- CREATE RULE                              0
-- CREATE SCHEMA                            0
-- CREATE SEQUENCE                          0
-- CREATE PARTITION FUNCTION                0
-- CREATE PARTITION SCHEME                  0
-- 
-- DROP DATABASE                            0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
