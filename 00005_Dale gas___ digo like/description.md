¿Y qué serían de nuestras publicaciones si no supiéramos a cuántas personas les gustó realmente nuestra foto o video?

Agreguemos a nuestro modelo la tabla de likes, entonces :plus1:, con el ID de la publicación a la que pertenecen y el ID del usuario que lo dio. 

> Consulta la cantidad de likes que tuvo la publicación que hizo "valen_s" ayer. Ojo que si es de ayer, entonces no es temporal (de lo contrario, se tendría que haber borrado  :stuck_out_tongue_winking_eye:). Muestra el resultado como `likes_totales`.

Por simplicidad te dejamos solo esta vez el DER sin la tabla de comentarios.

<div
  class='mu-erd'
  data-entities='{
    "likes": {
      "id_publicacion": {
        "type": "Integer",
        "pk": true,
        "fk": {
          "to": { "entity": "publicaciones", "column": "id_publicacion" },
          "type": "many_to_one"
        }
      },
      "id_stalker": {
        "type": "Integer",
        "pk": true,
        "fk": {
          "to": { "entity": "usuarios", "column": "id_usuario" },
          "type": "many_to_one"
        }
      }
    },
    "publicaciones": {
      "id_publicacion": {
        "type": "Integer",
        "pk": true
      },
      "foto_video_url": {
        "type": "Text"
      },
      "id_duenio": {
        "type": "Integer",
        "pk": false,
        "fk": {
          "to": { "entity": "usuarios", "column": "id_usuario" },
          "type": "many_to_one"
        }
      },
      "fecha": {
        "type": "Text"
      },
      "es_temporal": {
        "type": "Integer"
      }
    },
    "usuarios": {
      "id_usuario": {
        "type": "Integer",
        "pk": true
      },
      "nombre_usuario": {
        "type": "Text"
      },
      "foto_perfil_url": {
        "type": "Text"
      }
    }
  }'>
</div>