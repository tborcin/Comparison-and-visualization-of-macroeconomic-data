<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="https://cdn.rawgit.com/google/code-prettify/master/loader/run_prettify.js"></script>
    <title>Transformed Database</title>
  </head>
  <body>
    <h3>This page contains XS schema used to transform raw database into better formatted database and transformed database.</h3>
    <p>Author: <a href="https://is.muni.cz/auth/osoba/409832">Mikuláš Mráz</a></p>

    <ul>
      <li>
        XS schema:
        <pre>
          <code class="prettyprint">
&lt;?xml version="1.0"?&gt;

&lt;xs:schema version="1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    elementFormDefault="qualified"&gt;
    
  &lt;xs:element name="countries"&gt;
    &lt;xs:complexType&gt;
      &lt;xs:sequence&gt;
        &lt;xs:element name="country" minOccurs="1" maxOccurs="unbounded"&gt;
          &lt;xs:complexType&gt;
            &lt;xs:sequence&gt;
              &lt;xs:element name="year_data" minOccurs="1" maxOccurs="unbounded"&gt;
                &lt;xs:complexType&gt;
                  &lt;xs:sequence&gt;
                    &lt;xs:element name="GDP" type="data-type" minOccurs="1"  maxOccurs="1"/&gt;
                    &lt;xs:element name="GDP_per_capita" type="data-type" minOccurs="1"  maxOccurs="1"/&gt;
                    &lt;xs:element name="Inflation" type="data-type" minOccurs="1"  maxOccurs="1"/&gt;
                    &lt;xs:element name="Unemployment" type="data-type" minOccurs="1"  maxOccurs="1"/&gt;
                    &lt;xs:element name="Consumer_price_index" type="data-type" minOccurs="1"  maxOccurs="1"/&gt;
                    &lt;xs:element name="Central_government_debt_LCU" type="data-type" minOccurs="1"  maxOccurs="1"/&gt;
                    &lt;xs:element name="Central_government_debt_GDP" type="data-type" minOccurs="1"  maxOccurs="1"/&gt;
                    &lt;xs:element name="Big_Mac_Index" type="data-type" minOccurs="1"  maxOccurs="1"/&gt;
                  &lt;/xs:sequence&gt;
                  
                  &lt;xs:attribute name="year" type="xs:integer" use="required" /&gt;
                &lt;/xs:complexType&gt;                                
                
                &lt;xs:unique name="yearPrimaryKey"&gt;
                  &lt;xs:selector xpath="year" /&gt;
                  &lt;xs:field xpath="@year" /&gt;   
                &lt;/xs:unique&gt;
              &lt;/xs:element&gt;
            &lt;/xs:sequence&gt;
                      
            &lt;xs:attribute name="country_id" type="xs:integer" use="required" /&gt;
            &lt;xs:attribute name="country_name" type="xs:string" use="required" /&gt;
          &lt;/xs:complexType&gt;                        
          
          &lt;xs:unique name="countryPrimaryKey"&gt;
            &lt;xs:selector xpath="country" /&gt;
            &lt;xs:field xpath="@country_id" /&gt;
          &lt;/xs:unique&gt;                    
        &lt;/xs:element&gt;           
      &lt;/xs:sequence&gt;
    &lt;/xs:complexType&gt;  
  &lt;/xs:element&gt;
  
  &lt;xs:simpleType name="data-type"&gt;
    &lt;xs:union&gt;
      &lt;xs:simpleType&gt;
        &lt;xs:restriction base="xs:double"/&gt;
      &lt;/xs:simpleType&gt;
  
      &lt;xs:simpleType&gt;
        &lt;xs:restriction base="xs:string"&gt;
          &lt;xs:enumeration value="N/A"/&gt;
        &lt;/xs:restriction&gt;
      &lt;/xs:simpleType&gt;
    &lt;/xs:union&gt; 
  &lt;/xs:simpleType&gt;
    
&lt;/xs:schema&gt;
          </code>
        </pre>
      
      <li>
        Example from transformed database:
        <pre>
          <code class="prettyprint">
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;countries&gt;
  &lt;country country_id = "51" country_name = "Czech Republic"&gt;
    &lt;year_data year = "2013"&gt;
      &lt;GDP&gt;154008029823.75000&lt;/GDP&gt;
      &lt;GDP_per_capita&gt;14647.521941961300&lt;/GDP_per_capita&gt;
      &lt;Inflation&gt;1.66660961129448&lt;/Inflation&gt;
      &lt;Unemployment&gt;7.00000000000000&lt;/Unemployment&gt;
      &lt;Consumer_price_index&gt;106.8101028999060&lt;/Consumer_price_index&gt;
      &lt;Central_government_debt_LCU&gt;N/A&lt;/Central_government_debt_LCU&gt;
      &lt;Central_government_debt_GDP&gt;N/A&lt;/Central_government_debt_GDP&gt;
      &lt;Big_Mac_Index&gt;3.49&lt;/Big_Mac_Index&gt;
    &lt;/year_data&gt;
    &lt;year_data year = "2014"&gt;
      &lt;GDP&gt;N/A&lt;/GDP&gt;
      &lt;GDP_per_capita&gt;N/A&lt;/GDP_per_capita&gt;
      &lt;Inflation&gt;N/A&lt;/Inflation&gt;
      &lt;Unemployment&gt;N/A&lt;/Unemployment&gt;
      &lt;Consumer_price_index&gt;107.1702525724980&lt;/Consumer_price_index&gt;
      &lt;Central_government_debt_LCU&gt;N/A&lt;/Central_government_debt_LCU&gt;
      &lt;Central_government_debt_GDP&gt;N/A&lt;/Central_government_debt_GDP&gt;
      &lt;Big_Mac_Index&gt;3.46&lt;/Big_Mac_Index&gt;
    &lt;/year_data&gt;
  &lt;/country&gt;
&lt;/countries&gt;
          </code>
        </pre>
      </li>
    </ul>
  </body>
</html>
