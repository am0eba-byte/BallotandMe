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
        <hr class="topNav"/>
        <p class="navbar"><a class="BUTTON" href="index.html">Home</a> | <a class="BUTTON" href="fullplay_OUTPUT.html">Full Play in HTML</a> | <a class="BUTTON" href="analysis.html">Analysis</a> | 
            <a class="BUTTON" href="conclusion.html">Conclusion</a></p>
        <hr class="bottomNav"/>
        <h1>The Ballot and Me - Langston Hughes Data &amp; Metadata Analysis</h1>
        
        <img id="voteplea" src="images/voteplea.jpg" alt="Image of Characters' Plea to Audience"/>
        
        <h2>Historical Character References - Data of Dialogue Frequency</h2>
        
        <h3>Historical Character Speaking Parts</h3>
        <table id="spkDATA">
            <tr>
                <th>Historical Character Image</th>
                <th>Character Name</th>
                <th>Number of Speaking Parts</th>
                <th>Link to Longest Speaking Part</th>
            </tr>
           <xsl:apply-templates select="//castItem" mode="speakingparts"/>
        </table>
        
        <h3>Character References made by Narrator</h3>
        <table id="refDATA">
            <tr>
                <th>Historical Character Image</th>
                <th>Character Name</th>
                <th>Number of Times Referenced by Narrator</th>
                <th>First Reference Context</th>
            </tr>
            <xsl:apply-templates select="//castItem" mode="reference"/>
        </table>
        
    </body>
        </html>
    </xsl:template>
    
    <xsl:template match="castItem" mode="speakingparts">
        <xsl:if test="count(//sp[speaker/@idref=current()/person/@xml:id]) gt 0"><tr>
            <td><xsl:comment>Image of hist. character here!</xsl:comment></td>
            <td><xsl:apply-templates select="child::person"/></td>
            <td><xsl:value-of select="//sp[speaker/@idref=current()/person/@xml:id] =>count()"/></td>
            <td><xsl:variable name="stringlengthOfLongestPart" select="//sp[speaker/@idref=current()/person/@xml:id]//dialogue ! string() ! string-length() => max() "/>
                <xsl:variable name="wordCountLongestPart" select="//sp[speaker/@idref=current()/person/@xml:id]/count(descendant::dialogue ! string() ! tokenize(., ' ')) => max()"/>
                
                <xsl:apply-templates select="//sp[speaker/@idref=current()/person/@xml:id][.//dialogue ! string() ! string-length() = $stringlengthOfLongestPart]//dialogue ! normalize-space()"/>
                <span class="wordCount">Word count: <xsl:value-of select="$wordCountLongestPart"/></span>
                
         <!--2020-12-09 ebb: This was fun! :-)       
                <ul><li>Longest Speaking Part in Characters: <xsl:value-of select="$stringlengthOfLongestPart"/> </li>
                    <li>Longest Speaking Part in Words: <xsl:value-of select="$wordCountLongestPart"/></li>
                    <li><xsl:apply-templates select="//sp[speaker/@idref=current()/person/@xml:id][.//dialogue ! string() ! string-length() = $stringlengthOfLongestPart]//dialogue ! normalize-space()"/></li>
                    <li>WORDCOUNT VERSION!!!!<xsl:apply-templates select="//sp[speaker/@idref=current()/person/@xml:id][count(.//dialogue ! string() ! tokenize(., ' '))  = $wordCountLongestPart]//dialogue ! normalize-space()"/></li>
                
                </ul>-->
            
            </td>
        </tr></xsl:if>
    </xsl:template>
    
    <xsl:template match="castItem" mode="reference">
        <!--<xsl:if test="count(//sp/dialogue/p/person[@idref=current()/person/@xml:id]) lt 1">-->
            <xsl:if test="child::person">
             <tr>
                <td><xsl:comment>Image of hist. character here!</xsl:comment></td>
                <td><xsl:apply-templates select="child::person"/></td>
                <td><xsl:value-of select="//p/person[@idref=current()/person/@xml:id] =>count()"/></td>
                 <td><xsl:apply-templates select="//dialogue/p[person[@idref=current()/person/@xml:id][1]][string-length() gt 20] ! normalize-space()"/></td>
            </tr>
            </xsl:if>
        <!--</xsl:if>-->
    </xsl:template>
    
    <!-- //div1/sp/speaker/@idref  => count(@idref =>distinct-values()) -->
   <!-- <xsl:template match="sp[speaker/@idref]">
        <xsl:value-of select=".//speaker/@idref => distinct-values() => count()"></xsl:value-of>
    </xsl:template>-->
    

    
</xsl:stylesheet>