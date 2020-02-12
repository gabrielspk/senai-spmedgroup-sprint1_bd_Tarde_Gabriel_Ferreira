CREATE DATABASE SpMedGroup_Tarde

USE SpMedGroup_Tarde

CREATE TABLE Clinica (
	IdClinica			INT PRIMARY KEY IDENTITY,
	Endereco			VARCHAR(250),
	HorarioAbertura		TIME,
	HorarioFechamento	TIME,
	CNPJ				VARCHAR(250) NOT NULL UNIQUE,
	RazaoSocial			VARCHAR(250),
	NomeFantasia		VARCHAR(250)
);

CREATE TABLE StatusConsulta(
	IdStatus	INT PRIMARY KEY IDENTITY,
	TipoStatus	VARCHAR(250)
);

CREATE TABLE Especialidade(
	IdEspecialidade		INT PRIMARY KEY IDENTITY,
	TituloEspecialidade VARCHAR(250)
);

CREATE TABLE TipoUsuario(
	IdTipoUsuario		INT PRIMARY KEY IDENTITY,
	TituloTipoUsuario	VARCHAR(250)
);

CREATE TABLE Usuario(
	IdUsuario		INT PRIMARY KEY IDENTITY,
	Email			VARCHAR (250) NOT NULL UNIQUE,
	Senha			VARCHAR (250) NOT NULL,
	IdTipoUsuario	INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario)
);

CREATE TABLE Paciente(
	IdPaciente		INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR(250) NOT NULL,
	Email			VARCHAR(250) NOT NULL UNIQUE,
	DataNascimento	DATE,
	Telefone		VARCHAR(9),
	RG				VARCHAR(10) NOT NULL UNIQUE,
	CPF				VARCHAR(11) NOT NULL UNIQUE,
	Endereco		VARCHAR(250),
	IdUsuario		INT FOREIGN KEY REFERENCES Usuario (IdUsuario)
);

CREATE TABLE Medico(
	IdMedico		INT PRIMARY KEY IDENTITY,
	Crm				VARCHAR(250) NOT NULL,
	Nome			VARCHAR(250) NOT NULL,
	Email			VARCHAR(250) NOT NULL UNIQUE,
	Especialidadade	VARCHAR(250),
	Clinica			VARCHAR(250),
	CNPJ			VARCHAR(250) NOT NULL,
	RazaoSocial		VARCHAR(250) NOT NULL,
	IdEspecialidade	INT FOREIGN KEY REFERENCES Especialidade (IdEspecialidade),
	IdClinica		INT FOREIGN KEY REFERENCES Clinica (IdClinica),
	IdUsuario		INT FOREIGN KEY REFERENCES Usuario (IdUsuario)
);

CREATE TABLE Administrador(
	IdAdministrador	INT PRIMARY KEY IDENTITY,
	IdUsuario		INT FOREIGN KEY REFERENCES Usuario (IdUsuario)
);

CREATE TABLE Consulta(
	IdConsulta	INT PRIMARY KEY IDENTITY,
	Descricao	VARCHAR(250),
	IdStatus	INT FOREIGN KEY REFERENCES StatusConsulta (IdStatus),
	IdPaciente	INT FOREIGN KEY REFERENCES Paciente (IdPaciente)
);

	SELECT * FROM Clinica
	SELECT * FROM Usuario
	SELECT * FROM Medico
	SELECT * FROM Paciente
	SELECT * FROM Especialidade
	SELECT * FROM Consulta
	SELECT * FROM Usuario
	
	ALTER TABLE Consulta ADD IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario)

	SELECT * FROM Consulta
	







