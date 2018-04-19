<?xml version="1.0" encoding="GB2312" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="/">
        <html>
            <head>
                <title>18岁以上的女学生</title>
            </head>
            <body>
                <xsl:apply-templates select="学生列表"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="学生列表">
        <h1 align="center" >欢迎查看学生列表</h1>
        <table align="center" border="1">
            <tr>
                <td>姓名</td>
                <td>性别</td>
                <td>年龄</td>
                <td>专业</td>
                <td>联系方式</td>
                <td>E-mail</td>
            </tr>
            <xsl:apply-templates select="学生"/>
        </table>
    </xsl:template>
    <xsl:template match="学生">
        <xsl:choose>
            <xsl:when test="性别='女'and 年龄>18">
                <tr>
                    <th><xsl:value-of select="姓名"/></th>
                    <th><xsl:value-of select="性别"/></th>
                    <th><xsl:value-of select="年龄"/></th>
                    <th><xsl:value-of select="专业"/></th>
                    <th><xsl:value-of select="联系方式"/></th>
                    <th><xsl:value-of select="E-mail"/></th>
                </tr>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>