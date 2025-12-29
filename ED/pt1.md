***Entornos de Desarrollo - Prueba Técnica 1 : Git y GitHub básico***
 
***Ejercicio 0: Configuración inicial***
***Este paso ya debería estar hecho de los ejercicios realizados en clase, pero si no lo has hecho aún: configura tu nombre y correo electrónico en git para que los commits, push al repositorio online, etc. tengan tus datos. Si no estás segur@, puedes ejecutar git config - -global - -list para ver en la terminal toda tu configuración global.  
Nota: a lo largo de la prueba se pedirá que añadas al commit los comandos utilizados para resolver el ejercicio. A continuación, se presenta un ejemplo de estructura recomendada para que el mensaje de commit quede estructurado en varias líneas:**
XXX XXXXXX -m Eji: 'descripción del cambio" -m "línea utilizada en bash" -m "otra línea" -m "otra línea"
Si por casualidad, al hacer un commit escribes mal el mensaje o lo envias antes de tiempo, puedes corregirlo fácilmente sin necesidad de abrir el editor de texto usando el siguiente comando:
***git commit -- amend -m "Nuevo mensaje corecto de commit"***
 
-Crear el repositorio local

-Abrimos terminal bash (no powershell)

git config --global --list (¿estoy en la lista?)

git config --global user.name "Tu Nombre" VA CON COMILLAS PORQUE HAY ESPACIO

git config --global user.email "tu@email.com" SIN COMILLAS PORQUE NO HAY ESPACIO

git init (como ya hemos clonado el repositorio no ponemos git init, de lo contrario, lo ponemos)

git branch -m master main TRUCO PARA LLAMAR MAIN A LA RAMA PRINCIPAL

***EJERCICIO 1***
#####Ejercicio 1 : Crear el repositorio local
    Usando la terminal (Bash), clona vía HTTPS el repositorio generado al entrar al enlace que te va a facilitar el profesor en GitHub Classroom.
    A continuación, crea una carpeta llamada project dentro del nuevo repositorio, y dentro de esta, tres archivos vacíos llamados
    AboutUs . md, Temp . md y Title. md. Estos archivos contendrán texto muy corto para facilitar practicar con git. ***Cuando los hayas creado agrega área de preparación (staging area) y realiza el commit.***


-Creamos la estructura de carpetas (Bash):

mkdir project

-Entramos en carpeta creada:

cd project

-Creamos los archivos vacíos (Bash):

touch AboutUs.md Temp.md Title.md

-Confirmamos los cambios (Git): 

git add .

git commit -m "Ej1: Estructura inicial" -m "git clone [URL]" -m "mkdir project" -m "touch project/AboutUs.md project/Temp.md project/Title.md"

-COMMIT: paso al punto 2

***EJERCICIO 2***
Ejercicio 2: Eliminar archivos
Resulta que Temp. md no pertenece a este proyecto y lo hemos agregado por error Elimínalo el repositorio usando git (no solo borrándolo manualmente desde el explorador) Cuando lo hayas hecho, realiza un nuevo commit confirmando los cambios. ***A continuación, copia y pega las líneas que has empleado en la terminal Bash para realizar este ejercicio***

Paso 1: Ejecutar en la Terminal

-Borrar el archivo:

git rm project/Temp.md

-Hago el commit ( para confirmar):

git commit -m "Ej2: Eliminado archivo temporal" -m "git rm project/Temp.md"

-COMMIT: doy paso al ejercicio 3

***EJERCICIO 3***

Ejercicio 3 

Crea un encabezado de primer nivel para Title. md con el texto Entornos de Desarrollo. En cuanto al archivo AboutUs . md, crea otro encabezado de primer nivel con el texto Sobre Nosotros y, posteriormente, escribe un única línea de texto que contenga la siguiente descripción del módulo: En el módulo de Entornos de Desarrollo trabajamos con herramientas de control de versiones.
***Cuando termines de editarlo, guarda el archivo, agrega los cambios al staging area y realiza un nuevo commit.***

-Añadimos texto a Title.md y AboutUs.md de manera manual (pinchando en archivo en visual) o en terminal:

