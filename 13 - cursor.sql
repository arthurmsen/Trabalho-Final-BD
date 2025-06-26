DECLARE @DataVacina DATETIME;
DECLARE @NomePaciente VARCHAR(64);
DECLARE @IdLote VARCHAR(16);
DECLARE @CodigoLote VARCHAR(64);
DECLARE @NomeFabricante VARCHAR(64);

DECLARE cursor_vacinas CURSOR FOR
SELECT 
    v.Horario_de_aplicacao,
    p.Nome_Paciente,
    l.Id_Lote,
    l.Codigo,
    f.Nome_Fabricante
FROM Vacina v
INNER JOIN Paciente p ON v.Paciente_Id_Paciente = p.Id_Paciente
INNER JOIN Lote l ON v.Lote_Id_Lote = l.Id_Lote AND v.Lote_Fabricante_Id_Fabricante = l.Fabricante_Id_Fabricante
INNER JOIN Fabricante f ON l.Fabricante_Id_Fabricante = f.Id_Fabricante;

OPEN cursor_vacinas;

FETCH NEXT FROM cursor_vacinas INTO @DataVacina, @NomePaciente, @IdLote, @CodigoLote, @NomeFabricante;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT 'Data: ' + CONVERT(VARCHAR, @DataVacina, 120) + 
          ' | Paciente: ' + @NomePaciente +
          ' | Lote: ' + @IdLote + ' (' + @CodigoLote + ')' +
          ' | Fabricante: ' + @NomeFabricante;

    FETCH NEXT FROM cursor_vacinas INTO @DataVacina, @NomePaciente, @IdLote, @CodigoLote, @NomeFabricante;
END;

CLOSE cursor_vacinas;
DEALLOCATE cursor_vacinas;
