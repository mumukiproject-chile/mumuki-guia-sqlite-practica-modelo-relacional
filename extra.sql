CREATE TABLE usuarios (id_usuario INTEGER PRIMARY KEY, 
  nombre_usuario TEXT, 
  foto_perfil_url TEXT);

CREATE TABLE seguidores (id_seguidor INTEGER NOT NULL, 
  id_seguido INTEGER NOT NULL, 
  FOREIGN KEY (id_seguidor) REFERENCES usuarios(id_usuario) ON DELETE CASCADE, 
  FOREIGN KEY (id_seguido) REFERENCES usuarios(id_usuario) ON DELETE CASCADE, 
  PRIMARY KEY (id_seguidor, id_seguido));

CREATE TABLE publicaciones (id_publicacion INTEGER PRIMARY KEY, 
  foto_video_url TEXT, 
  id_duenio INTEGER NOT NULL, 
  fecha TEXT NOT NULL,
  es_temporal INTEGER NOT NULL CHECK (es_temporal IN (0,1)),
  FOREIGN KEY (id_duenio) REFERENCES usuarios(id_usuario) ON DELETE CASCADE);

CREATE TABLE likes (id_publicacion INTEGER NOT NULL, 
  id_stalker INTEGER NOT NULL, 
  FOREIGN KEY (id_publicacion) REFERENCES publicaciones(id_publicacion) ON DELETE CASCADE, 
  FOREIGN KEY (id_stalker) REFERENCES usuarios(id_usuario) ON DELETE CASCADE, 
  PRIMARY KEY (id_publicacion, id_stalker));

CREATE TABLE comentarios (id_publicacion INTEGER NOT NULL, 
  id_stalker INTEGER NOT NULL, 
  comentario TEXT,
  FOREIGN KEY (id_publicacion) REFERENCES publicaciones(id_publicacion) ON DELETE CASCADE, 
  FOREIGN KEY (id_stalker) REFERENCES usuarios(id_usuario) ON DELETE CASCADE, 
  PRIMARY KEY (id_publicacion, id_stalker));

INSERT INTO usuarios 
  VALUES (1, "valen_s", "fotogram.com/images/id=10"),
  (2, "stephanie_d", "fotogram.com/images/id=11"), 
  (3, "mariano_di", "fotogram.com/images/id=12"),
  (4, "an_she", "fotogram.com/images/id=13"),
  (5, "yon_g", "fotogram.com/images/id=14");
  
INSERT INTO seguidores 
  VALUES (1, 2),
  (1,3),
  (1,5),
  (2,1), 
  (2,5),
  (5,1),
  (5,4);

INSERT INTO publicaciones 
  (foto_video_url, id_duenio, fecha, es_temporal)
  VALUES ("fotogram.com/images/id=1", 1, date("now"), 0),
  ("fotogram.com/images/id=2", 1, date("now"), 1),
  ("fotogram.com/videos/id=3", 1, date("now", "-1 days"), 0),
  ("fotogram.com/images/id=4", 2, date("now", "-1 days"), 1),
  ("fotogram.com/images/id=5", 5, date("now", "-3 days"), 0),
  ("fotogram.com/videos/id=6", 5, date("now", "-1 days"), 0),
  ("fotogram.com/videos/id=7", 5, date("now", "-1 days"), 1),
  ("fotogram.com/images/id=8", 5, date("now"), 0),
  ("fotogram.com/images/id=9", 5, date("now"), 1);

INSERT INTO likes 
  (id_publicacion, id_stalker) 
  VALUES (1, 1),
  (1, 2), 
  (1, 3),
  (3, 1),
  (3, 5), 
  (6, 1),
  (6, 2), 
  (6, 3),
  (6, 4),
  (6, 5);

INSERT INTO comentarios 
  (id_publicacion, id_stalker, comentario)
  VALUES (1, 2, "Hermoso paisaje amiga! :)"), 
  (1, 1, "Gracias @stephanie_d, nos vemos a la vuelta ;)"),
  (4, 1, "Los quiero, pásenla lindo!!! <3"),
  (6, 5, "Gracias a todos los que nos acompañaron en este éxito"),
  (6, 2, "Son unos genios, me encantó la serie! Sigan así :)"),
  (6, 1, "Geniooo, felicitaciones"), 
  (6, 4, "Increíble :O");
  
  
  
/*
CREATE TRIGGER borrar_dependientes_de_publicaciones
  BEFORE DELETE ON publicaciones
  FOR EACH ROW BEGIN
      DELETE from likes WHERE id_publicacion = OLD.id_publicacion;
      DELETE from comentarios WHERE id_publicacion = OLD.id_publicacion;
  END;
  

CREATE TRIGGER borrar_dependientes_de_usuarios
  BEFORE DELETE ON usuarios
  FOR EACH ROW BEGIN
      DELETE from likes WHERE id_stalker = OLD.id_usuario;
      DELETE from comenetarios WHERE id_publicacion = OLD.id_usuario;
      DELETE from seguidores WHERE id_seguidor = OLD.id_usuario OR id_seguido = OLD.id_usuario;
      DELETE from publicaciones WHERE id_publicacion = OLD.id_usuario;
      
  END;  
*/