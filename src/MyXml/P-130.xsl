<?xml version="1.0" encoding="GB2312" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="/">
        <html>
            <head>
                <title>18�����ϵ�Ůѧ��</title>
            </head>
            <body>
                <xsl:apply-templates select="ѧ���б�"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="ѧ���б�">
        <h1 align="center" >��ӭ�鿴ѧ���б�</h1>
        <table align="center" border="1">
            <tr>
                <td>����</td>
                <td>�Ա�</td>
                <td>����</td>
                <td>רҵ</td>
                <td>��ϵ��ʽ</td>
                <td>E-mail</td>
            </tr>
            <xsl:apply-templates select="ѧ��"/>
        </table>
    </xsl:template>
    <xsl:template match="ѧ��">
        <xsl:choose>
            <xsl:when test="�Ա�='Ů'and ����>18">
                <tr>
                    <th><xsl:value-of select="����"/></th>
                    <th><xsl:value-of select="�Ա�"/></th>
                    <th><xsl:value-of select="����"/></th>
                    <th><xsl:value-of select="רҵ"/></th>
                    <th><xsl:value-of select="��ϵ��ʽ"/></th>
                    <th><xsl:value-of select="E-mail"/></th>
                </tr>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>