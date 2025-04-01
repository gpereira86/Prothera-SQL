-- 4 - Elabore instruções SQL para listar:

-- 👉 Listagem de pessoas em ordem alfabética de nome.
SELECT * FROM Pessoas ORDER BY Nome;
SELECT '-------------------------------', NULL;

-- 👉 Listagem de pessoas com idade entre 20 e 60 anos.
SELECT * FROM Pessoas WHERE Idade BETWEEN 20 AND 60 ORDER BY Idade;
SELECT '-------------------------------', NULL;

-- 👉 Listagem de pessoas que não possuem CPF.
SELECT p.* 
FROM Pessoas p
LEFT JOIN Documentos d ON p.ID = d.ID AND d.Tipo = 'CPF'
WHERE d.ID IS NULL;
SELECT '-------------------------------', NULL;

-- 👉 Pessoas de sobrenome Soares.
SELECT * FROM Pessoas WHERE Nome LIKE '% Soares';
SELECT '-------------------------------', NULL;

-- 👉 Listagem de tipos de documentos.
SELECT 
    Tipo, 
    (SELECT Descricao 
     FROM Documentos d2 
     WHERE d2.Tipo = d1.Tipo AND d2.Descricao IS NOT NULL 
     LIMIT 1) AS Descricao
FROM Documentos d1
GROUP BY Tipo;
SELECT '-------------------------------', NULL;
