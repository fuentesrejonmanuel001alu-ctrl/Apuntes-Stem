<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <meta charset="UTF-8"/>
        <style>
            table { width: 100%; border-collapse: collapse; font-family: Arial; }
            th { background-color: #d32f2f; color: white; padding: 10px; }
            td { border: 1px solid #ccc; padding: 8px; text-align: center; }
        </style>
      </head>
      <body>
        <h2>Lista de Stock</h2>
        <table>
          <tr>
            <th>Marca</th>
            <th>Modelo</th>
            <th>Precio (€)</th>
            <th>Potencia (CV)</th>
            <th>Color</th>
          </tr>
          
          <xsl:for-each select="concesionario/stock/coche">
            <tr>
              <td><xsl:value-of select="marca"/></td>
              <td><xsl:value-of select="modelo"/></td>
              <td><xsl:value-of select="precio"/></td>
              <td><xsl:value-of select="potencia"/></td>
              <td><xsl:value-of select="@color"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>