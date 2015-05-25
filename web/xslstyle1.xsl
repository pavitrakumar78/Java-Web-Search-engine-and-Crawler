<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:xs='http://xml.netbeans.org/schema/XmlSchema'>
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="xmlstyle.css" />
            </head>
            <body>
                <b class = "bb">
                    <xsl:value-of select="aboutPagePoints/pointHeader"/>
                </b>
                <ul>
                    <xsl:for-each select = "aboutPagePoints/subPoint">
                        <li class ="a"> <xsl:value-of select="text1"/></li>            
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>