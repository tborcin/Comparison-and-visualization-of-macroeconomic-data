<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="https://cdn.rawgit.com/google/code-prettify/master/loader/run_prettify.js"></script>
    <title>Transformed Database</title>
  </head>
  <body>

    <ul id="menu_wrap" class="l_Blue">
      <li class="button"><a href="index.html">Home</a></li>
      <li class="button"><a href="raw_db.html">Raw DB</a></li>
      <li class="button"><a href="transformed_db.html">Transformed DB</a></li>
      <li class="button"><a href="html_transformation.html">HTML transformation</a></li>
      <li class="button"><a href="result.html">Result</a></li>
    </ul>

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
  <style>body{background: #ededed;margin:0;padding:0;}#menu_wrap{position:relative;margin-top:20px;margin-left:auto;margin-right:auto;padding:0; padding-right:0px;width:504px;height:40px;list-style-type:none;-webkit-border-radius:10px;-moz-border-radius:10px;border-radius:10px;-webkit-box-shadow:0 1px 3px rgba(0,0,0,.2);-moz-box-shadow:0 1px 3px rgba(0,0,0,.2);box-shadow:0 1px 3px rgba(0,0,0,.2)}.button a{cursor:pointer;text-align:center;font:13px/100% Arial, Helvetica, sans-serif;font-weight:bold;position:relative;min-width:50px;height:20px;float:left;padding:10px;padding-top:10px;padding-bottom:10px;text-decoration:none;text-shadow:0 1px 1px rgba(0,0,0,.3)}.button:first-child a{-webkit-border-top-left-radius:10px;-webkit-border-bottom-left-radius:10px;-moz-border-topleft-radius:10px;-moz-border-bottomleft-radius:10px;border-top-left-radius:10;border-bottom-left-radius:10px}.l_Blue,.l_Blue .button a{color: #ffffef;background: #92c7da;border-right:1px solid #4082bc;background: -moz-linear-gradient(top, #92c7da 0%, #4082bc 100%);background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#92c7da), color-stop(100%,#4082bc));background: -webkit-linear-gradient(top, #92c7da 0%,#4082bc 100%);background: -o-linear-gradient(top, #92c7da 0%,#4082bc 100%);background: -ms-linear-gradient(top, #92c7da 0%,#4082bc 100%);filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#92c7da', endColorstr='#4082bc',GradientType=0 );background: linear-gradient(top, #92c7da 0%,#4082bc 100%);}.l_Blue .button a:hover,.l_Blue .button a:focus{background: #92c7da;background: -moz-linear-gradient(top, #92c7da 0%, #88bdd0 100%);background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#92c7da), color-stop(100%,#88bdd0));background: -webkit-linear-gradient(top, #92c7da 0%,#88bdd0 100%);background: -o-linear-gradient(top, #92c7da 0%,#88bdd0 100%);background: -ms-linear-gradient(top, #92c7da 0%,#88bdd0 100%);filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#92c7da', endColorstr='#88bdd0',GradientType=0 );background: linear-gradient(top, #92c7da 0%,#88bdd0 100%);}.l_Blue .button a:active{background: #88bdd0;background: -moz-linear-gradient(top, #88bdd0 0%, #92c7da 100%);background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#88bdd0), color-stop(100%,#92c7da));background: -webkit-linear-gradient(top, #88bdd0 0%,#92c7da 100%);background: -o-linear-gradient(top, #88bdd0 0%,#92c7da 100%);background: -ms-linear-gradient(top, #88bdd0 0%,#92c7da 100%);filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#88bdd0', endColorstr='#92c7da',GradientType=0 );background: linear-gradient(top, #88bdd0 0%,#92c7da 100%);}.button:last-child a{float:left;border:none; -webkit-border-top-right-radius:10px;-webkit-border-bottom-right-radius:10px;-moz-border-radius:10px;border-top-right-radius:10px;border-bottom-right-radius:10px}</style>
</html>
