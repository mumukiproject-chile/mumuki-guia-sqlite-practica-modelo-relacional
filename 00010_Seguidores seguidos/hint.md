Piensa qué tabla maneja a los _seguidores_ y a los _seguidos_, y qué datos necesita de cada uno de ellos. :bust\_in\_silhouette:

Te damos un ejemplo de la lección 2, donde insertábamos en una tabla registros sacados de otra tabla:

``` sql INSERT INTO Denisse (titulos_vistos, temporadas) SELECT titulo, temporadas FROM series_peliculas WHERE id = 5 OR name = "Stranger Things"; ```
