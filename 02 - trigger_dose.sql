CREATE TRIGGER Atualiza_Numero_Dose
ON Vacina
AFTER INSERT
AS
BEGIN
    UPDATE v
    SET v.Dose = (
        SELECT COUNT(*) + 1
        FROM Vacina v2
        WHERE v2.Paciente_Id_Paciente = i.Paciente_Id_Paciente
          AND v2.Tipo = i.Tipo
          AND v2.Id_Vacina <> i.Id_Vacina
    )
    FROM Vacina v
    INNER JOIN inserted i ON v.Id_Vacina = i.Id_Vacina;
END;
