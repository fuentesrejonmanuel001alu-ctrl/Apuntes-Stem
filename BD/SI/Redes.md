1. Explique brevemente las funciones de cada una de las capas del modelo de comunicación de datos TCP/IP
Para el modelo TCP/IP, aunque tu boletín se centra mucho en el modelo OSI de 7 capas , en el mundo real (y en los exámenes de Ingeniería Informática ) se suele resumir en estas 4 o 5 capas principales:
+2


Capa de Aplicación: Es la interfaz con el usuario y donde residen los protocolos que usamos a diario (HTTP para web, SMTP para correo). Proporciona servicios de red a las aplicaciones del usuario.
+4


Capa de Transporte (TCP/UDP): Se encarga de la comunicación extremo a extremo. Segmenta los datos y, si usa TCP, asegura que lleguen sin errores y en orden (servicio orientado a conexión y confirmado).
+3


Capa de Internet/Red (IP): Su función principal es el encaminamiento. Se encarga de poner las direcciones IP de origen y destino para que los paquetes sepan qué ruta seguir a través de los nodos intermedios.
+3


Capa de Enlace de Datos: Organiza los bits en tramas y gestiona el acceso al medio físico. Detecta errores en la transmisión física.
+4


Capa Física: Define las características del medio (cable, fibra, aire) y se encarga de transmitir los bits puros como señales eléctricas o radio.
+1

2. Si la unidad de datos de protocolo en la capa de enlace se llama trama y la unidad de datos de protocolo en la capa de red se llama paquete, ¿son las tramas las que encapsulan los paquetes o son los paquetes los que encapsulan las tramas? Explicar la respuesta.

Esta es una de las preguntas clave sobre el funcionamiento de las capas, y la respuesta se basa en el orden en que se procesa la información al bajar por el modelo de comunicación.

Según tu boletín de ejercicios:


Las tramas son las que encapsulan los paquetes.


Explicación del emisor: La información de la capa de enlace se incorpora en el emisor después que la de la capa de red. Por tanto, la capa de enlace "envuelve" (encapsula) lo que le llega de la capa superior.


Explicación del receptor: En los nodos intermedios y en el receptor, se identifica primero el contenido de la capa de enlace (la trama). Al abrirla, se descubre su contenido interno, que comienza con la información de la capa de red (el paquete).

Es como un sistema de muñecas rusas o sobres: el paquete es la carta, y la trama es el sobre que contiene esa carta para que pueda ser enviada físicamente por la red.

5. ¿Qué diferencia, en el contexto de una red de computadores, existe entre la tecnología de difusión y la tecnología punto a punto? y fuera del contexto de redes de computadores, dime 2 ejemplos de comunicaciones por difusión y otros dos de punto a punto

Diferencia en redes de computadores

Tecnología de difusión: Los datos se envían a todos los dispositivos de la red. Esto suele ocurrir porque el medio de comunicación es compartido (como el aire en el Wi-Fi). Son los propios dispositivos los que escuchan todo y deciden si el paquete es para ellos o lo descartan.
+1


Tecnología punto a punto: Se establece un medio dedicado exclusivamente para la comunicación entre dos dispositivos. En este caso, no hay pérdida de tiempo filtrando: todos los datos en ese medio tienen un destino implícito.

Ejemplos fuera del contexto de redes
Siguiendo los criterios de clasificación de tu material:
+3

Comunicaciones por difusión (Broadcast):


Radio y TV: La antena emite la señal para toda una ciudad y cualquiera con un receptor puede sintonizarla.
+1

Megafonía de una estación: El mensaje se lanza para todos los pasajeros, aunque solo le interese al que va en el tren de las 10:00.

Comunicaciones punto a punto:

Llamada telefónica tradicional: Se establece un circuito dedicado entre tu teléfono y el de la otra persona.

Teléfono de vasos (el juego infantil): El hilo conecta directamente dos puntos; lo que digas en un extremo solo llega al otro.

6. Un sistema tiene una jerarquía de protocolos de n capas. Las aplicaciones generan mensajes de M bytes de longitud. En cada capa se añade una cabecera de h bytes. ¿Qué fracción del ancho de banda de la red se llena con cabeceras? Aplique el resultado a una conexión a 512 Kbps con tamaño de datos de 1500 Bytes y 4 capas, cada una de las cuales añade 64 Bytes de cabecera. La fracción del ancho de banda que se llena con cabeceras es (tomando únicamente dos decimales y redondeando con el tercero):

