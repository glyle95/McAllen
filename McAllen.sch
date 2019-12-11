<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <sch:pattern>
        <!-- Change the attribute to point the element being the context of the assert expression. -->
        <sch:rule context='tei:body//tei:p//tei:persName/@type'>
            <sch:let name='xmlIDVals” value=“//tei:body/tei:p/@xml:id'/>
                <sch:let name='typeVals'  value='for $i in $xmlIDVals return concat (‘#’, $i)'/>
                   <sch:assert test='.=$typeVals'>
                      Value must be one of the following: <sch:value-of select='string-join($typeVals, ‘,’'/>                         
                   </sch:assert>

            <sch:rule context='tei:body//tei:p//tei:placeName/@type'>
                <sch:let name='xmlIDVals” value=“//tei:body/tei:p/@xml:id'/>
                <sch:let name='typeVals'  value='for $i in $xmlIDVals return concat (‘#’, $i)'/>
                <sch:assert test='.=$typeVals'>
                    Value must be one of the following: <sch:value-of select='string-join($typeVals, ‘,’'/>                         
                </sch:assert>
            </sch:rule>
                <sch:rule context='tei:body//tei:p//tei:orgName/@type'>
                    <sch:let name='xmlIDVals” value=“//tei:body/tei:p/@xml:id'/>
                    <sch:let name='typeVals'  value='for $i in $xmlIDVals return concat (‘#’, $i)'/>
                    <sch:assert test='.=$typeVals'>
                        Value must be one of the following: <sch:value-of select='string-join($typeVals, ‘,’'/>                         
                    </sch:assert>
                  </sch:rule>    
        </sch:pattern>
</sch:schema>