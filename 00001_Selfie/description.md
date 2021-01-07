Fotogram es una aplicación donde cada usuario puede publicar fotos y videos.

Con eso ya podemos armar este modelo inicial:

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

Observamos del DER que:

1. Cada usuario tiene un nombre y una foto de perfil.
2. Un usuario puede tener muchas publicaciones, pero hay de dos tipos:
  * Publicaciones temporales, más conocidas como "historias", que solo duran un día.
  * Publicaciones fijas, que obviamente no son temporales y duran para siempre (a menos que el dueño las borre... :stuck_out_tongue_winking_eye:).

Por último, existe la función `DATE('AAAA-MM-DD')`, que recibe un _string_ con el formato que ves y devuelve la fecha correspondiente. 

> Elimina las publicaciones con fecha anterior al 2 de enero de 2018.