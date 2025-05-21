<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes" />

  <xsl:template match="/">
    <html>
      <head>
        <title>Lista Clienti Sala Fitness</title>
        <style>
          table {
            border-collapse: collapse;
            width: 100%;
            font-family: Arial, sans-serif;
          }
          th, td {
            border: 1px solid #ddd;
            padding: 8px;
          }
          th {
            background-color: #f2f2f2;
            text-align: left;
          }
        </style>
      </head>
      <body>
        <h2>Lista Clienti</h2>
        <table>
          <tr>
            <th>ID</th>
            <th>Nume</th>
            <th>CNP</th>
            <th>Telefon</th>
            <th>Email</th>
            <th>Tip Abonament</th>
            <th>Data Inceput</th>
            <th>Data Expirare</th>
          </tr>
          <xsl:for-each select="SalaFitness/Clienti/Client">
            <tr>
              <td><xsl:value-of select="id" /></td>
              <td><xsl:value-of select="Nume" /></td>
              <td><xsl:value-of select="CNP" /></td>
              <td><xsl:value-of select="Telefon" /></td>
              <td><xsl:value-of select="Email" /></td>
              <td><xsl:value-of select="Abonament/tip" /></td>
              <td><xsl:value-of select="Abonament/dataInceput" /></td>
              <td><xsl:value-of select="Abonament/dataExpirare" /></td>
            </tr>
          </xsl:for-each>
        </table>

        <h2>Lista Antrenori</h2>
        <table border="1">
          <tr bgcolor="#cccccc">
            <th>ID</th>
            <th>Nume</th>
            <th>Specializări</th>
          </tr>
          <xsl:for-each select="SalaFitness/Antrenori/Antrenor">
            <tr>
              <td><xsl:value-of select="id"/></td>
              <td><xsl:value-of select="Nume"/></td>
              <td>
                <xsl:for-each select="Specializari/Specializare">
                  <xsl:value-of select="."/>
                  <xsl:if test="position() != last()">, </xsl:if>
                </xsl:for-each>
              </td>
            </tr>
          </xsl:for-each>
        </table>
        
        <h2>Lista Clase</h2>
        <table border="1">
          <tr bgcolor="#cccccc">
            <th>ID</th>
            <th>Denumire</th>
            <th>Antrenor</th>
            <th>Capacitate</th>
            <th>Zi</th>
            <th>Ora</th>
            <th>Sală</th>
          </tr>
          <xsl:for-each select="SalaFitness/Clase/Clasa">
            <tr>
              <td><xsl:value-of select="id"/></td>
              <td><xsl:value-of select="Denumire"/></td>
              <td><xsl:value-of select="AntrenorID"/></td>
              <td><xsl:value-of select="Capacitate"/></td>
              <td><xsl:value-of select="Zi"/></td>
              <td><xsl:value-of select="Ora"/></td>
              <td><xsl:value-of select="Sala"/></td>
            </tr>
          </xsl:for-each>
        </table>

        <h2>Lista Programări</h2>
        <table border="1">
          <tr bgcolor="#cccccc">
            <th>ID</th>
            <th>Client ID</th>
            <th>Clasa ID</th>
            <th>Data</th>
          </tr>
          <xsl:for-each select="SalaFitness/Programari/Programare">
            <tr>
              <td><xsl:value-of select="id"/></td>
              <td><xsl:value-of select="ClientID"/></td>
              <td><xsl:value-of select="ClasaID"/></td>
              <td><xsl:value-of select="Data"/></td>
            </tr>
          </xsl:for-each>
        </table>

      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
