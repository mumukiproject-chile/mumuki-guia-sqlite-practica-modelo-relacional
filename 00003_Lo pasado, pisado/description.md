¡Excelente! Solo nos falta un paso... eliminar únicamente las publicaciones **temporales**. :hourglass:

Ya te contamos que podemos diferenciar una historia de una publicación fija por el campo `es_temporal`.

Pero como verás en el DER, ese campo es de tipo `Integer`. Eso es porque SQLite tampoco soporta el tipo de dato `Boolean` (como sí lo hacen otros motores), pero entiende al `0` como un `False` (falso) y al `1` como un `True` (verdadero).

> Dicho esto, modificá la sentencia para eliminar las publicaciones que sean temporales y tengan fecha de ayer.

<div
  class='mu-erd'
  data-entities='{
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
    }
  }'>
</div>
