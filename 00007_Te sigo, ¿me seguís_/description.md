Como te contamos antes, una tabla puede relacionarse con sí misma. 

Si esa relación es de _muchos a muchos_, para hacer el DER podríamos imaginar que tenemos una tabla `usuarios_1` donde muchos registros se relacionan con muchos registros de otra tabla `usuarios_2`, por lo que necesitamos la famosa _tabla intermedia_ (`seguidores`) para registrar cada combinación existente de seguidores y seguidos. 

<div
  class='mu-erd'
  data-entities='{
    "usuarios_1": {
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
    "seguidores": {
      "id_seguidor": {
        "type": "Integer",
        "pk": true,
        "fk": {
          "to": { "entity": "usuarios_1", "column": "id_usuario" },
          "type": "many_to_one"
        }
      },
      "id_seguido": {
        "type": "Integer",
        "pk": true,
        "fk": {
          "to": { "entity": "usuarios_2", "column": "id_usuario" },
          "type": "many_to_one"
        }
      }
    },
    "usuarios_2": {
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

Pero sabemos que `usuarios_1` es lo mismo que `usuarios_2`, con los mismos campos y hasta los mismos registros. En un caso están funcionando como seguidores, y en el otro como seguidos. 

Así, para evitar esas repeticiones y redundancias, basta con dejar una sola tabla de usuarios y marcar ambas relaciones así:

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
    }
  }'>
</div>

> Consulta los ID de todos los que siguen a "valen\_s".