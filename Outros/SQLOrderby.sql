select nome, preco
from produtos
order by preco desc

select nome, tipo, fornecedor
from produtos
where tipo = 'bebidas'
order by preco desc

select nome, data_nascimento
from repositores
order by data_nascimento desc

select nome, count(stock) as stock  from produtos
group by nome 
order by count(stock) desc

select top 1 loja, count(*) as funcionarios
from repositores
group by loja
order by funcionarios desc
