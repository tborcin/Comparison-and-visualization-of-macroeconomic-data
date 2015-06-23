<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="https://cdn.rawgit.com/google/code-prettify/master/loader/run_prettify.js"></script>
    <title>HTML transformation</title>
  </head>
  <body>

    <ul id="menu_wrap" class="l_Blue">
      <li class="button"><a href="index.html">Home</a></li>
      <li class="button"><a href="raw_db.html">Raw DB</a></li>
      <li class="button"><a href="transformed_db.html">Transformed DB</a></li>
      <li class="button"><a href="html_transformation.html">HTML transformation</a></li>
      <li class="button"><a href="result.html">Result</a></li>
    </ul>

    <h3>This page contains XSLT schema used to transform formatted database into html table.</h3>
    <p>Author: <a href="https://is.muni.cz/auth/osoba/396464">Marián Čamák</a></p>

    <ul>
      <li>
        XSLT schema:
        <pre>
          <code class="prettyprint">
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="1.0"&gt;

    &lt;xsl:output method="xml" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
        doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="UTF-8"
        indent="yes"/&gt;

    &lt;xsl:template match="/countries"&gt;
        &lt;div class="gdp"&gt;
            &lt;xsl:for-each select="country"&gt;
                &lt;div id="{@country_id}"&gt;
                    &lt;h2&gt;
                        &lt;xsl:value-of select="@country_name"/&gt;
                    &lt;/h2&gt;
                    &lt;table border="1"&gt;
                        &lt;tr&gt;
                            &lt;th&gt;Year:&lt;/th&gt;
                            &lt;xsl:for-each select="*[position() = 1]/*"&gt;
                                &lt;th&gt;
                                    &lt;xsl:value-of select="name(.)"/&gt;
                                &lt;/th&gt;
                            &lt;/xsl:for-each&gt;
                        &lt;/tr&gt;

                        &lt;xsl:for-each select="year_data"&gt;
                            &lt;tr&gt;
                                &lt;th&gt;
                                    &lt;xsl:value-of select="@year"/&gt;
                                &lt;/th&gt;
                                &lt;xsl:for-each select="*"&gt;
                                    &lt;td&gt;
                                        &lt;xsl:value-of select="."/&gt;
                                    &lt;/td&gt;
                                &lt;/xsl:for-each&gt;
                            &lt;/tr&gt;
                        &lt;/xsl:for-each&gt;

                    &lt;/table&gt;
                    &lt;hr/&gt;
                &lt;/div&gt;
            &lt;/xsl:for-each&gt;
        &lt;/div&gt;
    &lt;/xsl:template&gt;

&lt;/xsl:stylesheet&gt;
          </code>
        </pre>

      <li>
        Example from html table:
        <pre>
          <code class="prettyprint">
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;!DOCTYPE div PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"&gt;
&lt;div class="gdp"&gt;
  &lt;div id="51"&gt;
    &lt;h2&gt;Czech Republic&lt;/h2&gt;
      &lt;table border="1"&gt;
        &lt;tr&gt;
          &lt;th&gt;Year:&lt;/th&gt;
          &lt;th&gt;GDP&lt;/th&gt;
          &lt;th&gt;GDP_per_capita&lt;/th&gt;
          &lt;th&gt;Inflation&lt;/th&gt;
          &lt;th&gt;Unemployment&lt;/th&gt;
          &lt;th&gt;Consumer_price_index&lt;/th&gt;
          &lt;th&gt;Central_government_debt_LCU&lt;/th&gt;
          &lt;th&gt;Central_government_debt_GDP&lt;/th&gt;
          &lt;th&gt;Big_Mac_Index&lt;/th&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
          &lt;th&gt;2012&lt;/th&gt;
            &lt;td&gt;155096266671.76801&lt;/td&gt;
            &lt;td&gt;14755.916582041000&lt;/td&gt;
            &lt;td&gt;1.44821429297659&lt;/td&gt;
            &lt;td&gt;7.00000000000000&lt;/td&gt;
            &lt;td&gt;105.2993451824140&lt;/td&gt;
            &lt;td&gt;1649926253166&lt;/td&gt;
            &lt;td&gt;40.7623204226130&lt;/td&gt;
            &lt;td&gt;3.34&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
          &lt;th&gt;2013&lt;/th&gt;
            &lt;td&gt;154008029823.75000&lt;/td&gt;
            &lt;td&gt;14647.521941961300&lt;/td&gt;
            &lt;td&gt;1.66660961129448&lt;/td&gt;
            &lt;td&gt;7.00000000000000&lt;/td&gt;
            &lt;td&gt;106.8101028999060&lt;/td&gt;
            &lt;td&gt;N/A&lt;/td&gt;
            &lt;td&gt;N/A&lt;/td&gt;
            &lt;td&gt;3.49&lt;/td&gt;
        &lt;/tr&gt;
      &lt;/table&gt;
    &lt;hr/&gt;
  &lt;/div&gt;
