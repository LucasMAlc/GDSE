<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/">
      <html>
         <head><title>Cardápio</title></head>
         <body>
            <h1>Cardápio</h1>
            <table border="2">
               <tr bgcolor="LightBlue">
                  <th><b>Nome</b></th>
                  <th><b>Descrição</b></th>
                  <th><b>Preço</b></th>
               </tr>
               <xsl:for-each select="cardapio/prato">
                  <tr>
                     <td><xsl:value-of select="nome"/></td>
                     <td><xsl:value-of select="descricao"/></td>
                     <td><xsl:value-of select="preco"/></td>
                  </tr>
               </xsl:for-each>
            </table>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>
