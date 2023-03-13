<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Nombre y apellidos: Jonathan León Canto</h2>
                <xsl:for-each select="bib/book">
                <xsl:value-of select="title"/> - 
                "<xsl:value-of select="publisher"/>"
                (<xsl:value-of select="year"/>)
                    <br/>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>