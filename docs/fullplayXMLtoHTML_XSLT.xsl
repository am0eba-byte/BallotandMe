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
                
                <xsl:apply-templates select="descendant::body"/>
            </body>
        </html>
        
    </xsl:template>
    
    
    <xsl:template match="descendant::body">
        
        <xsl:apply-templates select="titlePage"/>
        
        <xsl:apply-templates select="castList"/>
        
        <section class="set"><xsl:apply-templates select="set"/></section>
        
        <!-- //castItem/text() [contains(. , "*" )] -->
        
        <xsl:apply-templates select="div1"/>
        
    </xsl:template>
    
    <xsl:template match="titlePage">
        
        <h4><xsl:apply-templates select="copy"/></h4>
        <h1><xsl:apply-templates select="playtitle"/></h1>
        
        <p class="intro"><xsl:apply-templates select="titledesc"/></p>
        
        <p class="intro"><xsl:apply-templates select="author"/></p>
        
        <p class="intro"><xsl:apply-templates select="published"/></p>
        
        <aside class="marginalia"><xsl:apply-templates select="marginalia"/></aside>
        
        <hr/>
    </xsl:template>
    
    <xsl:template match="castList">
        <h2 class="castHead"><xsl:apply-templates select="header"/></h2>
            
                <table>
                    <xsl:apply-templates select="castgroup"/>
                </table>
            
        <div class="note"><xsl:apply-templates select="note"/></div>
    </xsl:template>
        
    
    <xsl:template match="castgroup">
        <tr class="castgroup">
        <td><ul><xsl:apply-templates select="castItem"/></ul></td>
        <td class="castcontext"><xsl:apply-templates select="activePeriod"/></td>
        </tr>
    </xsl:template>
    
     <xsl:template match="castItem">
        <li>
            <xsl:apply-templates/>
        </li>
    </xsl:template>
    
    <xsl:template match="set">
        <hr/>
        <h2 class="setHead"><u><xsl:apply-templates select="descendant::header"></xsl:apply-templates></u></h2>
        <h3 class="setting"><xsl:apply-templates select="setting/ab"/></h3>
        <p class="setdesc">
            <xsl:apply-templates select="setting/setDesc"/>
        </p>
        
        <h3 class="setTime"><xsl:apply-templates select="setTime/ab"/></h3>
        <p class="timedesc">
            <xsl:apply-templates select="setTime/timedesc"/>
        </p>
        
        <h3 class="action"><xsl:apply-templates select="action/ab"/></h3>
        <p class="actiondesc"><xsl:apply-templates select="action/actiondesc"></xsl:apply-templates></p>
    </xsl:template>
    
    <xsl:template match="div1">
        <section class="page">
            <xsl:apply-templates/>
        </section>
        <hr/>
    </xsl:template>
    
    <xsl:template match="sp">
        
        <table>
            <div class="sp">
                
          <tr class="script">
                <td class="spk">
                    <div class="speaker">
                        <b><xsl:apply-templates select="speaker"/></b>
                    </div>
                </td>
                
            <td class="d">
                <div class="dialogue">
                    <xsl:apply-templates select="dialogue"/>
                </div>
            </td>
          </tr>
            
        </div>
        </table>
        
    </xsl:template>
    
    
    <xsl:template match="speaker[@idref='SOJOURNER']">
        <span class="SOJOURNER"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="speaker[@idref='FRAUNCES']">
        <span class="FRAUNCES"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="speaker[@idref='DOUGLASS']">
        <span class="DOUGLASS"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="speaker[@idref='LONG']">
        <span class="LONG"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="speaker[@idref='RAINEY']">
        <span class="RAINEY"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="speaker[@idref='DELARGE']">
        <span class="DELARGE"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="speaker[@idref='RAINER']">
        <span class="RAINER"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="speaker[@idref='ELLIOTT']">
        <span class="ELLIOTT"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="speaker[@idref='TURNER']">
        <span class="TURNER"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="speaker[@idref='LYNCH']">
        <span class="LYNCH"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="speaker[@idref='RAPIER']">
        <span class="RAPIER"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="speaker[@idref='WALLS']">
        <span class="WALLS"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="speaker[@idref='CAIN']">
        <span class="CAIN"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="speaker[@idref='NASH']">
        <span class="NASH"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="speaker[@idref='HYMAN']">
        <span class="HYMAN"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="speaker[@idref='HARALSON']">
        <span class="HARALSON"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="speaker[@idref='SMALLS']">
        <span class="SMALLS"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="speaker[@idref='REVELS']">
        <span class="REVELS"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="speaker[@idref='BRUCE']">
        <span class="BRUCE"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="speaker[@idref='LANGSTON']">
        <span class="LANGSTON"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="speaker[@idref='MILLER']">
        <span class="MILLER"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="speaker[@idref='MURRAY']">
        <span class="MURRAY"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="speaker[@idref='OHARA']">
        <span class="OHARA"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="speaker[@idref='CHEATHAM']">
        <span class="CHEATHAM"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="speaker[@idref='WHITE']">
        <span class="WHITE"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="speaker[@idref='WASHINGTON']">
        <span class="WASHINGTON"><xsl:apply-templates/></span>
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
        <span class="TURNER"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="person[@xml:id='TURNER']">
        <span class="TURNER"><xsl:apply-templates/></span>
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
    
    <xsl:template match="lb[not(ancestor::castgroup)]">
        <br/>
    </xsl:template>
    
    <xsl:template match="underline">
        <u><xsl:apply-templates/></u>
    </xsl:template>
    
    <xsl:template match="Xout">
        <s><xsl:apply-templates/></s>
    </xsl:template>
    
    <xsl:template match="insert">
        <span class="insert"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="pg">
        <hr/>
    </xsl:template>
    
    <xsl:template match="pgbr">
        <hr/>
    </xsl:template>
    
    <!-- <xsl:template match="playstrt">
        <hr/>
    </xsl:template> -->
    
</xsl:stylesheet>