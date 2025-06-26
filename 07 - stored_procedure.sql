CREATE PROCEDURE Pacientes_Vacina_Vencida
AS
BEGIN
    SELECT DISTINCT p.Id_Paciente, l.Id_Lote, p.Nome_Paciente, v.Id_Vacina, v.Tipo, v.Horario_de_aplicacao, l.Data_de_validade
    FROM Vacina v
    INNER JOIN Lote l ON v.Lote_Id_Lote = l.Id_Lote AND v.Lote_Fabricante_Id_Fabricante = l.Fabricante_Id_Fabricante
    INNER JOIN Paciente p ON v.Paciente_Id_Paciente = p.Id_Paciente
    WHERE l.Data_de_validade < '2025-06-27';
END;
