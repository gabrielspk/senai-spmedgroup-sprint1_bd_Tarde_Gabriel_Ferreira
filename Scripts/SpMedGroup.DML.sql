USE SpMedGroup_Tarde

INSERT INTO Clinica (Endereco,HorarioAbertura,HorarioFechamento,CNPJ,RazaoSocial,NomeFantasia)
VALUES ('Av. Barão Limeira, 532, São Paulo, SP','13:00','20:00','123-123-123-123-3','SpMedGroup','Clinica Porsale')

INSERT INTO StatusConsulta (TipoStatus)
VALUES ('Agendado'), ('Cancelado'), ('Realizado')

INSERT INTO Especialidade (TituloEspecialidade)
VALUES ('Acupuntura'), ('Anestesiologia'), ('Cardiologia'),
('Cirurgia Cardiovascular'),('Cirurgia da Mão'),
('Cirurgia do Aparelho Digestivo'), ('Cirurgia Geral'),
('Cirurgia Pediátrica'),('Cirurgia Torácica'),
('Cirurgia Vascular'),('Dermatologia'),('Radioterapia'),
('Urologia'),('Pediatria'),('Psiquiatria')

INSERT INTO TipoUsuario (TituloTipoUsuario)
VALUES ('Administrador'), ('Medico'), ('Paciente')

INSERT INTO Usuario (Email,Senha,IdTipoUsuario)
VALUES ('joao@hotmail.com','132',3),
('roberto.possarle@spmedicalgroup.com.br','132',2),
('joca@hotmail.com','132',1),('ligia@gmail.com','132',3),
('alexandre@gmail.com','132',3),('fernando@gmail.com','132',3),
('bruno@gmail.com','132',3),('mariana@outlook.com','132',3),
('helena.souza@spmedicalgroup.com.br','132',2),
('ricardo.lemos@spmedicalgroup.com.br','132',2)

INSERT INTO Paciente (Nome,Email,DataNascimento,Telefone,RG,CPF,Endereco,IdUsuario)
VALUES ('Ligia','ligia@gmail.com','13/10/1983','11 3456-7654','43522543-5','94839859000','Rua Estado de Israel 240, São Paulo, Estado de São Paulo, 04022-000',4),
('Alexandre','alexandre@gmail.com','23/07/2001','11 98765-6543','32654345-7','73556944057','Av. Paulista, 1578 - Bela Vista, São Paulo - SP, 01310-200', 5),
('Fernando','fernando@gmail.com','10/10/1978','11 97208-4453','54636525','16839338002','Av. Ibirapuera - Indianópolis, 2927,  São Paulo - SP, 04029-200',6),
('João','joao@hotmail.com','27/08/1975','11 7656-6377','32544444-1','91305348010','R. Ver. Geraldo de Camargo, 66 - Santa Luzia, Ribeirão Pires - SP, 09405-380',1),
('Bruno','bruno@gmail.com','21/03/1972','11 95436-8769','54566266-7','79799299004','Alameda dos Arapanés, 945 - Indianópolis, São Paulo - SP, 04524-001',7),
('Mariana','mariana@outlook.com','05/03/2018','11 45252-4242','54566266-8','13771913039','R Sao Antonio, 232 - Vila Universal, Barueri - SP, 06407-140',8)

INSERT INTO Medico (Crm,Nome,Email,Especialidadade,Clinica,CNPJ,RazaoSocial,IdEspecialidade,IdClinica,IdUsuario)
VALUES ('54356-SP','Ricardo','ricardo.lemos@spmedicalgroup.com.br','Anestesiologia','Clinica Possarle','84.400.902/0001-30','SP Medical Group',2,1,10),
('54522-SP','Roberto Possarle','roberto.possarle@spmedicalgroup.com.br','Pediatria','Clinica Possarle','13.434.423/0001-30','SP Medical Group',14,1,2),
('13123-SP','Helena Strada','helena.souza@spmedicalgroup.com.br','Psiquiatiria','Clinica Possarle','31.432.524/0002-30','SP Medical Group',15,1,9)

INSERT INTO Administrador (IdUsuario)
VALUES (3)

INSERT INTO Consulta (Descricao,IdStatus,IdPaciente,IdUsuario)
VALUES ('descrevendo...',2,5,5)



