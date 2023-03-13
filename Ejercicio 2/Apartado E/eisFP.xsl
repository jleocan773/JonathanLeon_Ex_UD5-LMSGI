<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Nombre y apellidos: Jonathan León Canto</h2>
                <h1> IES Nuestra Sra. de los Remedios</h1>
                <table border="1">
                    <tr>
                        <th>Nombre</th>
                        <th>Año</th>
                    </tr>
                    <xsl:for-each select="ies/ciclos/ciclo">
                            <tr>
                                <td><xsl:value-of select="nombre"/></td>
                            <td>
                                <xsl:choose>
                                    <xsl:when test="decretoTitulo/@año&gt;2009">
                                        <font color="green"><xsl:value-of select="decretoTitulo/@año"/></font>
                                    </xsl:when>
                                    <xsl:when test="decretoTitulo/@año&lt;2009">
                                        <font color="red"><xsl:value-of select="decretoTitulo/@año"/></font>
                                    </xsl:when>
                                    <xsl:when test="decretoTitulo/@año&gt;2008">
                                        <font color="blue"><xsl:value-of select="decretoTitulo/@año"/></font>
                                    </xsl:when>
                                </xsl:choose>
                            </td>
                        </tr>
                        </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>