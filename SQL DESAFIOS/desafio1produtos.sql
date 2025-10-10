/* Anthony Fuzinato Nº01 12H*/

Select distinct Produtos.Nome
From Produtos

Select Nome, Taxa_Iva
From Produtos

Select Nome,Preco
From Produtos

Select AVG(Preco)
From Produtos

Select Nome,Tipo
From Produtos
Where Tipo = 'Limpeza'

Select Nome, Data_validade
From Produtos
Where DATEDIFF(year,GETDATE(),Data_validade) > 0

Select Nome, Data_validade
From Produtos
Where DATEDIFF(year,GETDATE(),Data_validade) > 30

select *
from produtos
where month(data_validade) = month(getdate())

Select Tipo, COUNT(*)
From Produtos
GROUP BY Tipo

Select Nome, Preco
From Produtos
Where Preco < 5

Select Nome,Tipo
From Produtos
Where tipo = 'enlatado' or tipo = 'charcutaria'

Select Nome, Desconto
From Produtos
Where Desconto is null

Select Nome, Preco
From Produtos
Where Preco > 5 and Preco < 10

Select Nome, Preco
From Produtos
Where Preco > (SELECT AVG(Preco) FROM Produtos)

Select (SUM(Stock))
From Produtos

Select Top 1 Nome, Stock
From Produtos
ORDER BY STOCK DESC

Select Count(*)
From Produtos

Select Nome,Stock
From Produtos
ORDER BY STOCK ASC

Select Nome, Repositor
From Produtos

Select *
From Produtos
Where Preco > (Select AVG(Preco) From produtos)

Select Preco, Stock
From Produtos

Select Nome,Repositor
From Produtos
Where Repositor is null

Select Origem, COUNT(*)
From Produtos
GROUP BY ORIGEM

Select Top 1 Loja
From Repositores
Group by Loja

Select AVG(CAST(DATEDIFF(YEAR, Data_Nascimento, GETDATE()) AS FLOAT)) AS IdadeMedia
From Repositores

Update Repositores
Set Data_Nascimento= '2024/02/12'

Update Produtos 
Set Preco = Preco - (Preco * 0.10)
Where Datediff(Year,Data_validade,Getdate()) > 0

Select  TOP 1 Nome, MAX(Hora_Saida - Hora_Entrada) as horatotal
From Repositores
GROUP BY Nome

Select TOP 1 len(Nome)
From Repositores
ORDER BY len(Nome) DESC

Select Right(nome,1),Preco 
From Produtos
Where Right(Nome,1) = 'b'

