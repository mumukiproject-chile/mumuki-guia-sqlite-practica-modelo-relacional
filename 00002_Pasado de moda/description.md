Muy divertido borrar... Pero como te contamos, solo deberíamos eliminar las _publicaciones temporales_ del día _anterior_.

¿Y cómo saber si una `fecha` es del día anterior? :flushed:
<br>
¡Fácil! Con nuestra querida función `DATE`, que sabe siempre qué día es hoy pidiéndole `DATE('now')`. Y se le pueden mandar otros parámetros, con cantidad de días (`day`), meses (`month`) o años (`year`) para sumar o restar. 

Acá te mostramos un ejemplo para mostrar qué fecha será dentro de un mes:

``` sql
SELECT DATE('now', '+1 month');
```

> Modificá lo que hiciste en el ejercicio anterior, para eliminar las publicaciones de _ayer_ (sí, **todas** las publicaciones; después veremos cómo filtrar las temporales :stuck_out_tongue_winking_eye:)
