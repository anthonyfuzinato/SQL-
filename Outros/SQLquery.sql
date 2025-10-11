select nome, defeitos
from produtos
where defeitos is not null

select *
from produtos
where preco = (select min(preco)from produtos)

select *
from produtos
where preco > (select avg(preco)from produtos)

select nome, vencimento
from repositores
where vencimento = (select min(vencimento) from repositores)

select * 
from compras, produtos
where compras.referencia_produto = produtos.referencia

select * 
from compras inner join produtos
on compras.referencia_produto = produtos.referencia

select * 
from compras left join produtos
on compras.referencia_produto = produtos.referencia

select * 
from compras right join produtos
on compras.referencia_produto = produtos.referencia

select compras.* , produtos.nome, repositores.nome
from compras, produtos, repositores
where compras.referencia_produto = produtos.referencia and produtos.repositor = repositores.nif

select * 
from compras right join produtos
on compras.referencia_produto = produtos.referencia
where id_compra is null

select * 
from repositores left join produtos
on repositores.nif = produtos.repositor
where produtos.referencia is null
