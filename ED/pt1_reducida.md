***Ejercicio 0***

git config --global --list (¿estoy en la lista?)

git config --global user.name "Manuel Fuentes"

git config --global user.email fuentesrejonmanuel001.alu@stemgranada.com

git init

git branch -m master main TRUCO PARA ASEGURANOS QUE LA RAMA PRINCIPAL ES MAIN

commit: listo para empezar

***Ejercicio 1***

mkdir project

cd project

touch AboutUs.md Temp.md Title.md

git add .

git commit -m "Ej1: Estructura inicial" -m "git clone [URL]" -m "mkdir project" -m "touch project/AboutUs.md project/Temp.md project/Title.md"

-COMMIT: paso al punto 2

**Ejercicio 2**

git rm Temp.md

git commit -m "Ej2: Eliminación de archivo Temp.md" -m "git rm Temp.md"

COMMIT: doy paso al ejercicio 3

**Ejercicio 3**

echo "# Entornos de Desarrollo" > Title.md

echo "# Sobre Nosotros" > AboutUs.md

echo "En el módulo de Entornos de Desarrollo trabajamos con herramientas de control de versiones." >> AboutUs.md

git add .

git commit -m "Ej3: Edición de contenidos de Title.md y AboutUs.md" -m "echo '# Entornos de Desarrollo' > Title.md" -m "echo '# Sobre Nosotros' > AboutUs.md" -m "echo 'En el módulo de Entornos de Desarrollo trabajamos con herramientas de control de versiones.' >> AboutUs.md" -m "git add ."

COMMIT: pasamos al ejercicio 4

**Ejercicio 4**

git checkout -b testing

echo "Estoy haciendo mi primera prueba técnica de Entornos de Desarrollo usando Git." >> AboutUs.md

git add .

git commit -m "Ej4a: Ampliación en rama testing" -m "git checkout -b testing" -m "echo 'Estoy haciendo mi primera prueba técnica de Entornos de Desarrollo usando Git.' >> AboutUs.md" -m "git add ."

git checkout master

git checkout -b design

echo "Entornos de desarrollo - Diseño" > Title.md

echo "Color azul" > Style.rrýy

git add .

git commit -m "Ej4b: Modificación de Title.md y creación de Style.rrýy en design" -m "git checkout master" -m "git checkout -b design" -m "echo 'Entornos de desarrollo - Diseño' > Title.md" -m "echo 'Color azul' > Style.rrýy" -m "git add ."

COMMIT: paso al punto 5

**Ejercicio 5**

git checkout master

echo "# Entornos de Desarrollo - Principal" > Title.md

git add .

git commit -m "Ej5: Modificación de Title.md en rama master para provocar conflicto" -m "git checkout master" -m "echo '# Entornos de Desarrollo - Principal' > Title.md" -m "git add ."

COMMIT: paso al punto 6

**Ejercicio 6**

git merge design

echo "Entornos de desarrollo - Diseño" > Title.md

git add .

git commit -m "Ej6: Fusión de design en main. Conflicto en Title.md resuelto conservando la versión de design." -m "git merge design" -m "echo 'Entornos de desarrollo - Diseño' > Title.md" -m "git add ."

COMMIT: paso a punto 7

**Ejercicio 7**

echo "# Entornos de Desarrollo - Versión 1.0" > Title.md

git add .

git commit -m "Ej7: Modificación final de Title.md a 'Versión 1.0'" -m "echo '# Entornos de Desarrollo - Versión 1.0' > Title.md" -m "git add ."

COMMIT: paso a punto 8

**Ejercicio 8**

git checkout design

echo "Color gris" > Style.rrýy

git add .

git commit -m "Ej8: Cambio menor de color en Style.rrýy (Color gris)" -m "git checkout design" -m "echo 'Color gris' > Style.rrýy" -m "git add ."

COMMIT: paso a punto 9

**Ejercicio 9**

git checkout main

git merge design -m "Ej9: Versión final" -m "Comandos usados en Ejercicio 8 y 9:" -m "Ej8:" -m "git checkout design" -m "echo 'Color gris' > Style.rrýy" -m "git add ." -m "git commit -m 'Ej8: Cambio menor de color en Style.rrýy (Color gris)'" -m "Ej9:" -m "git checkout main" -m "git merge design"

**NOTA: EN CASO QUE FALLE, COMO GIT MERGE DESIGN, DESHACEMOS**

(Esc : wq)

git commit --amend -m "Ej9: Versión final" -m "Comandos usados en Ejercicio 8 y 9:" -m "Ej8:" -m "git checkout design" -m "echo 'Color gris' > Style.rrýy" -m "git add ." -m "git commit -m 'Ej8: Cambio menor **de color en Style.rrýy (Color gris)'" -m "Ej9:" -m "git checkout main" -m "git merge design"**

COMMIT: Entrego PT finalizada