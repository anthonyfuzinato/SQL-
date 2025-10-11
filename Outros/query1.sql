/* Comentraio */

Select 2 + 2

Select Nome, Loja
From Repositores

Select *
From Repositores

Select Servico_saude as [Serviço]
From Repositores

Select Referencia, Nome, Preco, Preco * Taxa_Iva as [ValorIva], Preco + (Preco* Taxa_Iva) as [p]
From Produtos

Select distinct tipo
From Produtos

Select distinct Fornecedor
From Produtos
Where (Origem = 'Portugal')

Select distinct Fornecedor, Origem
From Produtos
Where (Origem <> 'Portugal')

Select Nome, Preco 
From Produtos
Where (Tipo = 'Bebidas' and Preco < 5)

Select distinct Nome
From Produtos
Where (Origem= 'Portugal' or Origem= 'Espanha')

Select  Nome, Origem
From Produtos
Where Origem In ('Portugal' , 'Espanha' , 'França' , 'Belgica')

Select  Nome, tipo
From Produtos
Where Tipo = 'Charcutaria' or Tipo = 'Enlatados'

Select  Nome, Desconto
From Produtos
Where Desconto Is Null or Desconto = 0
