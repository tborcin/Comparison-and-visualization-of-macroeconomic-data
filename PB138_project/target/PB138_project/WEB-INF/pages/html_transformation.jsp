<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="https://cdn.rawgit.com/google/code-prettify/master/loader/run_prettify.js"></script>
    <title>HTML transformation</title>
  </head>
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
</html>
