SELECT Id_Lote, Codigo, Data_de_fabricacao, Data_de_validade, Fabricante_Id_Fabricante, 'Vencido nos últimos 30 dias' AS Situacao
FROM Lote
WHERE Data_de_validade BETWEEN DATEADD(DAY, -30, '2025-06-27') AND DATEADD(DAY, -1, '2025-06-27')

UNION ALL

SELECT Id_Lote, Codigo, Data_de_fabricacao, Data_de_validade, Fabricante_Id_Fabricante, 'A vencer nos próximos 30 dias' AS Situacao
FROM Lote
WHERE Data_de_validade BETWEEN '2025-06-27' AND DATEADD(DAY, 30, '2025-06-27');
