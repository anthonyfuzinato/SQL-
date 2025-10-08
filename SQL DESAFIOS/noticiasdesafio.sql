/*Anthony Fuzinato Nº01  12ºH*/

Select Titulo, texto
From T_Noticias

Select DISTINCT Categoria
From T_Noticias

Select ID, 0.10 as Valor_Ganho
From T_Noticias

Select Nome
From T_Jornais

Select ID_Noticia,Data,Hora
From T_Comentários
Where ID_Noticia = '1'
Order by Data desc

Select ID,N_leituras
From T_Noticias
Where N_leituras > 100 and N_leituras < 200

Select Autor, COUNT(*)
From T_Noticias
Where Autor = 'Anonimo'
group by Autor

Select DISTINCT Autor
From T_Noticias

Select titulo,N_leituras
from T_Noticias
order by N_leituras DESC

Select Nome,Pais
From T_Jornais
Where Pais != 'Portugal'

Select Texto
From T_Noticias
Where Texto like '%FC Porto%'

select TOP 3 titulo,N_leituras
From T_Noticias
Order by N_leituras DESC

Select AVG(Preco)
From T_Jornais

Select ID_KeyWord
From T_KeyWords
Where Id_Noticia = '9'

Select SUM(N_leituras), Jornal
From T_Noticias
Where Jornal = 'A bola'
group by Jornal

Select Nome,Pais,Preco
From T_Jornais
Order by Preco ASC

Select top 1 Nome, Preco
From T_Jornais
Order by Nome DESC

Select Titulo, Texto, Tipo
From T_Noticias
inner join T_Jornais
on T_Noticias.Jornal = T_Jornais.Nome
WHERE TIPO = 'GENERALISTA'

Select Titulo,Texto, Palavra
From T_Noticias
inner join T_KeyWords
on T_Noticias.Id = T_KeyWords.Id_Noticia
WHere Palavra = 'futebol' 