Este ejercicio es fundamental para entender la eficiencia de una red, es decir, cuánto espacio perdemos en "etiquetas" (cabeceras) frente a los datos reales que queremos enviar.Según tu boletín de ejercicios, la resolución es la siguiente:1. La Fórmula GeneralLa fracción del ancho de banda ocupada por las cabeceras se calcula dividiendo el tamaño total de todas las cabeceras entre el tamaño total del paquete (datos + cabeceras):+1$$\text{Fracción} = \frac{n \times h}{(n \times h) + M}$$Donde:$n$: número de capas.$h$: bytes de cabecera por capa.$M$: longitud del mensaje original en bytes.2. Aplicación a los datos del problemaSustituimos los valores proporcionados en el enunciado:$n = 4$ capas.$h = 64$ Bytes por capa.$M = 1500$ Bytes de datos.Cálculo:$$\text{Fracción} = \frac{4 \times 64}{(4 \times 64) + 1500} = \frac{256}{256 + 1500} = \frac{256}{1756} \approx 0,14578...$$3. Resultado FinalSiguiendo la instrucción de redondear con el tercer decimal para dejar solo dos:La fracción del ancho de banda que se llena con cabeceras es: 0,15 (o un 15%).Esto significa que, de cada 100 bits que viajan por el cable, 15 bits son solo control y 85 bits son el mensaje real.

8. Cuando se intercambia un fichero entre dos hosts se pueden seguir dos estrategias de confirmación. En la primera, el fichero se divide en paquetes que se confirman individualmente por el receptor, pero el fichero en conjunto no se confirma. En la segunda, los paquetes individuales no se confirman individualmente, es el fichero entero el que se confirma cuando llega completo. Discutir las dos opciones

Esta es una discusión clásica sobre la eficiencia y la fiabilidad en la transmisión de datos. Según el material de tu boletín, aquí tienes la comparativa de las dos estrategias:

Estrategia 1: Confirmación individual de paquetes

En esta opción, solo es necesario retransmitir aquellos paquetes específicos del fichero que no lleguen correctamente al destino.

Es la estrategia más robusta en redes con una tasa de error alta, ya que no se pierde el progreso del envío de las partes que sí llegaron bien.

Estrategia 2: Confirmación del fichero completo

En esta opción, si uno o varios de los paquetes no llegan correctamente, se debe retransmitir el fichero entero desde el principio.

Esto supone un consumo innecesario de ancho de banda si la red es inestable. Sin embargo, puede ser más rápida en redes muy fiables al reducir el número de mensajes de confirmación (ACK) que saturan el canal.

Resumen para tu examen: La primera opción es más eficiente en cuanto al uso de recursos cuando hay errores, mientras que la segunda opción es muy arriesgada porque un solo fallo obliga a repetir todo el trabajo.

9. Clasifique como difusión o punto a punto cada uno de los siguientes sistemas de transmisión: a. Radio y TV b. Redes inalámbricas (WLAN) c. ADSL d. Redes de Cable. e. conexión WIFI

Basándote en la clasificación oficial de tu boletín de ejercicios, aquí tienes la resolución para cada sistema de transmisión:

a. Radio y TV: Se clasifican como difusión. La señal se emite desde una antena central y llega a todos los receptores en su área de cobertura.
+1

b. Redes inalámbricas (WLAN): Se clasifican como difusión. Al utilizar un medio compartido (el aire), los datos se difunden a todos los dispositivos cercanos.
+1

c. ADSL: Se clasifica como punto a punto. Establece un canal dedicado entre el hogar del usuario y la central telefónica.
+2

d. Redes de Cable: Pueden ser tanto de difusión como punto a punto. Depende de la arquitectura de la red, ya que a menudo el medio físico se comparte entre varios vecinos (difusión), pero se pueden establecer canales lógicos dedicados (punto a punto).
+2

e. Conexión WIFI: Al igual que las WLAN, se clasifica como difusión. Es la tecnología de difusión por excelencia en redes locales actuales.

