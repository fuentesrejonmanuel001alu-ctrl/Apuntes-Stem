<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html lang="es">
      <head>
        <meta charset="UTF-8"/>
        <title>Gestión de Inventario Mustang</title> 
      </head>
      <body>
        <header>
          <h1>Panel del Concesionario</h1>
        </header>
        
        <main>
          <table border="1">
            <tr bgcolor="#cccccc">
              <th>Modelo</th>
              <th>Potencia</th>
              <th>Precio</th>
            </tr>
            <xsl:for-each select="concesionario/coche">
              <tr>
                <td><xsl:value-of select="modelo"/></td>
                <td>
                  <xsl:value-of select="potencia"/> 
                  <xsl:text> </xsl:text> <xsl:value-of select="potencia/@unidad"/>
                </td>
                <td><xsl:value-of select="precio"/> €</td>
              </tr>
            </xsl:for-each>
          </table>
        </main>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
¿Para qué sirve esto?
La función del XSLT es leer ese archivo datos.xml y generar un archivo HTML (la web) automáticamente. 🔄

El navegador lee el XML.

Ve la línea xml-stylesheet.

Busca el archivo estilo.xsl.

Aplica las reglas y te muestra una tabla, una lista o lo que hayamos diseñado.

Necesitas ambos archivos (datos.xml y estilo.xsl) trabajando juntos en la misma carpeta. No borres nada.

datos.xml: Es tu almacén de información (el Mustang).

estilo.xsl: Es el archivo nuevo. No es similar al XML; es el código que le dice al navegador cómo "dibujar" esos datos en una tabla. 🏗️

Ahora que tenemos el XML bien "enchufado", toca crear el archivo estilo.xsl
