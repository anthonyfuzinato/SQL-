/*inserir os alunos(nome,datanascimento)
7, 2000/10/10
8, 1999/1/5
9, 2001/2/20*/

/*inserir as disciplinas(nome,nrmodulos,limitefaltas)
4, 19, 12
5, 6, 6
6, 8, 4*/


/*inserir os professores(nome,data_nascimento,genero,grupo)
4,1970/1/10,m,informática
5,1968/2/5,f,5
professor3,1971/3/1,m,6*/


/*inserir as notas(nprocesso_aluno,codigo_disciplina,data,modulo,valor,n_professor) atenção às FK que podem ser diferentes
7, 4, 2017/9/15, 14, 10, 4
8, 4, 2017/9/15, 14, 14, 4
9, 4, 2017/9/15, 14, 13, 4
7, 5, 2017/9/15, 3, 12, 5
8, 5, 2017/9/15, 3, 12, 5
9, 5, 2017/9/15, 3, 12, 5
7, 5, 2017/11/15, 4, 10, 5
8, 5, 2017/11/15, 4, 12, 5
9, 5, 2017/11/15, 4, 11, 5
7, 6, 2017/11/15, 4, 18, 5
8, 6, 2017/11/15, 4, 17, 5
9, 6, 2017/11/15, 4, 16, 5
9, 6, 2017/11/15, 5, 16, 5
*/


/*inserir as seguintes faltas(nprocesso_aluno,codigo_disciplina,data,tipo) atenção às FK que podem ser diferentes
7,4,2017/10/23,J
7,5,2017/10/23,J
8,4,2017/9/25,I
*/


/*listar todos os alunos que nasceram no ano 2000*/
Select *
from aluno
where YEAR(DATANASCIMENTO) = 2000
/*listar todos os alunos com a sua idade ordenados por ordem crescente de idade*/
SELECT *, DATEDIFF(YEAR,DATANASCIMENTO,GETDATE()) AS IDADE
FROM ALUNO
ORDER BY IDADE ASC
/*média das idades*/
SELECT AVG(DATEDIFF(YEAR,DATANASCIMENTO,GETDATE()))
FROM ALUNO
/*número de disciplinas*/
SELECT COUNT(*)
FROM DISCIPLINA
/*lista com nomes de professores e alunos*/

/*nome do professor mais velho e a sua idade*/
SELECT TOP 1 NOME, DATEDIFF(YEAR,DATA_NASCIMENTO,GETDATE()) AS IDADE
FROM PROFESSOR
ORDER BY IDADE
/*número de professores por grupo*/
SELECT COUNT(*)
FROM PROFESSOR
GROUP BY GRUPO
/*número de faltas por tipo*/
SELECT COUNT(*), TIPO
FROM FALTA
GROUP BY TIPO
/*número de faltas por aluno,
mostrar nome do aluno*/
SELECT COUNT(*), NOME
FROM ALUNO
INNER JOIN ALUNO
ON ALUNO.nprocesso = FALTA.nprocesso_aluno

/*listar o valor da nota, o nome do aluno,
o nome da disciplina 
e o nome do professor*/

/*média de notas por disciplina*/

/*média de notas por professor*/

/*nome dos alunos que nunca faltaram*/

/*nome dos professores ordenados 
por ordem descendente da média 
das notas que lançam*/

/*nome dos alunos com média 
de notas superior à média*/

/*número de módulos por fazer por aluno*/

/*número de módulos por fazer por aluno 
por disciplina*/

