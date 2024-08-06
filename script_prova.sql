-- Aprendemos  a criar o banco de dados
-- Criar o banco o banco de dados
CREATE DATABASE diariodebordo;
-- Usar o banco de dados
USE diariodebordo;
-- Criar nossa tabela
CREATE TABLE aluno(    
    id int primary key auto_increment,
    ra char(8) NOT NULL UNIQUE,
    tempoestudo INT NOT NULL,
    rendafamilia DECIMAL(8,2) NOT NULL
); 
-- Mostrar informações da tabela
describe aluno;
-- INSERT: inserir DML (inserir, deletar, atualizar)
INSERT INTO aluno (ra, tempoestudo, rendafamilia) VALUES
('10000001', 10, 2250.00),
('10000002', 15, 4600.00),
('10000003', 20, 3400.00),
('10000004', 25, 2900.00),
('10000005', 30, 5000.00),
('10000006', 35, 3700.00),
('10000007', 40, 4500.00),
('10000008', 45, 2800.00),
('10000009', 50, 5200.00),
('10000010', 55, 2500.00),
('10000011', 60, 6000.00),
('10000012', 65, 3100.00),
('10000013', 70, 4300.00),
('10000014', 75, 2800.00),
('10000015', 80, 4900.00),
('10000016', 85, 3700.00),
('10000017', 90, 4500.00),
('10000018', 95, 2400.00),
('10000019', 100, 5400.00),
('10000020', 105, 2200.00),
('10000021', 110, 4800.00),
('10000022', 115, 3000.00),
('10000023', 120, 4700.00),
('10000024', 125, 3300.00),
('10000025', 130, 5100.00),
('10000026', 135, 2900.00),
('10000027', 140, 4500.00),
('10000028', 145, 3200.00),
('10000029', 150, 5500.00),
('10000030', 155, 2600.00),
('10000031', 160, 5300.00),
('10000032', 165, 2800.00),
('10000033', 170, 4700.00),
('10000034', 175, 3000.00),
('10000035', 180, 4900.00),
('10000036', 185, 3600.00),
('10000037', 190, 4600.00),
('10000038', 195, 2300.00),
('10000039', 200, 5400.00),
('10000040', 205, 3100.00),
('10000041', 210, 4800.00),
('10000042', 215, 3400.00),
('10000043', 220, 5000.00),
('10000044', 225, 3200.00),
('10000045', 230, 4900.00),
('10000046', 235, 3300.00),
('10000047', 240, 5400.00),
('10000048', 245, 2900.00),
('10000049', 250, 4700.00),
('10000050', 255, 3100.00);
-- Como é que eu faço para ver todos eles no banco:
SELECT * FROM aluno;
SELECT * FROM aluno WHERE id = 5;
SELECT * FROM aluno 
		 WHERE tempoestudo >= 200 AND tempoestudo <= 290;
         -- Lógica
         -- Tabela Verdade (portugol) -- SE x and y ENTAO
         -- George Boole
         -- Tabela Verdade
-- Mostrar todas as tabelas 
show tables;
-- Criar a tabela diário de bordo
CREATE TABLE diariobordo (
    id int PRIMARY KEY auto_increment,
    texto text NOT NULL,
    datahora datetime NOT NULL,
    fk_aluno_id int NOT NULL
);
describe diariobordo;
show tables;
 
ALTER TABLE diariobordo ADD CONSTRAINT FK_diariobordo_2
    FOREIGN KEY (fk_aluno_id)
    REFERENCES aluno (id)
    ON DELETE CASCADE;
describe diariobordo;
    
SELECT * FROM diariobordo;
SELECT * FROM aluno;
INSERT diariobordo(texto,
                   datahora,
                   fk_aluno_id)VALUES('a aula foi legal',
                                      '2024-08-05 21:01:00',
                                       3);
SELECT * FROM diariobordo;
INSERT diariobordo(texto,
                   datahora,
                   fk_aluno_id)VALUES('estou aprendendo insert',
                                      '2024-08-01 09:33:00',
                                       24);
                                       INSERT diariobordo(texto,
                   datahora,
                   fk_aluno_id)VALUES('estou aprendendo insert de novo',
                                      '2024-08-01 09:33:00',
                                       24);

-- Mais INSERTs

INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES
('A aula foi muito interessante e cheia de insights.', '2024-07-26 08:30:00', 1),
('Tivemos uma discussão animada sobre o projeto.', '2024-07-27 09:45:00', 2),
('O professor explicou conceitos novos que eu não conhecia.', '2024-07-28 10:00:00', 3),
('A atividade em grupo foi desafiadora, mas produtiva.', '2024-07-29 11:15:00', 4),
('Aprendi novas técnicas de resolução de problemas.', '2024-07-30 12:30:00', 5),
('A palestra foi inspiradora e motivadora.', '2024-07-31 13:45:00', 6),
('Houve um exercício prático que ajudou a entender melhor o conteúdo.', '2024-08-01 14:00:00', 7),
('A discussão sobre o estudo de caso foi muito proveitosa.', '2024-08-02 15:15:00', 8),
('O tempo para dúvidas foi útil para esclarecer pontos importantes.', '2024-08-03 16:30:00', 9),
('Fizemos uma revisão geral do tema da semana e tudo ficou mais claro.', '2024-08-04 17:45:00', 10),
('O laboratório prático ajudou a aplicar os conceitos estudados.', '2024-08-05 18:00:00', 11),
('Aprendi mais sobre a aplicação prática dos conceitos.', '2024-08-06 19:15:00', 12),
('A aula foi um pouco cansativa, mas muito instrutiva.', '2024-08-07 20:30:00', 13),
('O debate em sala foi muito enriquecedor.', '2024-08-08 21:45:00', 14),
('Concluímos a atividade prática com sucesso.', '2024-08-09 22:00:00', 15),
('O professor deu feedbacks úteis sobre o projeto.', '2024-08-10 23:15:00', 16),
('Tivemos uma sessão de perguntas e respostas muito útil.', '2024-08-11 08:30:00', 17),
('A aula prática foi um pouco difícil, mas aprendi bastante.', '2024-08-12 09:45:00', 18),
('A revisão final foi esclarecedora e preparou bem para o teste.', '2024-08-13 10:00:00', 19),
('O trabalho em grupo foi colaborativo e eficiente.', '2024-08-14 11:15:00', 20);



SELECT *  FROM diariobordo;
SELECT * FROM 
     diariobordo 
     JOIN 
	 aluno 
     ON diariobordo.fk_aluno_id = aluno.id;
SELECT
     d.texto,
     d.datahora,
     a.ra
     FROM 
     diariobordo d 
     JOIN 
	 aluno a 
     ON d.fk_aluno_id = a.id;



