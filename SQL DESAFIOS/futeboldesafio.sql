/*Anthony Fuzinato Nº01  12ºH*/

SELECT IIF(CHARINDEX(' ',Nome) = 0,NOME,SUBSTRING(NOME,0,CHARINDEX(' ',Nome))), Clube_Atual
FROM Jogadores
WHERE Clube_Atual = 'F.C.PORTO'
 
SELECT Nome
FROM Clubes
WHERE DATEPART(YEAR,GETDATE()) - ANO_FORMACAO > 100
 
SELECT TOP 1 NOME, ANO_FORMACAO
FROM Clubes
ORDER BY ANO_FORMACAO ASC
 
SELECT NOME, Nacionalidade
FROM Jogadores
WHERE Nacionalidade <> 'PORTUGAL'
ORDER BY NOME ASC
 
SELECT SUBSTRING(NOME,CHARINDEX(' ',NOME),LEN(NOME))
FROM CLUBES
WHERE NOME LIKE '%VITÓRIA%'
 
SELECT NOME, POSICAO
FROM Jogadores
WHERE Clube_Atual = 'S.L.BENFICA' AND DATEDIFF(YEAR,DATA_NASCIMENTO,GETDATE()) > 30
 
SELECT COUNT(*) AS [Nº de Guarda Redes]
FROM Jogadores
WHERE Posicao = 'GUARDA REDES'
 
SELECT *
FROM JOGADORES
INNER JOIN Clubes_Campeonatos
ON Clube_Atual = Clubes_Campeonatos.Nome_Clube
WHERE Nacionalidade <> 'PORTUGAL' AND Cod_Campeonato LIKE '%LIGA_ZON_SAGRES_2018%'
 
SELECT SUM(N_JOGOS)
FROM Historico_Jogadores_Campeonatos
INNER JOIN Jogadores
ON Historico_Jogadores_Campeonatos.N_Jogador = Jogadores.N_Jogador
WHERE Jogadores.Nome = 'FÁBIO COENTRÃO'
 
SELECT Cod_Campeonato ,AVG(N_JOGOS)
FROM Historico_Jogadores_Campeonatos
INNER JOIN Jogadores
ON Historico_Jogadores_Campeonatos.N_Jogador = Jogadores.N_Jogador
WHERE Jogadores.Nome = 'JONAS'
GROUP BY Cod_Campeonato
 
SELECT Nome, SUM(N_JOGOS)
FROM Jogadores
INNER JOIN Historico_Jogadores_Campeonatos
ON Jogadores.N_Jogador = Historico_Jogadores_Campeonatos.N_Jogador
GROUP BY JOGADORES.N_Jogador, Nome
 
SELECT Data, Nome_Equipa_Visitante,Golos_Equipa_Visitante,Golos_Equipa_Visitada,Nome_Equipa_Visitada
FROM Jogos
WHERE Nome_Equipa_Visitada = 'S.L.BENFICA' AND Nome_Equipa_Visitante = 'F.C.PORTO' OR 
Nome_Equipa_Visitante = 'S.L.BENFICA' AND Nome_Equipa_Visitada = 'F.C.PORTO'
 
SELECT DISTINCT Nome
FROM Jogadores
FULL OUTER JOIN Historico_Jogadores_Campeonatos
ON Jogadores.N_Jogador = Historico_Jogadores_Campeonatos.N_Jogador
WHERE Nome_Clube = 'S.L.BENFICA' OR Clube_Atual = 'S.L.BENFICA'
 
SELECT COUNT(*)
FROM JOGOS
WHERE (Nome_Equipa_Visitada = 'SPORTING' OR Nome_Equipa_Visitante = 'SPORTING') AND Campeonato = 'LIGA_ZON_SAGRES_2018'
 
SELECT DISTINCT Nome_Clube
FROM Clubes_Campeonatos
WHERE Cod_Campeonato LIKE 'LIGA_ZON_SAGRES%'
 
SELECT SUM(GOLOS_EQUIPA_VISITANTE)
FROM JOGOS
WHERE Nome_Equipa_Visitante = 'SPORTING'
 
SELECT *
FROM Jogadores
WHERE Lesionado = 0 AND Clube_Atual = 'F.C.PORTO'
 
SELECT TOP 1 RIGHT(Cod_Campeonato,4)
FROM Clubes_Campeonatos
WHERE NOME_CLUBE = 'MARITIMO'
ORDER BY Posicao ASC
 
SELECT TOP 2 Nome_Clube
FROM Clubes_Campeonatos
WHERE Cod_Campeonato = 'LIGA_ZON_SAGRES_2017'
ORDER BY Posicao DESC
 
SELECT *
FROM JOGOS
WHERE Campeonato = 'LIGA_ZON_SAGRES_2017'
ORDER BY Data ASC
 
SELECT *
FROM Clubes_Campeonatos
WHERE COD_CAMPEONATO LIKE '%2018' AND Posicao = '1'
 
SELECT *
FROM JOGOS
WHERE Espetadores > (SELECT AVG(ESPETADORES) FROM JOGOS)
 
SELECT TOP 3 *
FROM JOGOS
ORDER BY Espetadores DESC
 
SELECT TOP 2 Nome_Clube
FROM Clubes_Campeonatos
WHERE Cod_Campeonato = 'LIGA_ZON_SAGRES_2016'
ORDER BY Posicao ASC
 
SELECT *
FROM JOGOS
WHERE GETDATE() < Data
 
SELECT DATA, Nome_Equipa_Visitada, Nome_Equipa_Visitante, Estadio
FROM JOGOS
WHERE DATEPART(YEAR,DATA) = '2017'
 
SELECT AVG(ESPETADORES) AS [Média de espetadores esta época]
FROM Jogos
WHERE Campeonato = 'LIGA_ZON_SAGRES_2018'
 
SELECT *
FROM JOGADORES
ORDER BY Clube_Atual, Posicao ASC

SELECT NOME, CLUBE_ATUAL
FROM Jogadores
WHERE DATEDIFF(YEAR,DATA_NASCIMENTO,GETDATE()) >= 18 AND DATEDIFF(YEAR,DATA_NASCIMENTO,GETDATE()) <= 20
 
SELECT 2.5*Espetadores,*
FROM JOGOS
WHERE Estadio LIKE '%MUNICIPAL%'
 
SELECT ABS(Golos_Equipa_Visitada-Golos_Equipa_Visitante)
FROM JOGOS
WHERE Nome_Equipa_Visitada = 'S.L.BENFICA' OR Nome_Equipa_Visitante = 'S.L.BENFICA'
 
SELECT NOME,DATEDIFF(YEAR,DATA_NASCIMENTO,GETDATE()) AS [IDADE],DATEDIFF(YEAR,DATA_NASCIMENTO,GETDATE())+5 AS [IDADE DAQUI A 5 ANOS]
FROM Jogadores
 
SELECT *
FROM Jogos
WHERE Estadio IN ('ALVALADE','DRAGÃO','MUNICIPAL DE BRAGA')
 
SELECT Clubes_Campeonatos.Cod_Campeonato,Nome_Clube
FROM Clubes_Campeonatos
INNER JOIN Campeonatos
ON Clubes_Campeonatos.Cod_Campeonato = Campeonatos.Cod_Campeonato
WHERE Epoca = '2018'
ORDER BY Divisao,Cod_Campeonato
 
SELECT *
FROM Clubes_Campeonatos
WHERE Nome_Clube = 'ACADÉMICO VISEU'