&lt;/div&gt;
          </code>
        </pre>
      </li>
    </ul>
  </body>
  <style>body{background: #ededed;margin:0;padding:0;}#menu_wrap{position:relative;margin-top:20px;margin-left:auto;margin-right:auto;padding:0; padding-right:0px;width:504px;height:40px;list-style-type:none;-webkit-border-radius:10px;-moz-border-radius:10px;border-radius:10px;-webkit-box-shadow:0 1px 3px rgba(0,0,0,.2);-moz-box-shadow:0 1px 3px rgba(0,0,0,.2);box-shadow:0 1px 3px rgba(0,0,0,.2)}.button a{cursor:pointer;text-align:center;font:13px/100% Arial, Helvetica, sans-serif;font-weight:bold;position:relative;min-width:50px;height:20px;float:left;padding:10px;padding-top:10px;padding-bottom:10px;text-decoration:none;text-shadow:0 1px 1px rgba(0,0,0,.3)}.button:first-child a{-webkit-border-top-left-radius:10px;-webkit-border-bottom-left-radius:10px;-moz-border-topleft-radius:10px;-moz-border-bottomleft-radius:10px;border-top-left-radius:10;border-bottom-left-radius:10px}.l_Blue,.l_Blue .button a{color: #ffffef;background: #92c7da;border-right:1px solid #4082bc;background: -moz-linear-gradient(top, #92c7da 0%, #4082bc 100%);background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#92c7da), color-stop(100%,#4082bc));background: -webkit-linear-gradient(top, #92c7da 0%,#4082bc 100%);background: -o-linear-gradient(top, #92c7da 0%,#4082bc 100%);background: -ms-linear-gradient(top, #92c7da 0%,#4082bc 100%);filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#92c7da', endColorstr='#4082bc',GradientType=0 );background: linear-gradient(top, #92c7da 0%,#4082bc 100%);}.l_Blue .button a:hover,.l_Blue .button a:focus{background: #92c7da;background: -moz-linear-gradient(top, #92c7da 0%, #88bdd0 100%);background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#92c7da), color-stop(100%,#88bdd0));background: -webkit-linear-gradient(top, #92c7da 0%,#88bdd0 100%);background: -o-linear-gradient(top, #92c7da 0%,#88bdd0 100%);background: -ms-linear-gradient(top, #92c7da 0%,#88bdd0 100%);filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#92c7da', endColorstr='#88bdd0',GradientType=0 );background: linear-gradient(top, #92c7da 0%,#88bdd0 100%);}.l_Blue .button a:active{background: #88bdd0;background: -moz-linear-gradient(top, #88bdd0 0%, #92c7da 100%);background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#88bdd0), color-stop(100%,#92c7da));background: -webkit-linear-gradient(top, #88bdd0 0%,#92c7da 100%);background: -o-linear-gradient(top, #88bdd0 0%,#92c7da 100%);background: -ms-linear-gradient(top, #88bdd0 0%,#92c7da 100%);filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#88bdd0', endColorstr='#92c7da',GradientType=0 );background: linear-gradient(top, #88bdd0 0%,#92c7da 100%);}.button:last-child a{float:left;border:none; -webkit-border-top-right-radius:10px;-webkit-border-bottom-right-radius:10px;-moz-border-radius:10px;border-top-right-radius:10px;border-bottom-right-radius:10px}</style>
</html>
