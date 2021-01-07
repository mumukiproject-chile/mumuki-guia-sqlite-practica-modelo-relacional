Te dejamos un ejemplo para encontrar a las personas que tienen mascota:

``` sql
SELECT nombre
FROM personas
WHERE tiene_mascota;
```

Como todo _"booleano"_, no es necesario comparar `tiene_mascota` contra `True`, `False`, `0` ó `1`. :stuck_out_tongue_winking_eye: