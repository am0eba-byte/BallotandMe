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
    
    <sch:pattern>
        <sch:title>Schematron Exercise 2 - Sanity checking dates with xsd:gYear attribute values (unsuccessfully)</sch:title>
        <sch:rule context="date">
            <assert test="contains(@when)">Gotta have the same goshdarn number as the wrapped year in the goshdarn attribute value ya silly goose!</assert>
            
            <report test="number(@when) => distinct-values() != date ! number() => distinct-values()">You SCOUNDREL, go fix the heckin' attribute value to match the date!! you clumsy oaf you.</report>
        </sch:rule>
    </sch:pattern>
</sch:schema>
