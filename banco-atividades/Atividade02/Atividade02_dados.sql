USE Atividade02_db;
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE Patrocinio;
SET FOREIGN_KEY_CHECKS = 1;
INSERT INTO Temporada (numero) VALUES (1);
INSERT INTO Patrocinio (nomePatrocionio) VALUES 
("MotorTech Brasil"),
("Velocidade Extrema"),
("Alta Performance"),
("Turbo Racing"),
("Pneus ProDrive");
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE Equipe;
SET FOREIGN_KEY_CHECKS = 1;
INSERT INTO Equipe (nome, PatrocinioFK) VALUES 
("Escuderia Veloz", 1), 
("Rapidos & Furiosos", 2), 
("Fenix Racing", 3), 
("Equipe Tempestade", 4), 
("Corredores de Aço", 5);
INSERT INTO Etapa (lugar, data_evento, hora, Temporada_id) VALUES 
("São Paulo", "2024-01-15", "14:00", 1),
("Rio de Janeiro", "2024-02-20", "16:00", 1),
("Campo Grande", "2024-03-18", "15:00", 1), 
("Londrina", "2024-04-22", "10:00", 1),
("Porto Alegre", "2024-05-10", "10:00", 1);
SET FOREIGN_KEY_CHECKS = 0;
ALTER TABLE Piloto
MODIFY COLUMN idPiloto INT AUTO_INCREMENT;
SET FOREIGN_KEY_CHECKS = 1;
INSERT INTO Piloto (nome, peso, capitao, EquipeFK, nacionalidade) VALUES
("Lucas Andrade", 70.5, 1, 1, "Brasileiro"),
("Renato Figueiredo", 75, 0, 1, "Brasileiro"),
("Mateus Silva", 68, 0, 2, "Brasileiro"),
("Bruno Almeida", 78.3, 1, 2, "Brasileiro"),
("Carla Pereira", 60, 1, 3, "Portuguesa"),
("Gabriela Torres", 58.5, 0, 3, "Brasileira"),
("João Costa", 80.5, 0, 4, "Brasileiro"),
("Thiago Santos", 72.5, 0, 4, "Brasileiro"),
("Mariana Gomes", 62, 1, 5, "Portuguesa"),
("Beatriz Lopes", 63.2, 1, 5, "Portuguesa");
INSERT INTO Etapa_has_Piloto (EtapaFK, PilotoFK) VALUES 
(1, 1), 
(1, 3), 
(1, 5), 
(1, 7), 
(1, 9), 
(1, 2), 
(1, 4), 
(1, 6), 
(1, 8), 
(1, 10);