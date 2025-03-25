let $xml := doc("customer.xml") 
let $xslt := doc("customer(E).xsl") 
return xslt:transform($xml, $xslt)


