1. Capas del modelo TCP/IP

El modelo TCP/IP tiene 4 capas principales (aunque algunos libros usan 5). Aquí tienes sus funciones:

    Aplicación: Es la interfaz con el usuario (HTTP para webs, SMTP para correo). Define los datos que se quieren enviar.

    Transporte (TCP/UDP): Se encarga de la comunicación extremo a extremo. Decide si hay que confirmar la recepción (TCP) y divide el mensaje en segmentos.

    Red / Internet (IP): El "GPS". Se encarga de poner las direcciones IP de origen y destino para que el paquete sepa qué ruta seguir.

    Enlace / Acceso a Red: Se encarga de la transmisión física por el cable o Wi-Fi. Traduce los bits a señales eléctricas o radio.

2. ¿Quién encapsula a quién?

Las tramas encapsulan a los paquetes.

    Explicación: Imagina una muñeca rusa. El paquete (Capa de Red) es la muñeca interior, y la trama (Capa de Enlace) es la muñeca exterior que la envuelve para poder viajar por el cable físico. Cada capa inferior envuelve (encapsula) a la superior.

5 y 9. Difusión vs. Punto a Punto

    Difusión (Broadcast): Un solo emisor envía un mensaje y todos los nodos de la red lo reciben (aunque solo uno lo procese).

        Fuera de redes: Radio y Televisión.

        En redes: Wi-Fi (WLAN) y Redes de Cable (todas las casas comparten el medio).

    Punto a Punto (Unicast): Hay un enlace directo y dedicado entre dos puntos.

        Fuera de redes: Una llamada de teléfono o hablar por un megáfono de hilo.

        En redes: ADSL (va de tu casa a la central) y redes de fibra directa.

6. Fracción de ancho de banda (Cálculo)

    Datos (M): 1500 Bytes.

    Cabeceras totales (n×h): 4 capas×64 Bytes=256 Bytes.

    Tamaño total: 1500+256=1756 Bytes.

Fraccioˊn cabeceras=1756256​=0,1457⋯→0,15

(El 15% del ancho de banda se pierde en "etiquetas").
8. Estrategias de confirmación

    Individual (Paquete a paquete): Es mejor en redes con muchos errores (si falla algo, solo reenvías un trocito), pero es más lenta porque hay mucha espera de confirmaciones.

    En conjunto (Fichero entero): Es más rápida en redes estables, pero si hay un solo error al final, ¡tienes que reenviar el archivo de 1GB entero!

10. Clasificación de Servicios
Servicio	Conexión	Confirmación	Justificación
Correo postal	No orientado	Sin conf.	Lo echas al buzón y te olvidas.
Correo certificado	No orientado	Confirmado	El receptor firma al recibirlo.
Fax	Orientado	Confirmado	Primero "llaman" para establecer línea.
Teléfono	Orientado	Sin conf. (o implícita)	Si no te oyen, te dicen "¿qué?".