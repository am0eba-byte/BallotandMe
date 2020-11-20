<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    
    <sch:pattern id="check-person-idrefs-to-xmlids">
             
        <sch:rule context="person[@idref]/text()">
            <sch:let name="firstCapitalLetter" value="substring(@idref, 1, 1)"/>
           <sch:let name="lowerCasedSubstring" value="substring(@idref, 2)"/>
            <sch:let name="normalizedIDREF" value="$firstCapitalLetter || $lowerCasedSubstring"/>
            
            <sch:assert test="contains(., $normalizedIDREF)"> 
            YO! Make sure the idref on this person element is pointing to the correct person on the cast list! 
            </sch:assert>
        </sch:rule>
    
    </sch:pattern>
    <sch:pattern id="check--idrefs-to-xmlids">
        
        <sch:rule context="stage[@idref] | speaker[@idref]">
            <sch:assert test="contains(string() ! upper-case(.), @idref)"> 
                YO! Make sure the idref on this stage or speaker element is pointing to the correct person on the cast list! 
            </sch:assert>
        </sch:rule>
        
    </sch:pattern>
</sch:schema>
