--1 - Buscar nomes e anos dos filmes
SELECT Nome, Ano 
FROM Filmes

--2 - Buscar os nome e anos dos filmes, ordenados por ordem cresente pelo ano
SELECT Nome, Ano 
FROM Filmes 
ORDER BY Ano asc

--3 - Buscar o filme De volta para o futuro, trazendo o nome, ano e duracao
SELECT Nome, Ano, Duracao 
FROM Filmes 
WHERE Nome = 'De volta para o futuro';

--4 - Buscar os filmes lancados em 1997
SELECT * 
FROM Filmes 
WHERE Ano = 1997

--5 - Buscar os filmes lancadis apos o ano 2000
SELECT * 
FROM Filmes 
WHERE Ano > 2000

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenado pela duracao em ordem crescente
SELECT Nome, Duracao 
FROM Filmes 
WHERE Duracao > 100 AND Duracao < 150 
ORDER BY Duracao ASC;

--7 - Buscar a quantidade de filmes lancados no ano, agrupando por ano, ordenado pela duracao em ordem decresente
SELECT Ano, COUNT(*) AS QuantidadeFilmes 
FROM Filmes 
GROUP BY Ano 
ORDER BY Ano DESC;

--8 - Buscar os Ators do genero masculino, retornando o PrimeiroNome, UltimoNome
SELECT Id, PrimeiroNome, UltimoNome, Genero 
FROM Atores 
WHERE Genero = 'M';

--9 - genero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome 
SELECT Id, PrimeiroNome, UltimoNome, Genero 
FROM Atores 
WHERE Genero = 'F' 
ORDER BY PrimeiroNome;

--10 - Buscar os nomes dos filmes e os generos
SELECT f.Nome AS NomeFilme, g.Genero AS NomeGenero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id;

--11 - Buscar o nome do filme e o genero do tipo "Misterio"
SELECT F.Nome AS Nomefilme, Gen.Genero NomeGenero
FROM Filmes AS F
JOIN FilmesGenero AS FG ON F.Id = FG.IdFilme
JOIN Generos AS Gen ON FG.IdGenero = Gen.Id
WHERE Gen.Id = 10;

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT f.Nome AS NomeFilme, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Filmes f
JOIN ElencoFilme ef ON f.Id = ef.IdFilme
JOIN Atores a ON ef.IdAtor = a.Id;
