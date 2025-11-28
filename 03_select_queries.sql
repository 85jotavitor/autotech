SELECT * FROM OrdemServico WHERE status = 'Finalizada';

SELECT c.nome, v.marca, v.modelo, v.placa
FROM Cliente c
JOIN Veiculo v ON c.cliente_id = v.cliente_id;

SELECT * FROM OrdemServico ORDER BY valor_total DESC LIMIT 1;

SELECT s.descricao, m.nome
FROM ServicoExecutado s
JOIN Mecanico m ON m.mecanico_id = s.mecanico_id;

SELECT o.os_id, SUM(op.quantidade * op.preco_unitario) AS total_pecas
FROM OrdemPeca op
JOIN OrdemServico o ON o.os_id = op.os_id
GROUP BY o.os_id;
