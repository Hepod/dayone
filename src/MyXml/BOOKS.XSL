<?xml version="1.0" encoding="GB2312" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="GB2312"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>BOOKS</title>
            </head>
            <body>
                <h2 align="center">BOOKS</h2>
                <xsl:apply-templates select="BOOKS"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="BOOKS">
        <table border="1" cellspacing="0" align="center">
            <tr>
                <th>NAME</th>
                <th>PUBLISHER</th>
                <th>PRICE</th>
                <th>DESCRIPTION</th>
                <th>STATUS</th>
            </tr>
            <xsl:for-each select="BOOK">
                <tr>
                    <td><xsl:value-of select="NAME"/></td>
                    <td><xsl:value-of select="PUBLISHER"/></td>
                    <td><xsl:value-of select="PRICE"/></td>
                    <td><xsl:value-of select="DESCRIPTION"/></td>
                    <td><xsl:value-of select="STATUS"/></td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>
</xsl:stylesheet>