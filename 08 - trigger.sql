CREATE TRIGGER Atualiza_Horario_Vacinacao
ON Vacina
AFTER INSERT
AS
BEGIN
    UPDATE v
    SET v.Horario_de_aplicacao = GETDATE()
    FROM Vacina v
    INNER JOIN inserted i ON v.Id_Vacina = i.Id_Vacina;
END;
