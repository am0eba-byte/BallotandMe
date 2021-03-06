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
                <hr class="topNav"/>
                <p class="navbar"><a class="BUTTON" href="index.html">Home</a> | <a class="BUTTON" href="fullplay_OUTPUT.html">Full Play in HTML</a> | <a class="BUTTON" href="analysis.html">Analysis</a> | 
                    <a class="BUTTON" href="conclusion.html">Conclusion</a></p>
                <hr class="bottomNav"/>
                
                <xsl:apply-templates select="descendant::body"/>
            </body>
        </html>
        
    </xsl:template>
    
    <!-- HOW TO CAPTURE TEXT THAT ISN'T CODED IN THE XML: -->
    <!--   <xsl:analyze-string select="." regex="dream deferred">
                <xsl:matching-substring>
                    <span class="motif"><xsl:value-of select="."/></span>
                </xsl:matching-substring>
                <xsl:non-matching-substring>
                    <xsl:apply-templates select="."/>
                </xsl:non-matching-substring>
            </xsl:analyze-string>
                -->
    
    
    <xsl:template match="descendant::body">
        
        <xsl:apply-templates select="titlePage"/>
        
        <xsl:apply-templates select="castList"/>
        
        <hr/>
        
        <h2 class="setHead">
            <xsl:apply-templates select="set/header"/>
        </h2>
        <!-- section class="set" -->
        <table class="set"><xsl:apply-templates select="set"/></table>
        
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
        

        <tr>
            <td class="set">
                <h3 class="setting"><xsl:apply-templates select="setting/ab"/></h3>
            </td>
        <td class="set">
            <p class="setdesc">
            <xsl:apply-templates select="setting/setDesc"/>
        </p>
        </td>
        </tr>
        
        <tr>
            <td class="set">
                <h3 class="setTime"><xsl:apply-templates select="setTime/ab"/></h3>
            </td>
        <td class="set">
            <p class="timedesc">
            <xsl:apply-templates select="setTime/timedesc"/>
        </p>
        </td>
        </tr>
        
        <tr>
            <td class="set">
                <h3 class="action"><xsl:apply-templates select="action/ab"/></h3>
            </td>
        <td class="set">
            <p class="actiondesc"><xsl:apply-templates select="action/actiondesc"></xsl:apply-templates></p>
        </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="div1">
        <section class="page">
            <xsl:apply-templates/>
        </section>
        <hr/>
    </xsl:template>
    
    <xsl:template match="sp">
        
        <!--<table>-->
            <div class="sp">
                
          <!--<tr class="script">
                <td class="spk">-->
                    <div class="speaker">
                        <b><xsl:apply-templates select="speaker"/></b>
                    </div>
                <!--</td>-->
                
            <!--<td class="d">-->
                <div class="dialogue">
                    <xsl:apply-templates select="dialogue"/>
                </div>
            <!--</td>
          </tr>-->
            
        </div>
        <!--</table>-->
        
    </xsl:template>
    
    
   
    
    
     
    
    <xsl:template match="p">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    
    <xsl:template match="p[@class='cain']">
        <p class="cain"><xsl:apply-templates/></p>
    </xsl:template>
    
    
    
    
    
    <xsl:template match="person[@xml:id]">
        <xsl:choose>
            <xsl:when test="parent::castItem[contains(., '*')]"><span class="{@xml:id}">
            <a href="#{@xml:id}-1" class="castLink"><xsl:apply-templates/></a>
        </span>
            </xsl:when> 
            <xsl:otherwise>
                <span class="{@xml:id}">
                    <xsl:apply-templates/>
                </span>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="speaker[@idref]">
        <span class="{@idref}" id="{@idref}-{preceding::speaker[@idref = current()/@idref] => count() +1}">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="person[@idref]">
        <span class="{@idref}">
            <xsl:apply-templates/>
        </span>
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
    
    
</xsl:stylesheet>