<?xml version="1.0" encoding="GB2312" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="/">
        <html>
            <head>
            <title>定义模板</title>
            </head>
            <body>
                <xsl:apply-templates select="学生列表"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="学生列表">
        <h1>欢迎查看学生列表</h1>
        <xsl:apply-templates select="学生"/>
    </xsl:template>
    <xsl:template match="学生">
        <ul>
            <xsl:value-of select="姓名"/>
        </ul>
        <li>
            <xsl:value-of select="性别"/>
        </li>
        <li>
        <xsl:value-of select="专业"/>
        </li>
        <li>
            <xsl:value-of select="联系方式"/>
        </li>
        <li>
            <xsl:value-of select="E-mail"/>
        </li>
    </xsl:template>
</xsl:stylesheet>
