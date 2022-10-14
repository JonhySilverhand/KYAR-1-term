<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    <html>
        <body style="color: white;background-color : gray;width: 100%;">

            <xsl:for-each select="books">
                <h1 style="color: green;font-size : 40px;background-color : powderblue;">
                    <xsl:value-of select="heading"></xsl:value-of>
                </h1>
            </xsl:for-each>
            <xsl:for-each select="books/book1">
             <h2 style="color:#58d10d;margin-left:50px;font-size : 25px; font-weight : bold;">
                 <xsl:value-of select="title">
                 </xsl:value-of>
             </h2>
<p style="font-size: 19px;display:block; width:600px;margin-left:10px;">
    <xsl:value-of select="info"></xsl:value-of>
</p>
            </xsl:for-each>

            <xsl:for-each select="books/book2">
                <h2 style="color:#58d10d;margin-left:50px;font-size : 25px; font-weight : bold;">
                    <xsl:value-of select="title">
                    </xsl:value-of>
                </h2>
                <p style="font-size: 19px;display:block; width:600px;margin-left:10px;">
                    <xsl:value-of select="info"></xsl:value-of>
                </p>
            </xsl:for-each>

            <xsl:for-each select="books/book3">
                <h2 style="color:#58d10d;margin-left:50px;font-size : 25px; font-weight : bold;">
                    <xsl:value-of select="title">
                    </xsl:value-of>
                </h2>
                <p style="font-size: 19px;display:block; width:600px;margin-left:10px;">
                    <xsl:value-of select="info"></xsl:value-of>
                </p>
            </xsl:for-each>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>