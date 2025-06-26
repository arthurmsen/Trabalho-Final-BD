
BEGIN TRANSACTION;


UPDATE Paciente
SET Nome_Paciente = 'Rodrigo Ramos da Silva'
WHERE Id_Paciente = 'PA00';


COMMIT;


SELECT Id_Paciente, Nome_Paciente
FROM Paciente
WHERE Id_Paciente = 'PA00';
