
WITH Pacientes_Completos AS (
    SELECT v.Paciente_Id_Paciente
    FROM Vacina v
    GROUP BY v.Paciente_Id_Paciente
    HAVING COUNT(DISTINCT v.Lote_Id_Lote) = (SELECT COUNT(*) FROM Lote)
)

SELECT 
    v.Id_Vacina,
    v.Paciente_Id_Paciente,
    p.Nome_Paciente,
    v.Tipo,
    v.Horario_de_aplicacao,
    v.Lote_Id_Lote,
    v.Lote_Fabricante_Id_Fabricante,
    f.Nome_Fabricante,
    v.Dose
FROM Vacina v
JOIN Paciente p ON p.Id_Paciente = v.Paciente_Id_Paciente
JOIN Lote l ON l.Id_Lote = v.Lote_Id_Lote
JOIN Fabricante f ON f.Id_Fabricante = l.Fabricante_Id_Fabricante
WHERE v.Paciente_Id_Paciente IN (SELECT Paciente_Id_Paciente FROM Pacientes_Completos)
ORDER BY v.Paciente_Id_Paciente, v.Horario_de_aplicacao;
