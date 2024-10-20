--1
select Nome, Ano from Filmes

--2
select Nome, Ano from Filmes order by Ano asc

--3
select Nome, Ano, Duracao from Filmes where Nome = 'De Volta para o Futuro'

--4
select Nome, Ano from Filmes where Ano = 1997

--5
select Nome, Ano from Filmes where Ano > 2000

--6
select Nome, Duracao from Filmes where Duracao > 100 AND Duracao < 150 order by Duracao asc

--7
select Ano, count(*) as Quantidade from Filmes group by Ano order by Quantidade desc

--8
select PrimeiroNome, UltimoNome from Atores where Genero = 'M'

--9
select PrimeiroNome, UltimoNome from Atores where Genero = 'F' order by PrimeiroNome

--10
select f.Nome as NomeFilme, g.Genero from Filmes f
join FilmesGenero fg on f.Id = fg.IdFilme
join Generos g on fg.IdGenero = g.Id

--11
select f.Nome as NomeFilme, g.Genero from Filmes f
join FilmesGenero fg on f.Id = fg.IdFilme
join Generos g on fg.IdGenero = g.Id
where g.Genero = 'Mistério';

--12
select f.Nome as NomeFilme, a.PrimeiroNome, a.UltimoNome, ef.Papel from Filmes f
join ElencoFilme ef on f.Id = ef.IdFilme
join Atores a on ef.IdAtor = a.Id
