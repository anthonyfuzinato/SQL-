/*Anthony Fuzinato Nº01  12ºH*/

SELECT nome
FROM Leitores
ORDER BY nome

SELECT AVG(preco) AS MEDIA 
FROM Livros

SELECT TOP 1 nome
FROM Leitores
ORDER BY data_nasc

SELECT COUNT(nleitor)
FROM Leitores

SELECT COUNT(nleitor)
FROM Leitores
WHERE ativo = 1 

SELECT genero, COUNT(nleitor) as Quantidade
FROM Leitores
GROUP BY genero

SELECT nome, DATEDIFF(YY, data_nasc, GETDATE()) AS IDADE
FROM Leitores

SELECT nome
FROM Leitores
WHERE DATEDIFF(YY, data_nasc, GETDATE()) < 20

SELECT nome
FROM Leitores
WHERE MONTH(data_nasc) = MONTH(GETDATE())

SELECT nome
FROM Livros
WHERE ano > YEAR(data_aquisicao)

SELECT nome, preco
FROM Livros
ORDER BY preco

SELECT nome
FROM Livros
WHERE estado = 0

SELECT nome
FROM Livros
WHERE preco >= 2 AND preco < 20

SELECT DATEDIFF(DAY, data_emprestimo,data_devolve) AS DIAS
FROM Emprestimos

SELECT TOP 1 Livros.nome, COUNT(Emprestimos.nemprestimo) as NEmprestimos
FROM Emprestimos
inner join Livros
ON Livros.nlivro = Emprestimos.nlivro
GROUP BY Livros.nome
ORDER BY NEmprestimos DESC
SELECT AVG(SLA.CONTAR)
FROM (SELECT COUNT(*) AS CONTAR FROM Emprestimos GROUP BY nleitor) AS SLA

SELECT Leitores.nome, Livros.nome
FROM Leitores
inner join Emprestimos
on Leitores.nleitor = Emprestimos.nleitor
inner join Livros
on Emprestimos.nlivro = Livros.nlivro

SELECT Leitores.nome, COUNT(Emprestimos.nemprestimo) as emprestimos 
FROM Leitores
inner join Emprestimos
on Leitores.nleitor = Emprestimos.nleitor
GROUP BY Leitores.nome

UPDATE Livros
SET preco = preco + 0.50

DELETE FROM Leitores
WHERE ativo = 0