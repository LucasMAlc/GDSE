<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <xsl:apply-templates select="clientes"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="clientes">
    <h2>Clientes (ordenados por nome):</h2>
    <table border="1">
      <tr>
        <th>Nome</th>
        <th>Telefone</th>
        <th>Cidade</th>
        <th>Estado</th>
        <th>Crédito</th>
      </tr>
      <xsl:apply-templates select="cliente">
        <xsl:sort select="nome"/>
      </xsl:apply-templates>
    </table>

    <h2>Clientes da cidade do Rio de Janeiro:</h2>
    <table border="1">
      <tr>
        <th>Nome</th>
        <th>Telefone</th>
        <th>Cidade</th>
        <th>Estado</th>
        <th>Crédito</th>
      </tr>
      <xsl:apply-templates select="cliente[cidade = 'Rio de Janeiro']"/>
    </table>

    <h2>Clientes do estado do RJ (ordenados por nome):</h2>
    <table border="1">
      <tr>
        <th>Nome</th>
        <th>Telefone</th>
        <th>Cidade</th>
        <th>Estado</th>
        <th>Crédito</th>
      </tr>
      <xsl:apply-templates select="cliente[estado = 'RJ']">
        <xsl:sort select="nome"/>
      </xsl:apply-templates>
    </table>

    <h2>Clientes com crédito entre 250 e 400 (em ordem descendente de crédito):</h2>
    <table border="1">
      <tr>
        <th>Nome</th>
        <th>Telefone</th>
        <th>Cidade</th>
        <th>Estado</th>
        <th>Crédito</th>
      </tr>
      <xsl:apply-templates select="cliente[number(credito) &gt;= 250 and number(credito) &lt;= 400]">
        <xsl:sort select="number(credito)" order="descending"/>
      </xsl:apply-templates>
    </table>
  </xsl:template>

  <xsl:template match="cliente">
    <tr>
      <td><xsl:value-of select="nome"/></td>
      <td><xsl:value-of select="telefone"/></td>
      <td><xsl:value-of select="cidade"/></td>
      <td><xsl:value-of select="estado"/></td>
      <td><xsl:value-of select="credito"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
