<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- a. exibir todos os elementos ordenados por nome -->
  <xsl:template match="/">
    <html>
      <body>
        <h2>Clientes (ordenados por nome):</h2>
        <table border="1">
          <tr>
            <th>Nome</th>
            <th>Telefone</th>
            <th>Cidade</th>
            <th>Estado</th>
            <th>Crédito</th>
          </tr>
          <xsl:for-each select="clientes/cliente">
            <xsl:sort select="nome"/>
            <tr>
              <td><xsl:value-of select="nome"/></td>
              <td><xsl:value-of select="telefone"/></td>
              <td><xsl:value-of select="cidade"/></td>
              <td><xsl:value-of select="estado"/></td>
              <td><xsl:value-of select="credito"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>

    <!-- b. exibir os clientes da cidade do Rio de Janeiro -->
    <html>
      <body>
        <h2>Clientes da cidade do Rio de Janeiro:</h2>
        <table border="1">
          <tr>
            <th>Nome</th>
            <th>Telefone</th>
            <th>Cidade</th>
            <th>Estado</th>
            <th>Crédito</th>
          </tr>
          <xsl:for-each select="clientes/cliente[cidade = 'Rio de Janeiro']">
            <tr>
              <td><xsl:value-of select="nome"/></td>
              <td><xsl:value-of select="telefone"/></td>
              <td><xsl:value-of select="cidade"/></td>
              <td><xsl:value-of select="estado"/></td>
              <td><xsl:value-of select="credito"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>

    <!-- c. exibir os clientes do estado do RJ com ordenado pelo nome -->
    <html>
      <body>
        <h2>Clientes do estado do RJ (ordenados por nome):</h2>
        <table border="1">
          <tr>
            <th>Nome</th>
            <th>Telefone</th>
            <th>Cidade</th>
            <th>Estado</th>
            <th>Crédito</th>
          </tr>
          <xsl:for-each select="clientes/cliente[estado = 'RJ']">
            <xsl:sort select="nome"/>
            <tr>
              <td><xsl:value-of select="nome"/></td>
              <td><xsl:value-of select="telefone"/></td>
              <td><xsl:value-of select="cidade"/></td>
              <td><xsl:value-of select="estado"/></td>
              <td><xsl:value-of select="credito"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>

    <!-- d. exibir os clientes com crédito entre 250 e 400, em ordem descendente de crédito -->
    <html>
      <body>
        <h2>Clientes com crédito entre 250 e 400 (em ordem descendente de crédito):</h2>
        <table border="1">
          <tr>
            <th>Nome</th>
            <th>Telefone</th>
            <th>Cidade</th>
            <th>Estado</th>
            <th>Crédito</th>
          </tr>
          <xsl:for-each select="clientes/cliente[number(credito) &gt;= 250 and number(credito) &lt;= 400]">
            <xsl:sort select="number(credito)" order="descending"/>
            <tr>
              <td><xsl:value-of select="nome"/></td>
              <td><xsl:value-of select="telefone"/></td>
              <td><xsl:value-of select="cidade"/></td>
              <td><xsl:value-of select="estado"/></td>
              <td><xsl:value-of select="credito"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
