Con todo esto ya podemos seguir a quien queramos. :tada:

> Inserta en la tabla que corresponda los datos que indiquen que ahora `an_she` sigue a `mariano_di`.

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
    "seguidores": {
      "id_seguidor": {
        "type": "Integer",
        "pk": true,
        "fk": {
          "to": { "entity": "usuarios", "column": "id_usuario" },
          "type": "many_to_one"
        }
      },
      "id_seguido": {
        "type": "Integer",
        "pk": true,
        "fk": {
          "to": { "entity": "usuarios", "column": "id_usuario" },
          "type": "many_to_one"
        }
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