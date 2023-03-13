<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Nombre y apellidos: Jonathan León Canto</h2>
                <ol>
                <xsl:for-each select="bib/libro/autor">
                <xsl:sort select="bib/libro/autor" order="ascending" data-type="text"/>
                <li><xsl:value-of select="."/></li>
                </xsl:for-each>
                </ol>
            </body>

        </html>
    </xsl:template>
</xsl:stylesheet>