Select count(*)
From alunos
inner join resultados
on alunos.n_processo= resultados.N_Processo

Select count(distinct n_processo)
From resultados

select alunos.nome
from alunos
left join resultados
on alunos.n_processo= resultados.N_Processo
Where pontos is null

Select avg(pontos) as [MediaResultados],turma
From resultados
inner join alunos
on alunos.n_processo = Resultados.N_Processo
group by alunos.turma

Select nome, pontos
From alunos
inner join Resultados on Resultados.N_Processo = alunos.n_processo
where resultados.Pontos > (Select(avg(pontos)) From resultados inner join Alunos on Alunos.n_processo = Resultados.N_Processo where turma = '12H')
order by nome

Select TOP 10 percent nome, pontos
From alunos
inner join Resultados on Resultados.N_Processo = alunos.n_processo
where alunos.turma = '12H'
Order by resultados.pontos DESC, ID

Select nome,resultados.tempo
from alunos
inner join resultados
on alunos.n_processo = resultados.N_Processo

select concat(substring(nome,0,CHARINDEX(' ',nome)),'-', turma,'[',pontos/2 + 5, 'Creditos',']')
From alunos
inner join resultados
on Resultados.N_Processo = alunos.n_processo
where nome like 'Anthony Fuzinato'
