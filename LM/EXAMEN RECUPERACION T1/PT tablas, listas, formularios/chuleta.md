LISTAS

Aquí tienes la chuleta de tipos para <ol> 🔢: <ol type="">

1: Números normales (1, 2, 3...)

a: Letras minúsculas (a, b, c...)

A: Letras mayúsculas (A, B, C...)

i: Números romanos en minúscula (i, ii, iii...)

I: Números romanos en mayúscula (I, II, III...)

Además de type, existen dos atributos útiles ⚙️:

start: Para indicar el número exacto por el que empieza (como el 33 de tu ejercicio).

reversed: Si quieres que la lista cuente hacia atrás (3, 2, 1).


En listas desordenadas (<ul>), los valores más comunes son 🔘: 
<ul style="list-style-type:circle">

disc: Círculo relleno (el que sale siempre por defecto).

circle: Círculo hueco (el que pide tu ejercicio para los ítems).

square: Cuadrado relleno (el que pide tu ejercicio para los personajes).

none: Quita cualquier viñeta.

_______________________________________________________________________________________


TABLAS


Empieza en body después de estructura principal

table con border dice grosor

thead línea principal, cabecera

tr es lo que va en cada fila, se abre y se cierra por cada una

th la negrita

td escritura normal en cada casilla

rowspan + nº las filas que queremos ocupar

colspan + nº las columnas que queremos ocupar

align="center"> alineado centro para colspan

_______________________________________________________


FORMULARIO

form etiqueta que engloba el formulario

action indica a dónde se envían los datos (por ejemplo, a una página de agradecimiento). Usamos "#" como un "marcador de posición" cuando todavía no tenemos una página real a la que enviar la información.

label es el texto que el usuario lee. Casi siempre lleva el atributo for, porque este sirve para "pegar" la etiqueta al cuadro de texto. Solo hay una etiqueta <label> por cada elemento de entrada input

input lo que el usuario escribe en el hueco. Tiene que llevar type

type indica al navegador si es texto, número, email o botón. Su lectura de id o name lo identifica

fieldset agrupa elementos dentro de un cuadro

legend título de fieldset, aparece cortando la línea superior del cuadro

checkbox es un input cuyo tipo(type) es marcar una casilla. Atributo for: Siempre debe llevar el mismo nombre que el id del input al que acompaña. Es el "puente" entre el texto y el cuadro.

name, nombre que recibirá el servidor cuando lo reciba

value: Es el valor real que se envía 💎. Por ejemplo, si el usuario marca "Caparazón rojo", el value será "rojo". Es lo que la computadora entiende.

<option value>: Sí, estos van dentro de la etiqueta <select> para crear las opciones del menú desplegable 🔽.

<p> vs <fieldset>: Usamos <p> simplemente para separar los campos y que no queden todos pegados en la misma línea ↕️. El <fieldset> solo se usa cuando quieres agrupar visualmente varias opciones.

<textarea>: Imagina que el input es para una sola palabra y el <textarea> es para escribir una carta completa ✉️. Permite escribir varias líneas de texto, como comentarios o sugerencias.

Rows y Cols: Estos atributos controlan el tamaño visual del cuadro de comentarios (<textarea>) 📐:

rows="4": Define la altura. El cuadro mostrará 4 líneas de texto antes de que aparezca una barra de desplazamiento.

cols="40": Define el ancho. Es un valor aproximado de cuántos caracteres caben en una línea horizontal.

placeholder es un título de agua que lee el usuario y desaparece mientras escribe

minlength="3" maxlength="20" Controla máximo y mñinimo de caracteres
