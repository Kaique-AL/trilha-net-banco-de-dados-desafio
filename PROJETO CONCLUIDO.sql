--1
SELECT 
	Nome,
	Ano
FROM Filmes

--2
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano ASC;

--3
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'DE VOLTA PARA O FUTURO'

--4
SELECT 
	Nome,
	Ano
FROM Filmes
WHERE Ano = 1997

--5
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano >= 2000

--6
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

--7
SELECT Ano, COUNT(*) AS QUANTIDADE
FROM Filmes
GROUP BY Ano
ORDER BY MIN(Duracao) ASC;

--8
SELECT 
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M'

--9
SELECT 
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT * FROM Filmes

SELECT * FROM Generos

SELECT * FROM FilmesGenero

SELECT 
	f.Nome,
	g.Genero
FROM Filmes F
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id

--11
SELECT 
	f.Nome,
	g.Genero
FROM Filmes F
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
WHERE Genero = 'MISTÉRIO'

--12
SELECT f.nome AS nome_filme, 
       a.PrimeiroNome, 
       a.UltimoNome, 
       ef.papel
FROM filmes f
INNER JOIN ElencoFilme ef ON f.id = ef.IdFilme
INNER JOIN atores a ON ef.IdAtor = a.id;
