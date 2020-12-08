<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
        <title>The Ballot and Me Data Analysis</title>
        
        <link rel="stylesheet" type="text/css" href="webstyle.css" />
    </head>
    <body>
        <hr/>
        <p class="navbar"><a class="BUTTON" href="index.html">Home</a> | <a class="BUTTON" href="fullplay_OUTPUT.html">Full Play in HTML</a> | <a class="BUTTON" href="analysis.html">Analysis</a> | 
            <a class="BUTTON" href="conclusion.html">Conclusion</a></p>
        <hr/>
        <h1>The Ballot and Me - Langston Hughes Data &amp; Metadata Analysis</h1>
        
        <img src="images/voteplea.jpg" alt="Image of Characters' Plea to Audience"/>
        
        <h2>Historical Character References - Data of Dialogue Frequency</h2>
        
        
        <table id="DATA">
            <tr>
                <th>Character Photo</th>
                <th>Character Name</th>
                <th>Number of Speaking Parts</th>
            </tr>
            <tr>
            <td></td>
                <td><xsl:apply-templates select="//castItem => distinct-values()"/></td>
            <td><xsl:apply-templates select="sp[speaker/@idref]"/></td>
        </tr>
        </table>
        
    </body>
        </html>
    </xsl:template>
    <!-- //div1/sp/speaker/@idref  => count(@idref =>distinct-values()) -->
    <xsl:template match="sp[speaker/@idref]">
        <xsl:value-of select=".//speaker/@idref => distinct-values() => count()"></xsl:value-of>
    </xsl:template>
    

    
</xsl:stylesheet>