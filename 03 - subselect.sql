SELECT p.Id_Paciente, p.Nome_Paciente
FROM Paciente p
WHERE p.Id_Paciente IN (
    SELECT v.Paciente_Id_Paciente
    FROM Vacina v
    GROUP BY v.Paciente_Id_Paciente
    HAVING COUNT(DISTINCT v.Lote_Fabricante_Id_Fabricante) = (SELECT COUNT(*) FROM Fabricante)
);
