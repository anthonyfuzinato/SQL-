select nome, email
from repositores
where email like '%gmail.com'

select nome
from produtos
where rtrim(nome) like 'a___'

select nome, cc
from repositores
where cc like '1[92]%'

select nome, loja
from repositores
where loja like 'viseu%'

select nome
from repositores
where rtrim(nome) like '%carvalho'

select nome, data_nascimento, (datediff(year, data_nascimento,getdate())) as idade
from repositores
order by data_nascimento desc

select nome, data_entrada, (datediff(year, data_entrada,getdate())) as anos_trabalhados
from repositores
order by data_entrada

select avg(preco)
from produtos

select count(*)
from produtos

select count(desconto)
from produtos

select min(preco), nome
from produtos

select (select count(*) from produtos) as [nr produtos], (select count(*) from repositores) as [nr repositores]

select count(fornecedor), fornecedor from produtos
group by fornecedor
order by count(fornecedor) desc

select sum(vencimento) as total from repositores

select avg(vencimento) as media, loja from repositores
group by loja

select count(*) - count(repositor) from produtos

select sum(preco* stock)
from produtos

select loja, avg((datediff(year, data_nascimento,getdate()))) as media_idade
from repositores
group by loja

select sum(stock)
from produtos

select avg(preco), fornecedor
from produtos
group by fornecedor
