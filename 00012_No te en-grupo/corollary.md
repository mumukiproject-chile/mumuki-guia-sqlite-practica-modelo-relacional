¡Ahora sí! :tada: 

En la primera solución, `COUNT(id_seguidor)` cuenta cuántos `id_seguidor` hay, sin importar si se repiten o no. Básicamente, cuenta la cantidad de filas que hay en `seguidores` donde `id_seguidor` no sea nulo. Y devuelve esa cantidad junto con algún `id_seguido` que saque de la misma tabla. 

La segunda solución, en cambio, busca que el `COUNT` cuente **por cada** `id_seguido`. Por eso usamos la sentencia `GROUP BY id_seguido`, que nos permite _agrupar_ los resultados por ese campo. Así, tendremos un resultado distinto para cada `id_seguido`, con la cantidad de seguidores correspondiente. 

Un detalle más: suma todas las cantidades de `seguidores` obtenidas en la última solución, y compara el resultado con la cantidad devuelta en la primera. :stuck\_out\_tongue\_winking\_eye: