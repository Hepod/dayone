<?xml version="1.0" encoding="GB2312" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>���ۼ�¼</title>
            </head>
            <body>
                <xsl:for-each select="���ۼ�¼/��Ʒ">
                    <xsl:sort select="��Ʒ�۸�" order="descending"/>
                    <xsl:value-of select="."/>
                    <br/>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>