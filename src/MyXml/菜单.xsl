<?xml version="1.0" encoding="GB2312" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="/">
        <html>
        <body style="font-family:Arial,helvetica,sans-serif;font-size:12pt;background-color:#fefefe">
            <xsl:for-each select="中餐价目表/食品">
                <div style="background-color:red;color:white;padding:4px">
                    <span style="font-weight:bold;color:white">
                        <xsl:value-of select="名称"/>
                    </span>
                    <xsl:value-of select="价格"/>
                </div>
                <div style="margin-left:20px;margin-bottom:lem;font-size:10pt">
                    <xsl:value-of select="描述"/>
                    <span style="font-size:italic">
                        (<xsl:value-of select="状态"/>成都美味馆一楼)
                    </span>
                </div>
            </xsl:for-each>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>