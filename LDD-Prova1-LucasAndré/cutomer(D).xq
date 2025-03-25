let $xml := doc("customer.xml") 
let $xslt := doc("customer(D).xsl") 
return xslt:transform($xml, $xslt)