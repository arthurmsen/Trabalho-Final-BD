INSERT INTO Fabricante (Id_Fabricante, Nome_Fabricante, CNPJ) VALUES ('FA05', 'ProduzNada', 'nadanadanada');

ALTER TABLE Vacina NOCHECK CONSTRAINT Vacina_Lote_FK;

INSERT INTO Vacina (Id_Vacina, Tipo, Horario_de_aplicacao, Lote_Id_Lote, Lote_Fabricante_Id_Fabricante, Paciente_Id_Paciente, Aplicador_Id_Aplicador, Posto_de_saude_Id_Posto_de_saude)
VALUES ('VA200', 'Gripe', GETDATE(), 'LT00', 'FA999', 'PA00', 'AP00', 'PS00');

INSERT INTO Vacina (Id_Vacina, Tipo, Horario_de_aplicacao, Lote_Id_Lote, Lote_Fabricante_Id_Fabricante, Paciente_Id_Paciente, Aplicador_Id_Aplicador, Posto_de_saude_Id_Posto_de_saude) VALUES ('VA16', NULL, NULL, '', 'FA00', 'PA00', 'AP00', 'PS00');

SELECT 
    f.Id_Fabricante AS Id_Fabricante,
    f.Nome_Fabricante AS Nome_Fabricante,
    v.Id_Vacina AS Id_Vacina,
    v.Tipo AS Tipo_Vacina,
    v.Horario_de_aplicacao,
    v.Paciente_Id_Paciente
FROM Fabricante f
FULL OUTER JOIN Vacina v
    ON f.Id_Fabricante = v.Lote_Fabricante_Id_Fabricante;

