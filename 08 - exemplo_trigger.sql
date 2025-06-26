--INSERT INTO Vacina (Id_Vacina, Tipo, Lote_Id_Lote, Lote_Fabricante_Id_Fabricante, Paciente_Id_Paciente, Aplicador_Id_Aplicador, Posto_de_saude_Id_Posto_de_saude)
--VALUES ('VA14', 'Covid', 'LT00', 'FA00', 'PA02', 'AP02', 'PS02');

SELECT Id_Vacina, Tipo, Horario_de_aplicacao, Lote_Id_Lote, Lote_Fabricante_Id_Fabricante, Paciente_Id_Paciente, Aplicador_Id_Aplicador, Posto_de_saude_Id_Posto_de_saude, Dose
FROM Vacina;