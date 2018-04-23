<?xml version="1.0" encoding="GB2312" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>销售记录</title>
            </head>
            <body>
                <xsl:for-each select="销售记录/物品">
                    <xsl:sort select="物品价格" order="descending"/>
                    <xsl:value-of select="."/>
                    <br/>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>