10. Clasifique los siguientes servicios como orientados a conexión / no orientados a conexión y confirmados /sin confirmación. Justifique la respuesta. a. Correo postal ordinario b. Correo certificado c. Envío y recepción de fax d. Conversación telefónica

Para clasificar estos servicios, nos basamos en si requieren establecer una sesión previa (orientación a conexión) y si el emisor recibe un acuse de recibo de que los datos llegaron correctamente (confirmación).

Según tu boletín de ejercicios, la clasificación es la siguiente:

a. Correo postal ordinario: Es un servicio no orientado a conexión y no confirmado.


Justificación: Depositas la carta en el buzón sin hablar con el receptor antes y no recibes ninguna notificación de que ha sido entregada.

b. Correo certificado: Es un servicio no orientado a conexión pero confirmado.


Justificación: No hay una conexión previa establecida, pero el emisor recibe un documento firmado (confirmación) una vez que el receptor lo acepta.

c. Envío y recepción de fax: Es un servicio orientado a conexión y confirmado.


Justificación: Las máquinas deben "saludarse" y establecer una línea de comunicación antes de transmitir, y al finalizar, la máquina emisora imprime un reporte de envío correcto.

d. Conversación telefónica: Es un servicio orientado a conexión y confirmado.


Justificación: Es necesario realizar una llamada (establecer conexión) y la respuesta del interlocutor sirve como confirmación implícita de que el mensaje está llegando.


Nota extra de tu PDF: Tu boletín también incluye la domiciliación bancaria y la solicitud de certificado de empadronamiento, clasificándolas como no orientadas a conexión y confirmadas.

Ejercicio extra:
7. ¿Cuál es el tiempo necesario en enviar un paquete de 1000 Bytes, incluidos 50 Bytes de cabecera, por un enlace de 100 Mbps y 10Km? ¿cuál es el tiempo mínimo desde que se envía hasta que se recibe confirmación? ¿qué relación hay entre este tiempo y los temporizadores en, por ejemplo, las capas de enlace y transporte?

Para resolver este ejercicio, utilizaremos las fórmulas de retardo de transmisión y propagación que aparecen en tu boletín.+31. Tiempo necesario para enviar el paquete ($T_{total}$)El retardo total para que el paquete llegue al destino es la suma del tiempo que tarda el equipo en "empujar" los bits al cable ($T_t$) y el tiempo que tardan esos bits en viajar por el medio ($T_p$).+1Retardo de Transmisión ($T_t$):$$T_t = \frac{\text{Paquete (Bytes)} \times 8 \text{ bits/B}}{\text{Velocidad (bps)}} = \frac{1000 \text{ B} \times 8}{100 \cdot 10^6 \text{ bps}} = 0,00008 \text{ s} = \mathbf{80 \text{ } \mu s}$$Retardo de Propagación ($T_p$): Usando la velocidad de la luz en el medio ($2 \cdot 10^8 \text{ m/s}$) indicada en tu boletín:
$$T_p = \frac{\text{Distancia (m)}}{\text{Velocidad propagación (m/s)}} = \frac{10000 \text{ m}}{2 \cdot 10^8 \text{ m/s}} = 0,00005 \text{ s} = \mathbf{50 \text{ } \mu s}$$Tiempo total de envío: $T_t + T_p = 80 + 50 = \mathbf{130 \text{ } \mu s}$.2. Tiempo mínimo hasta recibir la confirmación (RTT)Para recibir la confirmación, el receptor debe procesar el paquete y enviar un ACK de vuelta. Suponemos el procesamiento despreciable para el tiempo mínimo. El ACK solo tiene cabecera (50 Bytes).+2Retardo Transmisión ACK ($T_{ACK}$):$$T_{ACK} = \frac{50 \text{ B} \times 8}{100 \cdot 10^6 \text{ bps}} = \mathbf{4 \text{ } \mu s}$$Retardo de Propagación del ACK: Es el mismo que el del paquete de datos ($50 \text{ } \mu s$).Tiempo mínimo total:$$T = T_t + T_p (\text{ida}) + T_{ACK} + T_p (\text{vuelta}) = 80 + 50 + 4 + 50 = \mathbf{184 \text{ } \mu s}$$3. Relación con los temporizadoresUn temporizador de control de flujo (en capa de enlace o transporte) debe ser suficientemente mayor a este tiempo mínimo ($184 \text{ } \mu s$).Por qué: Para evitar reenvíos innecesarios si hay congestión o ligeros retrasos en el procesamiento. Si el temporizador expira antes de que el ACK pueda llegar físicamente, el emisor duplicaría paquetes sin necesidad.

