<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    
    
    <xsl:template match="/">
        
        <html>
            <head>
                <title>The Ballot and Me</title>
                <link rel="stylesheet" type="text/css" href="webstyle.css"/>
            </head>
            <body>
                <h1><xsl:apply-templates select="descendant::playtitle"/></h1>
                <xsl:apply-templates select="descendant::body"/>
            </body>
        </html>
        
    </xsl:template>
    
    
    <xsl:template match="descendant::body">
        
        <xsl:apply-templates select="titlePage"/>
        
        <xsl:apply-templates select="castList"/>
        
        <xsl:apply-templates select="set"/>
        
        <xsl:apply-templates select="div1"/>
        
    </xsl:template>
    
    <xsl:template match="titlePage">
        
        <h4><xsl:apply-templates select="copy"/></h4>
        <h2><xsl:apply-templates select="playtitle"/></h2>
        
        <p><xsl:apply-templates select="titledesc"/></p>
        
        <p><xsl:apply-templates select="author"/></p>
        
        <p><xsl:apply-templates select="published"/></p>
        
        <p><xsl:apply-templates select="marginalia"/></p>
        
        
    </xsl:template>
    
    <xsl:template match="castList">
        <h2><xsl:apply-templates select="header"/></h2>
            <ul>
                <!-- <li><xsl:apply-templates select="castItem ! not(castItem/person[@xml:id='WASHINGTON'])"/></li> -->
                <xsl:apply-templates select="castItem"/>
                <xsl:apply-templates select="castgroup/castItem"/>
            </ul>
    </xsl:template>
        
        <xsl:template match="castItem">
            <li>
                <xsl:apply-templates></xsl:apply-templates>
            </li>
        </xsl:template>
    
    <xsl:template match="castgroup/castItem">
        <li>
            <xsl:apply-templates/>
        </li>
    </xsl:template>
    
    <xsl:template match="set">
        <h1><u><xsl:apply-templates select="descendant::header"></xsl:apply-templates></u></h1>
        <h2><xsl:apply-templates select="setting/ab"/></h2>
        <p>
            <xsl:apply-templates select="setting/setDesc"/>
        </p>
        
        <h2><xsl:apply-templates select="setTime/ab"/></h2>
        <p>
            <xsl:apply-templates select="setTime/timedesc"/>
        </p>
        
        <h2><xsl:apply-templates select="action/ab"/></h2>
        <p><xsl:apply-templates select="action/actiondesc"></xsl:apply-templates></p>
    </xsl:template>
    
    <xsl:template match="div1">
        <section class="page">
            <xsl:apply-templates/>
        </section>
    </xsl:template>
    
    <xsl:template match="sp">
        <div class="sp">
            <p><b><xsl:apply-templates select="speaker"/></b></p>
            <xsl:apply-templates select="dialogue"/>
            
        </div>
    </xsl:template>
    
    <xsl:template match="dialogue">
        <p><xsl:apply-templates select="p"/></p>
    </xsl:template>
    
    <xsl:template match="stage">
        <div class="stage"><xsl:apply-templates/></div>
    </xsl:template>
    
</xsl:stylesheet>