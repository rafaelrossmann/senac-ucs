USE Atividade02_db;
SET SQL_SAFE_UPDATES = 0;
UPDATE Etapa
SET lugar = "Salvador"
WHERE lugar = "Campo Grande";
UPDATE Etapa
SET lugar = "Goiania"
WHERE lugar = "Londrina";
UPDATE Equipe
SET PatrocinioFK = null
WHERE nome = "Corredores de Aço";
DELETE FROM Patrocinio
WHERE nomePatrocionio = "Pneus ProDrive";
SELECT
	p.nome AS "Nome do Piloto",
    p.nacionalidade AS "País",
    p.peso AS "Peso (kg)",
    IF(p.capitao = 1, "Sim", "Não") AS "É Capitão?",
    e.nome AS "Equipe"
    FROM Piloto p
    INNER JOIN Equipe e ON p.EquipeFK = e.idEquipe;