USE PlataformaJogos;

-- Selecione todos os usuários cadastrados após 01 de março de 2023;
SELECT * FROM Usuario WHERE data_cadastro > '2023-03-01';

-- Selecione todos os jogos com preço superior a 100.00;
SELECT * FROM Jogo WHERE preco > 100;

-- Encontre todas as desenvolvedoras que foram fundadas depois do ano 2000;
SELECT * FROM Desenvolvedora WHERE ano_fundacao > 2000;

-- Liste todos os jogos da desenvolvedora "Valve Corporation";
SELECT * FROM Jogo WHERE id_desenvolvedora = 1;

-- Calcule o preço médio dos jogos na plataforma;
SELECT AVG(preco) AS 'Preço Médio' FROM Jogo;

-- Calcule o preço total dos jogos comprados pelo usuário "Carlos Silva";
SELECT
	u.nome AS 'Dono da Conta',
    SUM(j.preco) AS 'Valor Totas da Biblioteca'
FROM Usuario u
INNER JOIN Biblioteca b ON u.id
INNER JOIN Jogo j ON b.id_jogo = j.id
WHERE u.nome = 'Carlos Silva';

-- Encontre o jogo mais caro da desenvolvedora "Rockstar Games";

SELECT
	d.nome AS 'Desenvolvedora',
    MAX(j.preco) AS 'Jogo mais caro'
FROM Desenvolvedora d
INNER JOIN Jogo j ON d.id = j.id_desenvolvedora
WHERE d.nome = 'Rockstar Games';

-- Liste todos os jogos na categoria "RPG";
SELECT
	j.titulo AS 'Jogo',
    c.nome AS 'Categoria'
FROM Categoria c
INNER JOIN JogoCategoria jc ON c.id = jc.id_categoria
INNER JOIN Jogo j ON jc.id_jogo = j.id
WHERE c.nome = 'RPG';

-- Liste todos os usuários e os jogos que eles possuem na biblioteca;
SELECT
	u.nome AS 'Usuario',
    j.titulo AS 'Jogos',
    b.data_aquisicao AS 'Data da Compra'
FROM Usuario u
INNER JOIN Biblioteca b ON u.id = b.id_usuario
INNER JOIN Jogo j ON b.id_jogo = j.id
ORDER BY u.nome ASC;

-- Encontre o número total de jogos na plataforma desenvolvidos por estúdios dos EUA.
SELECT
	COUNT(j.id) AS 'Total de Jogos (EUA)'
FROM Jogo j
INNER JOIN Desenvolvedora d ON j.id_desenvolvedora = d.id
WHERE d.pais = 'EUA';