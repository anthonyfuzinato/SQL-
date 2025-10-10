/*anthony fuzinato nº01  12ºh*/

select iif(charindex(' ',nome) = 0,nome,substring(nome,0,charindex(' ',nome))), clube_atual
from jogadores
where clube_atual = 'f.c.porto'

select nome
from clubes
where datepart(year,getdate()) - ano_formacao > 100

select top 1 nome, ano_formacao
from clubes
order by ano_formacao asc

select nome, nacionalidade
from jogadores
where nacionalidade <> 'portugal'
order by nome asc

select substring(nome,charindex(' ',nome),len(nome))
from clubes
where nome like '%vitória%'

select nome, posicao
from jogadores
where clube_atual = 's.l.benfica' and datediff(year,data_nascimento,getdate()) > 30

select count(*) as [nº de guarda redes]
from jogadores
where posicao = 'guarda redes'

select *
from jogadores
inner join clubes_campeonatos
on clube_atual = clubes_campeonatos.nome_clube
where nacionalidade <> 'portugal' and cod_campeonato like '%liga_zon_sagres_2018%'

select sum(n_jogos)
from historico_jogadores_campeonatos
inner join jogadores
on historico_jogadores_campeonatos.n_jogador = jogadores.n_jogador
where jogadores.nome = 'fábio coentrão'

select cod_campeonato ,avg(n_jogos)
from historico_jogadores_campeonatos
inner join jogadores
on historico_jogadores_campeonatos.n_jogador = jogadores.n_jogador
where jogadores.nome = 'jonas'
group by cod_campeonato

select nome, sum(n_jogos)
from jogadores
inner join historico_jogadores_campeonatos
on jogadores.n_jogador = historico_jogadores_campeonatos.n_jogador
group by jogadores.n_jogador, nome

select data, nome_equipa_visitante,golos_equipa_visitante,golos_equipa_visitada,nome_equipa_visitada
from jogos
where nome_equipa_visitada = 's.l.benfica' and nome_equipa_visitante = 'f.c.porto' or 
nome_equipa_visitante = 's.l.benfica' and nome_equipa_visitada = 'f.c.porto'

select distinct nome
from jogadores
full outer join historico_jogadores_campeonatos
on jogadores.n_jogador = historico_jogadores_campeonatos.n_jogador
where nome_clube = 's.l.benfica' or clube_atual = 's.l.benfica'

select count(*)
from jogos
where (nome_equipa_visitada = 'sporting' or nome_equipa_visitante = 'sporting') and campeonato = 'liga_zon_sagres_2018'

select distinct nome_clube
from clubes_campeonatos
where cod_campeonato like 'liga_zon_sagres%'

select sum(golos_equipa_visitante)
from jogos
where nome_equipa_visitante = 'sporting'

select *
from jogadores
where lesionado = 0 and clube_atual = 'f.c.porto'

select top 1 right(cod_campeonato,4)
from clubes_campeonatos
where nome_clube = 'maritimo'
order by posicao asc

select top 2 nome_clube
from clubes_campeonatos
where cod_campeonato = 'liga_zon_sagres_2017'
order by posicao desc

select *
from jogos
where campeonato = 'liga_zon_sagres_2017'
order by data asc

select *
from clubes_campeonatos
where cod_campeonato like '%2018' and posicao = '1'

select *
from jogos
where espetadores > (select avg(espetadores) from jogos)

select top 3 *
from jogos
order by espetadores desc

select top 2 nome_clube
from clubes_campeonatos
where cod_campeonato = 'liga_zon_sagres_2016'
order by posicao asc

select *
from jogos
where getdate() < data

select data, nome_equipa_visitada, nome_equipa_visitante, estadio
from jogos
where datepart(year,data) = '2017'

select avg(espetadores) as [média de espetadores esta época]
from jogos
where campeonato = 'liga_zon_sagres_2018'

select *
from jogadores
order by clube_atual, posicao asc

select nome, clube_atual
from jogadores
where datediff(year,data_nascimento,getdate()) >= 18 and datediff(year,data_nascimento,getdate()) <= 20

select 2.5*espetadores,*
from jogos
where estadio like '%municipal%'

select abs(golos_equipa_visitada-golos_equipa_visitante)
from jogos
where nome_equipa_visitada = 's.l.benfica' or nome_equipa_visitante = 's.l.benfica'

select nome,datediff(year,data_nascimento,getdate()) as [idade],datediff(year,data_nascimento,getdate())+5 as [idade daqui a 5 anos]
from jogadores

select *
from jogos
where estadio in ('alvalade','dragão','municipal de braga')

select clubes_campeonatos.cod_campeonato,nome_clube
from clubes_campeonatos
inner join campeonatos
on clubes_campeonatos.cod_campeonato = campeonatos.cod_campeonato
where epoca = '2018'
order by divisao,cod_campeonato

select *
from clubes_campeonatos
where nome_clube = 'académico viseu'
