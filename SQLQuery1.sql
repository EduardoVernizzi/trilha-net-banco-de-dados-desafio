
--1:
SELECT Nome,
		Ano 
FROM Filmes

--2
SELECT * FROM Filmes 
	ORDER BY Ano Asc

--3
SELECT Nome,
		Ano,
		Duracao
		FROM Filmes
		WHERE Nome = 'De volta para o Futuro'

--4
SELECT Nome, Ano, Duracao FROM Filmes
		 WHERE Ano = 1997

--5
SELECT Nome, Ano, Duracao FROM Filmes
		 WHERE Ano > 2000

--6
SELECT Nome, Ano, Duracao FROM Filmes
		 WHERE Duracao > 100 AND Duracao < 150
		 ORDER BY Duracao Asc

--7 
SELECT Ano,
	   COUNT(*) Quantidade FROM Filmes
	   GROUP BY Ano
	   ORDER BY Quantidade Desc

--8
SELECT PrimeiroNome,
	   UltimoNome,
	   Genero From Atores
	   WHERE Genero = 'M'

--9
SELECT * From Atores
	   WHERE Genero = 'F'
	   ORDER BY PrimeiroNome

--10
SELECT f.Nome, 
	   g.Genero From FilmesGenero fg
	   INNER JOIN Filmes f ON f.Id = fg.IdFilme
	   INNER JOIN Generos g ON g.Id = fg.IdGenero

	   SELECT * FROM Filmes
	   SELECT * FROM FilmesGenero
	   SELECT * FROM Generos

--11
SELECT f.Nome 
	   From FilmesGenero fg
	   INNER JOIN Filmes f ON f.Id = fg.IdFilme
	   INNER JOIN Generos g ON g.Id = fg.IdGenero
	   WHERE Genero = 'Mistério'

--12
SELECT f.Nome,
       a.PrimeiroNome,
       a.UltimoNome,
       e.Papel
       FROM ElencoFilme e
       INNER JOIN Atores a  ON e.IdAtor = a.Id
       INNER JOIN Filmes f ON e.IdFilme = f.Id

	   