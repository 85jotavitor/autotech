INSERT INTO Cliente (nome, telefone, email, endereco) VALUES
('Carlos Andrade', '11999990000', 'carlos@gmail.com', 'Rua Alfa, 123'),
('Mariana Souza', '11988887777', 'mariana@gmail.com', 'Av Beta, 450'),
('João Pereira', '11912345678', 'joao@gmail.com', 'Rua Gama, 89'),
('Pedro Ramos', '11955556666', 'pedro@gmail.com', 'Rua Delta, 50'),
('Fernanda Lima', '11944443333', 'fernanda@gmail.com', 'Av Épsilon, 300');

INSERT INTO Veiculo (cliente_id, marca, modelo, ano, placa) VALUES
(1, 'Toyota', 'Corolla', 2018, 'ABC1234'),
(1, 'Volkswagen', 'Gol', 2012, 'JKL5678'),
(2, 'Honda', 'Civic', 2020, 'DEF5678'),
(3, 'Ford', 'Fiesta', 2015, 'GHI9012'),
(4, 'Chevrolet', 'Onix', 2019, 'MNO3456');

INSERT INTO OrdemServico (cliente_id, veiculo_id, data_entrada, data_saida, status, descricao_problema, valor_total) VALUES
(1, 1, '2024-02-10', '2024-02-12', 'Finalizada', 'Barulho na suspensão', 900.00),
(2, 3, '2024-02-15', NULL, 'Em andamento', 'Falha elétrica', 350.00),
(3, 4, '2024-02-16', NULL, 'Aguardando peças', 'Troca de embreagem', 1200.00),
(4, 5, '2024-02-20', NULL, 'Em andamento', 'Vazamento de óleo', 780.00),
(5, 2, '2024-02-22', NULL, 'Diagnóstico', 'Ruído no motor', 150.00);

INSERT INTO Mecanico (nome, especialidade, telefone) VALUES
('Rogério Lima', 'Suspensão', '11977776666'),
('Paulo Moura', 'Elétrica', '11966665555'),
('Daniel Costa', 'Motor', '11955554444'),
('Ricardo Lopes', 'Freios', '11933332222');

INSERT INTO ServicoExecutado (os_id, mecanico_id, descricao, tempo_horas, valor_mao_obra) VALUES
(1, 1, 'Troca de amortecedor', 2.5, 500),
(2, 2, 'Diagnóstico elétrico', 1.0, 150),
(3, 3, 'Troca de embreagem', 5.0, 800),
(4, 3, 'Troca de junta', 3.0, 450),
(5, 4, 'Revisão dos freios', 1.5, 220);

INSERT INTO Peca (nome, codigo, preco_unitario, fornecedor) VALUES
('Amortecedor', 'PEC001', 400, 'AutoParts SA'),
('Kit Embreagem', 'PEC002', 850, 'AutoTec BR'),
('Fusível 10A', 'PEC003', 5, 'Eletricar'),
('Junta Cabeçote', 'PEC004', 120, 'TecMoto'),
('Pastilha de Freio', 'PEC005', 90, 'FreiParts');

INSERT INTO OrdemPeca VALUES
(1, 1, 2, 400),
(3, 2, 1, 850),
(2, 3, 3, 5),
(4, 4, 1, 120),
(5, 5, 1, 90);

INSERT INTO Pagamento (os_id, data_pagamento, valor_pago, metodo_pagamento, status) VALUES
(1, '2024-02-12', 900, 'Cartão', 'Pago');