echo "# Entornos de Desarrollo" > Title.md "El símbolo # indica que es de primer nivel"

echo "# Sobre Nosotros" > AboutUs.md

echo "En el módulo de Entornos de Desarrollo trabajamos con herramientas de control de versiones." >> AboutUs.md
(Usamos >> para añadir y no sobrescribir lo anterior)

-Escribimos en terminal:

git add .

git commit -m "Ej3: Edición de contenidos de Title.md y AboutUs.md" -m "echo '# Entornos de Desarrollo' > Title.md" -m "echo '# Sobre Nosotros' > AboutUs.md" -m "echo 'En el módulo de Entornos de Desarrollo trabajamos con herramientas de control de versiones.' >> AboutUs.md" -m "git add .

-COMMIT: doy paso al ejercicio 4

EJERCICIO 4

PASO 1: Ejecuto en la TERMINAL (Crear rama)

git checkout -b testing

PASO 2: Edito el archivo de manera manual

Abro el archivo project/AboutUs.md.

-Añado esta línea nueva al final del texto que ya tenía:

echo "Estoy haciendo mi primera prueba técnica de Entornos de Desarrollo usando Git." >> AboutUs.md (en terminal)
Estoy haciendo mi primera prueba técnica de Entornos de Desarrollo usando Git

-Ejecuto en la TERMINAL (Guardar cambios)

git add .

git commit -m "Ej4a: Ampliación en rama testing" -m "git checkout -b testing" -m "echo 'Estoy haciendo mi primera prueba técnica de Entornos de Desarrollo usando Git.' >> AboutUs.md" -m "git add ."

# 1. Volver a la rama principal (master).
git checkout master

# 2. Crear la rama design y cambiarse a ella.
git checkout -b design

# 3. Modificar Title.md (Usando > para SOBRESCRIBIR).
echo "Entornos de desarrollo - Diseño" > Title.md

# 4. Crear el nuevo archivo Style.rrýy y añadirle la línea.
echo "Color azul" > Style.rrýy

# 5. Preparar y Commitear los cambios de design (documentando todas las líneas usadas).
git add .
git commit -m "Ej4b: Modificación de Title.md y creación de Style.rrýy en design" -m "git checkout master" -m "git checkout -b design" -m "echo 'Entornos de desarrollo - Diseño' > Title.md" -m "echo 'Color azul' > Style.rrýy" -m "git add ."

-COMMIT: paso al ejercicio 5

EJERCICIO 5

***Ejercicio 5: Situación de conflicto***

Cámbiate de nuevo a la rama principal (master o main). Edita el archivo Title.md y cambia el encabezado por: Entornos de Desarrollo - Principal

Guarda el archivo, agrega los cambios al staging area y realiza un commit.

***Este cambio servirá para provocar un pequeño conflicto másadelante cuando unamos las ramas.***

-Vuelvo a la rama principal

-Volvemos a la rama principal (master)

git checkout master

-Modificamos Title.md para sobrescribir el encabezado (o manual o en terminal)

echo "# Entornos de Desarrollo - Principal" > Title.md

git commit -m "Ej5: Modificación de Title.md en rama master para provocar conflicto" -m "git checkout master" -m "echo '# Entornos de Desarrollo - Principal' > Title.md" -m "git add ."

COMMIT: paso al punto 6

**EJERCICIO 6**

Ejercicio 6: Fusión y aparición de conflictos.
Desde la rama principal, intenta incorporar los cambios de la rama design usando el comando de fusión merge. Al hacerlo, es posible que aparezca un conflicto en el archivo Title. md, ya que ambas ramas han modificado la misma línea de texto.
Observa en el archivo las marcas de conflicto  >>>>>>>). En este caso, deberás conservar la versión que proviene de la **rama design ya que será la base para continuar con el siguiente ejercicio.**

-Intento fusionar (Aquí sale el error buscado):

git merge design

-Resolver el Conflicto en Title.md
El enunciado dice: "deberás conservar la versión que proviene de la rama design". La versión de design era: Entornos de desarrollo - Diseño.

