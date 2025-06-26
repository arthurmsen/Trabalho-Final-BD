ALTER TABLE Lote
ADD CONSTRAINT CK_Lote_Quantidade
CHECK (Quantidade <= 100);
