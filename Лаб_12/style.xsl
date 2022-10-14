<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Аттестация</title>
            </head>
            <body style="font-family: 'Segoe UI'">
                <table style="border: 2px solid; border-collapse: collapse; margin: auto; width: 50%; height: 50%; text-align:center">
                    <tr>

                        <th style="border-collapse:collapse; border: 1px solid; background-color:#b018de; color:#fff;">Фамилия, имя</th>
                        <th style="border-collapse:collapse; border: 1px solid; background-color:#b018de; color:#fff;">ВышМат</th>
                        <th style="border-collapse:collapse; border: 1px solid; background-color:#b018de; color:#fff;">АЛОВС</th>
                        <th style="border-collapse:collapse; border: 1px solid; background-color:#b018de; color:#fff;">ОАиП</th>
                        <th style="border-collapse:collapse; border: 1px solid; background-color:#b018de; color:#fff;">КЯР</th>
                        <th style="border-collapse:collapse; border: 1px solid; background-color:#b018de; color:#fff;">Физ. к-ра.</th>


                    </tr>
                    <xsl:for-each select="attest/stud">
                    <xsl:sort select="name"/>
                        <tr>
                            <td style="border-collapse:collapse; border: 1px solid"><xsl:value-of select="name"/></td>

                            <xsl:choose>
                                <xsl:when test="math &gt; 8">
                                    <td style="background-color:green; border-collapse:collapse; border: 1px solid">
                                        <xsl:value-of select="math"/></td>
                                </xsl:when>
                                <xsl:when test="math &lt; 4">
                                    <td style="background-color: red; border-collapse:collapse; border: 1px solid">
                                        <xsl:value-of select="math"/></td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td style="border-collapse:collapse; border: 1px solid"><xsl:value-of select="math"/></td>
                                </xsl:otherwise>
                            </xsl:choose>

                            <xsl:choose>
                                <xsl:when test="alocsvm &gt; 8">
                                    <td style="background-color:green; border-collapse:collapse; border: 1px solid">
                                        <xsl:value-of select="alocsvm"/></td>
                                </xsl:when>
                                <xsl:when test="alocsvm &lt; 4">
                                    <td style="background-color: red; border-collapse:collapse; border: 1px solid">
                                        <xsl:value-of select="alocsvm"/></td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td style="border-collapse:collapse; border: 1px solid"><xsl:value-of select="alocsvm"/></td>
                                </xsl:otherwise>
                            </xsl:choose>

                            <xsl:choose>
                                <xsl:when test="oaip &gt; 8">
                                    <td style="background-color:green; border-collapse:collapse; border: 1px solid">
                                        <xsl:value-of select="oaip"/></td>
                                </xsl:when>
                                <xsl:when test="oaip &lt; 4">
                                    <td style="background-color: red; border-collapse:collapse; border: 1px solid">
                                        <xsl:value-of select="oaip"/></td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td style="border-collapse:collapse; border: 1px solid"><xsl:value-of select="oaip"/></td>
                                </xsl:otherwise>
                            </xsl:choose>

                            <xsl:choose>
                                <xsl:when test="kyar &gt; 8">
                                    <td style="background-color:green; border-collapse:collapse; border: 1px solid">
                                        <xsl:value-of select="kyar"/></td>
                                </xsl:when>
                                <xsl:when test="kyar &lt; 4">
                                    <td style="background-color: red; border-collapse:collapse; border: 1px solid">
                                        <xsl:value-of select="kyar"/></td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td style="border-collapse:collapse; border: 1px solid"><xsl:value-of select="kyar"/></td>
                                </xsl:otherwise>
                            </xsl:choose>

                            <xsl:choose>
                                <xsl:when test="fizra &gt; 8">
                                    <td style="background-color:green; border-collapse:collapse; border: 1px solid">
                                        <xsl:value-of select="fizra"/></td>
                                </xsl:when>
                                <xsl:when test="fizra &lt; 4">
                                    <td style="background-color: red; border-collapse:collapse; border: 1px solid">
                                        <xsl:value-of select="fizra"/></td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td style="border-collapse:collapse; border: 1px solid"><xsl:value-of select="fizra"/></td>
                                </xsl:otherwise>
                            </xsl:choose>

                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>