Usamos echo para sobrescribir todo el contenido de Title.md (incluidas las marcas de conflicto) con la línea deseada:

echo "Entornos de desarrollo - Diseño" > Title.md

# Informar a Git que el conflicto ha sido resuelto
git add .

# Realizar el commit de fusión (Git te pedirá un mensaje)
git commit -m "Ej6: Fusión de design en main. Conflicto en Title.md resuelto conservando la versión de design." -m "git merge design" -m "echo 'Entornos de desarrollo - Diseño' > Title.md" -m "git add ."

COMMIT: paso a ejercicio 7

**Ejercicio 7: Resolución de conflictos**
Soluciona el
conflicto manuålmente usando un editor de texto sencillo (como el Bloc de notas
o nano). Recuerda que en el ejercicio anterior decidiste conservar la versión
proveniente de la rama design. 
Ahora, a partir de esa versión, modifica el encabezado de
Ti tle. md para dejarlo con un texto más definitivo, escribiendo:
Entornos de Desarrollo - Versión 1.0
Una vez resuelto el conflicto y actualizado el archivo, elimina las marcas del merge (si aún quedaran), guarda los cambios, agrégalos al staging area y realiza un commit de menge para confirmar que el conflicto ha sido resuelto. Con **este cambio dejarás el archivo libre de conflictos y con el título definitivo del proyecto.**


1. Modifico Title.md

echo "# Entornos de Desarrollo - Versión 1.0" > Title.md
-"Sobrescribimos el archivo con el título definitivo, garantizando que no queda ninguna marca de conflicto."

2. Agrego los cambios
git add . Preparamos el archivo modificado para el commit.

3. Realizo el commit

git commit -m "Ej7: Modificación final de Title.md a 'Versión 1.0'" -m "echo '# Entornos de Desarrollo - Versión 1.0' > Title.md" -m "git add ." 

COMMIT: paso a ejercicio 8

***Ejercicio 8***

Ejercicio 8: Cámbiate a la rama design e introduce un cambio menor en el archivo Style.md. Por ejemplo, cambia el color a **otro cualquiera (puede ser "verde", "rojo", "gris", etc.). Guarda, agrega los cambios y realiza un commit.**

-Nos cambiamos de rama

git checkout design

-Modificamos 

echo "Color gris" > Style.rrýy

-Agregamos

git add .

-Realizamos commit

git commit -m "Ej8: Cambio menor de color en Style.rrýy (Color gris)" -m "git checkout design" -m "echo 'Color gris' > Style.rrýy" -m "git add ."

COMMIT: paso a punto 9

**Ejercicio 9: Fusión final**           
Regresa a la rama principal (master o main) e incorpora de nuevo los cambios realizados en la rama design. Si aparece algún conflicto, resuélvelo manualmente priorizando la modificación realizada en la rama design. Cuando todo esté correcto, realiza un nuevo commit final indicando que es la versión final del proyecto ("Ej9: Versión final").
En este punto, incluir en el mensaje del commit las líneas de comandos utilizadas en Bash para resolver el ejercicio 8 y **9.**

-Nos cambiamos rama

git checkout main

git checkout main

git merge design -m "Ej9: Versión final" -m "Comandos usados en Ejercicio 8 y 9:" -m "Ej8:" -m "git checkout design" -m "echo 'Color gris' > Style.rrýy" -m "git add ." -m "git commit -m 'Ej8: Cambio menor de color en Style.rrýy (Color gris)'" -m "Ej9:" -m "git checkout main" -m "git merge design"

**NOTA: EN CASO QUE FALLE, COMO GIT MERGE DESIGN, DESHACEMOS**

(Esc : wq)

git commit --amend -m "Ej9: Versión final" -m "Comandos usados en Ejercicio 8 y 9:" -m "Ej8:" -m "git checkout design" -m "echo 'Color gris' > Style.rrýy" -m "git add ." -m "git commit -m 'Ej8: Cambio menor **de color en Style.rrýy (Color gris)'" -m "Ej9:" -m "git checkout main" -m "git merge design"**

COMMIT: paso a ejercicio 10


