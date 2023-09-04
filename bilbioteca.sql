
CREATE TABLE Estudante (
    matricula SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    dataNasc DATE,
    email VARCHAR(255),
    telefone VARCHAR(20)
);


CREATE TABLE Livro (
    cod SERIAL PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(255),
    ano INT,
    editora VARCHAR(255)
);


CREATE TABLE Usuario (
    cod SERIAL PRIMARY KEY,
    login VARCHAR(50) NOT NULL,
    senha VARCHAR(50) NOT NULL,
    perfil VARCHAR(20) CHECK (perfil IN ('admin', 'comum'))
);


CREATE TABLE Emprestimo (
    cod SERIAL PRIMARY KEY,
    dataRetirada DATE,
    dataPrefEntrega DATE,
    statusDevolucao BOOLEAN
);
