UPDATE publicaciones SET fecha=date("2018-03-15");
UPDATE publicaciones SET fecha=date("2017-12-27")  WHERE id_publicacion IN('1','2','8', '9');
UPDATE publicaciones SET fecha=date("2018-01-06")  WHERE id_publicacion = 5;

/*
DELETE FROM likes;
DELETE FROM comentarios;
*/