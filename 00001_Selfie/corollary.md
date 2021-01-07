¡Muy bien! Aprendimos a manejar fechas. :grinning:

Pero en otros motores de bases de datos esto es más sencillo aún, ya que aceptan el _tipo de dato_ `DATE` con el mismo formato que usaste acá. 

SQLite, en cambio, no lo soporta. Por eso tuvimos que dejar la `fecha` como `TEXT` y usar la _función_ `DATE('AAAA-MM-DD')`. :wink: 