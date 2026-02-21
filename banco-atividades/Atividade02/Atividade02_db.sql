create database Atividade02_db;
use Atividade02_db;

create table Temporada(
	idTemporada INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    numero INT NOT NULL
);
create table Patrocinio(
idPatrocinio INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nomePatrocionio VARCHAR(45) NOT NULL
);
create table Equipe(
	idEquipe INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    PatrocinioFK INT,
    FOREIGN KEY (PatrocinioFK) REFERENCES Patrocinio (idPatrocinio)
);
create table Etapa(
	idEtapa INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    lugaR VARCHAR(100) NOT NULL,
    dataa DATE NOT NULL,
    hora VARCHAR(45) NOT NULL,
    Temporada_id INT NOT NULL,
    FOREIGN KEY (Temporada_id) REFERENCES Temporada (idTemporada)
    );
    create table Piloto(
	idPiloto INT PRIMARY KEY NOT NULL,
    nome VARCHAR(150) NOT NULL,
    peso FLOAT NOT NULL,
    capitao TINYINT NOT NULL,
    EquipeFK INT NOT NULL,
    nacionalidade VARCHAR(40) NOT NULL,
    FOREIGN KEY (EquipeFK) REFERENCES Equipe (idEquipe)
);
create table Etapa_has_Piloto(
	EtapaFK INT NOT NULL,
    PilotoFK INT NOT NULL,
	FOREIGN KEY (EtapaFK) REFERENCES Etapa (idEtapa),
    FOREIGN KEY (PilotoFK) REFERENCES Piloto (idPiloto)
	);
    ALTER TABLE Etapa RENAME COLUMN dataa TO data_evento;