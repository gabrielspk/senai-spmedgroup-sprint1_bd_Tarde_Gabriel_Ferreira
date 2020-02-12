USE SpMedGroup_Tarde

SELECT COUNT  (IdUsuario) as QuantidadeUsuario FROM Usuario

SELECT Paciente.Nome,CONVERT(VARCHAR(10), Paciente.DataNascimento,101) AS DataNascimento FROM Paciente
