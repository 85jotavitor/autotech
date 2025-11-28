CREATE DATABASE autotech;
USE autotech;

CREATE TABLE Cliente (
    cliente_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100),
    endereco VARCHAR(200)
);

CREATE TABLE Veiculo (
    veiculo_id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT NOT NULL,
    marca VARCHAR(50),
    modelo VARCHAR(50),
    ano INT,
    placa VARCHAR(10),
    FOREIGN KEY (cliente_id) REFERENCES Cliente(cliente_id)
);

CREATE TABLE OrdemServico (
    os_id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT NOT NULL,
    veiculo_id INT NOT NULL,
    data_entrada DATE,
    data_saida DATE,
    status VARCHAR(30),
    descricao_problema VARCHAR(255),
    valor_total DECIMAL(10,2),
    FOREIGN KEY (cliente_id) REFERENCES Cliente(cliente_id),
    FOREIGN KEY (veiculo_id) REFERENCES Veiculo(veiculo_id)
);

CREATE TABLE Mecanico (
    mecanico_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    especialidade VARCHAR(50),
    telefone VARCHAR(20)
);

CREATE TABLE ServicoExecutado (
    servico_id INT AUTO_INCREMENT PRIMARY KEY,
    os_id INT NOT NULL,
    mecanico_id INT NOT NULL,
    descricao VARCHAR(255),
    tempo_horas DECIMAL(5,2),
    valor_mao_obra DECIMAL(10,2),
    FOREIGN KEY (os_id) REFERENCES OrdemServico(os_id),
    FOREIGN KEY (mecanico_id) REFERENCES Mecanico(mecanico_id)
);

CREATE TABLE Peca (
    peca_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    codigo VARCHAR(50),
    preco_unitario DECIMAL(10,2),
    fornecedor VARCHAR(100)
);

CREATE TABLE OrdemPeca (
    os_id INT NOT NULL,
    peca_id INT NOT NULL,
    quantidade INT,
    preco_unitario DECIMAL(10,2),
    PRIMARY KEY (os_id, peca_id),
    FOREIGN KEY (os_id) REFERENCES OrdemServico(os_id),
    FOREIGN KEY (peca_id) REFERENCES Peca(peca_id)
);

CREATE TABLE Pagamento (
    pagamento_id INT AUTO_INCREMENT PRIMARY KEY,
    os_id INT NOT NULL,
    data_pagamento DATE,
    valor_pago DECIMAL(10,2),
    metodo_pagamento VARCHAR(50),
    status VARCHAR(30),
    FOREIGN KEY (os_id) REFERENCES OrdemServico(os_id)
);
