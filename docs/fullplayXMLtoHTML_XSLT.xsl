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
                <hr/>
                <p class="navbar"><a href="index.html">Home</a> | <a href="fullplay_OUTPUT.html">Full Play in HTML</a> | <a href="analysis.html">Analysis</a> | 
                    <a href="conclusion.html">Conclusion</a></p>
                <hr/>
                <h1><xsl:apply-templates select="descendant::playtitle"/></h1>
                <xsl:apply-templates select="descendant::body"/>
            </body>
        </html>
        
    </xsl:template>
    
    
    <xsl:template match="descendant::body">
        
        <xsl:apply-templates select="titlePage"/>
        
        <xsl:apply-templates select="castList"/>
        
        <xsl:apply-templates select="set"/>
        
        <hr/>
        
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
            
                <xsl:apply-templates select="castgroup"/>
            
        <xsl:apply-templates select="note"/>
    </xsl:template>
        
        <xsl:template match="castItem">
            <ul>
            <li>
                <xsl:apply-templates/>
            </li>
            </ul>
        </xsl:template>
    
    <xsl:template match="castgroup">
        <section class="castgroup">
        <xsl:apply-templates select="castItem"/>
        <aside><xsl:apply-templates select="margin"/></aside>
        </section>
    </xsl:template>
    
    <!-- <xsl:template match="castgroup/castItem">
        <li>
            <xsl:apply-templates/>
        </li>
    </xsl:template> -->
    
    <xsl:template match="set">
        <h2><u><xsl:apply-templates select="descendant::header"></xsl:apply-templates></u></h2>
        <h3><xsl:apply-templates select="setting/ab"/></h3>
        <p>
            <xsl:apply-templates select="setting/setDesc"/>
        </p>
        
        <h3><xsl:apply-templates select="setTime/ab"/></h3>
        <p>
            <xsl:apply-templates select="setTime/timedesc"/>
        </p>
        
        <h3><xsl:apply-templates select="action/ab"/></h3>
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
            <div class="dialogue"><xsl:apply-templates select="dialogue"/></div>
            
        </div>
    </xsl:template>
    
    <xsl:template match="p">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    
    
    <xsl:template match="person[@idref='SOJOURNER']">
        <span class="SOJOURNER"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@xml:id='SOJOURNER']">
        <span class="SOJOURNER"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@idref='FRAUNCES']">
        <span class="FRAUNCES"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@xml:id='FRAUNCES']">
        <span class="FRAUNCES"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@idref='DOUGLASS']">
        <span class="DOUGLASS"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@xml:id='DOUGLASS']">
        <span class="DOUGLASS"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@idref='LONG']">
        <span class="LONG"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@xml:id='LONG']">
        <span class="LONG"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@idref='RAINEY']">
        <span class="RAINEY"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@xml:id='RAINEY']">
        <span class="RAINEY"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@idref='DELARGE']">
        <span class="DELARGE"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@xml:id='DELARGE']">
        <span class="DELARGE"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@idref='RAINER']">
        <span class="RAINER"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@xml:id='RAINER']">
        <span class="RAINER"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@idref='ELLIOTT']">
        <span class="ELLIOTT"><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match="person[@xml:id='ELLIOTT']">
        <span class="ELLIOTT"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@idref='TURNER']">
        <span class="ELLIOTT"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@xml:id='TURNER']">
        <span class="ELLIOTT"><xsl:apply-templates/></span>
    </xsl:template>
    
    
    <xsl:template match="person[@idref='LYNCH']">
        <span class="LYNCH"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@xml:id='LYNCH']">
        <span class="LYNCH"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@idref='RAPIER']">
        <span class="RAPIER"><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match="person[@xml:id='RAPIER']">
        <span class="RAPIER"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@idref='WALLS']">
        <span class="WALLS"><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match="person[@xml:id='WALLS']">
        <span class="WALLS"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@idref='CAIN']">
        <span class="CAIN"><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match="person[@xml:id='CAIN']">
        <span class="CAIN"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@idref='NASH']">
        <span class="NASH"><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match="person[@xml:id='NASH']">
        <span class="NASH"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@idref='HYMAN']">
        <span class="HYMAN"><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match="person[@xml:id='HYMAN']">
        <span class="HYMAN"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@idref='HARALSON']">
        <span class="HARALSON"><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match="person[@xml:id='HARALSON']">
        <span class="HARALSON"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@idref='SMALLS']">
        <span class="SMALLS"><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match="person[@xml:id='SMALLS']">
        <span class="SMALLS"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@idref='REVELS']">
        <span class="REVELS"><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match="person[@xml:id='REVELS']">
        <span class="REVELS"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@idref='BRUCE']">
        <span class="BRUCE"><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match="person[@xml:id='BRUCE']">
        <span class="BRUCE"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@idref='LANGSTON']">
        <span class="LANGSTON"><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match="person[@xml:id='LANGSTON']">
        <span class="LANGSTON"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@idref='MILLER']">
        <span class="MILLER"><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match="person[@xml:id='MILLER']">
        <span class="MILLER"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@idref='MURRAY']">
        <span class="MURRAY"><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match="person[@xml:id='MURRAY']">
        <span class="MURRAY"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@idref='OHARA']">
        <span class="OHARA"><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match="person[@xml:id='OHARA']">
        <span class="OHARA"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@idref='CHEATHAM']">
        <span class="CHEATHAM"><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match="person[@xml:id='CHEATHAM']">
        <span class="CHEATHAM"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@idref='WHITE']">
        <span class="WHITE"><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match="person[@xml:id='WHITE']">
        <span class="WHITE"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@idref='WASHINGTON']">
        <span class="WASHINGTON"><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match="person[@xml:id='WASHINGTON']">
        <span class="WASHINGTON"><xsl:apply-templates/></span>
    </xsl:template>
    
    
    <xsl:template match="p/stage">
        <a class="dialogstage"><xsl:apply-templates/></a>
    </xsl:template>
    
    <xsl:template match="stage">
        <div class="stage"><em><xsl:apply-templates/></em></div>
    </xsl:template>
    
    <xsl:template match="location">
        <span class="location"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="date">
        <span class="date"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="period">
        <span class="period"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="lb">
        <br/>
    </xsl:template>
    
    <xsl:template match="underline">
        <u><xsl:apply-templates/></u>
    </xsl:template>
    
    <xsl:template match="Xout">
        <s><xsl:apply-templates/></s>
    </xsl:template>
    
    <xsl:template match="pg">
        <hr/>
    </xsl:template>
    
    <xsl:template match="pgbr">
        <hr/>
    </xsl:template>
    
    <xsl:template match="playstrt">
        <hr/>
    </xsl:template>
    
</xsl:stylesheet>