11. Queremos enviar un archivo de 1500 bytes usando paquetes de 1000 bytes por un enlace de 100 Mbps entre dos torres situadas a 20 Km de distancia. Teniendo en cuenta que las cabeceras ocupan 50 bytes (también por tanto los paquetes de confirmación), ¿Cuánto tiempo tardaremos en enviar el primer paquete? ¿Cúanto tiempo tardaremos (desde que comienza el primer envío, si no hay errores) en recibir la confirmación del correcto envío de todos los paquetes?

Este es el ejercicio final que combina fragmentación, retardos y confirmaciones (ACKs). Siguiendo la metodología de tu boletín de la Universidad de Granada, vamos a desglosarlo paso a paso.+11. Fragmentación del archivoPrimero debemos saber en cuántos paquetes se divide el archivo de 1500 bytes.Tamaño del paquete (MTU): 1000 bytes.Cabecera: 50 bytes.Datos útiles por paquete: $1000 - 50 = 950$ bytes.Número de paquetes: Para enviar 1500 bytes, necesitamos $\frac{1500}{950} = 1,57 \rightarrow \mathbf{2 \text{ paquetes}}$.Paquete 1: 950 bytes de datos + 50 bytes cabecera = 1000 bytes.Paquete 2: 550 bytes de datos + 50 bytes cabecera = 600 bytes.2. Cálculo de retardos baseAplicamos las fórmulas de tu boletín:+2Retardo de Propagación ($T_p$): Para 20 km a una velocidad de $2 \cdot 10^8$ m/s:
$$T_p = \frac{20.000 \text{ m}}{2 \cdot 10^8 \text{ m/s}} = 0,0001 \text{ s} = \mathbf{100 \text{ } \mu s}$$Retardo de Transmisión del Paquete 1 ($T_{t1}$ - 1000 B):$$T_{t1} = \frac{1000 \text{ B} \times 8}{100 \cdot 10^6 \text{ bps}} = 0,00008 \text{ s} = \mathbf{80 \text{ } \mu s}$$Retardo de Transmisión del Paquete 2 ($T_{t2}$ - 600 B):$$T_{t2} = \frac{600 \text{ B} \times 8}{100 \cdot 10^6 \text{ bps}} = 0,000048 \text{ s} = \mathbf{48 \text{ } \mu s}$$Retardo de Transmisión del ACK ($T_{ACK}$ - 50 B):$$T_{ACK} = \frac{50 \text{ B} \times 8}{100 \cdot 10^6 \text{ bps}} = 0,000004 \text{ s} = \mathbf{4 \text{ } \mu s}$$3. Respuestas al ejercicioA) ¿Cuánto tiempo tardaremos en enviar el primer paquete?
Es el tiempo desde que sale el primer bit hasta que el receptor recibe el último bit del primer paquete:
$$T_{envio1} = T_{t1} + T_p = 80 \text{ } \mu s + 100 \text{ } \mu s = \mathbf{180 \text{ } \mu s}$$B) ¿Cuánto tiempo tardaremos en recibir la confirmación de todos los paquetes?
Suponiendo una estrategia de confirmación individual (paquete a paquete) como en los ejemplos de tu PDF, el tiempo total es la suma de los dos ciclos (envío + ACK):+1Ciclo Paquete 1: $T_{t1} + 2 \cdot T_p + T_{ACK} = 80 + 200 + 4 = 284 \text{ } \mu s$.Ciclo Paquete 2: $T_{t2} + 2 \cdot T_p + T_{ACK} = 48 + 200 + 4 = 252 \text{ } \mu s$.Tiempo Total: $284 + 252 = \mathbf{536 \text{ } \mu s}$.Nota: Si tu profesor considera que el segundo paquete no se envía hasta recibir el ACK del primero (parada y espera), este es el resultado correcto.