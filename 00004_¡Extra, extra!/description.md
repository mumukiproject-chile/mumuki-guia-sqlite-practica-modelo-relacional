¿Pero qué gracia tiene hacer publicaciones si nuestros amigos o familiares no pueden comentar? :unamused:

¡Agreguemosles comentarios a las publicaciones entonces! :smile: 

<div
  class='mu-erd'
  data-entities='{
    "comentarios": {
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
      },
      "comentario": {
        "type": "Text"
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

Pero es importante mostrar también el nombre de la persona que comentó (así podemos contestarle :stuck_out_tongue_winking_eye:).

> Mostrá, de la publicación con id = 6, todos los comentarios junto con el nombre del usuario que lo realizó.
