
BEGIN TRANSACTION;

UPDATE Paciente
SET Nome_Paciente = 'Alexa Souza'
WHERE Id_Paciente = 'PA01';


ROLLBACK;


SELECT Id_Paciente, Nome_Paciente
FROM Paciente
WHERE Id_Paciente = 'PA01';
