<?xml version="1.0" encoding="GB2312" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="/">
        <html>
            <head>
            <title>����ģ��</title>
            </head>
            <body>
                <xsl:apply-templates select="ѧ���б�"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="ѧ���б�">
        <h1>��ӭ�鿴ѧ���б�</h1>
        <xsl:apply-templates select="ѧ��"/>
    </xsl:template>
    <xsl:template match="ѧ��">
        <ul>
            <xsl:value-of select="����"/>
        </ul>
        <li>
            <xsl:value-of select="�Ա�"/>
        </li>
        <li>
        <xsl:value-of select="רҵ"/>
        </li>
        <li>
            <xsl:value-of select="��ϵ��ʽ"/>
        </li>
        <li>
            <xsl:value-of select="E-mail"/>
        </li>
    </xsl:template>
</xsl:stylesheet>
