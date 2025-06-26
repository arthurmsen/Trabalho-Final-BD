CREATE VIEW Lotes_Vencidos AS
SELECT Id_Lote, Codigo, Data_de_fabricacao, Data_de_validade, Fabricante_Id_Fabricante
FROM Lote
WHERE Data_de_validade < '2025-06-27';

