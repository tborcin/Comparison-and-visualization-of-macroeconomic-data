<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="https://cdn.rawgit.com/google/code-prettify/master/loader/run_prettify.js"></script>
    <title>Raw Database</title>
  </head>
  <body>
    
    <ul id="menu_wrap" class="l_Blue">
      <li class="button"><a href="index.html">Home</a></li>
      <li class="button"><a href="raw_db.html">Raw DB</a></li>
      <li class="button"><a href="transformed_db.html">Transformed DB</a></li>
      <li class="button"><a href="html_transformation.html">HTML transformation</a></li>
      <li class="button"><a href="result.html">Result</a></li>
    </ul>

    <h2>This page contains information about all used resources.</h2>
    <ul>
      <li>
        Gross Domestic Product (GDP) (constant 2005 US$): 
        <ul type="square">
          <li>Source: <a href="http://api.worldbank.org/v2/en/indicator/ny.gdp.mktp.kd?downloadformat=xml">The World Bank</a></li>
          <li>Example of data:</li>
          <pre>
            <code class="prettyprint">
&lt;?xml version="1.0" encoding="utf-8"?&gt;
  &lt;Root xmlns:wb="http://www.worldbank.org"&gt;
  &lt;data&gt;
    &lt;record&gt;
      &lt;field name="Country or Area" key="CZE"&gt;Czech Republic&lt;/field&gt;
      &lt;field name="Item" key="NY.GDP.MKTP.KD"&gt;GDP (constant 2005 US$)&lt;/field&gt;
      &lt;field name="Year"&gt;2013&lt;/field&gt;
      &lt;field name="Value"&gt;154008029823.75&lt;/field&gt;
    &lt;/record&gt;
    &lt;record&gt;
      &lt;field name="Country or Area" key="CZE"&gt;Czech Republic&lt;/field&gt;
      &lt;field name="Item" key="NY.GDP.MKTP.KD"&gt;GDP (constant 2005 US$)&lt;/field&gt;
      &lt;field name="Year"&gt;2014&lt;/field&gt;
      &lt;field name="Value" /&gt;
    &lt;/record&gt;
  &lt;/data&gt;
&lt;/Root&gt;
            </code>
          </pre>
        </ul>
      </li>

      <li>
        Gross Domestic Product (GDP) per capita (constant 2005 US$):
        <ul type="square">
          <li>Source: <a href="http://api.worldbank.org/v2/en/indicator/ny.gdp.pcap.kd?downloadformat=xml">The World Bank</a></li>
          <li>
            Example of data:
            <pre>
              <code class="prettyprint">
&lt;?xml version="1.0" encoding="utf-8"?&gt;
&lt;Root xmlns:wb="http://www.worldbank.org"&gt;
  &lt;data&gt;
    &lt;record&gt;
      &lt;field name="Country or Area" key="CZE"&gt;Czech Republic&lt;/field&gt;
      &lt;field name="Item" key="NY.GDP.PCAP.KD"&gt;GDP per capita (constant 2005 US$)&lt;/field&gt;
      &lt;field name="Year"&gt;2013&lt;/field&gt;
      &lt;field name="Value"&gt;14647.5219419613&lt;/field&gt;
    &lt;/record&gt;
    &lt;record&gt;
      &lt;field name="Country or Area" key="CZE"&gt;Czech Republic&lt;/field&gt;
      &lt;field name="Item" key="NY.GDP.PCAP.KD"&gt;GDP per capita (constant 2005 US$)&lt;/field&gt;
      &lt;field name="Year"&gt;2014&lt;/field&gt;
      &lt;field name="Value" /&gt;
    &lt;/record&gt;
  &lt;/data&gt;
&lt;/Root&gt;
              </code>
            </pre>
          </li>
        </ul>
      </li>

      <li>
        Inflation, Gross Domestic Product (GDP) deflator (annual %):
        <ul type="square">
          <li>Source: <a href="http://api.worldbank.org/v2/en/indicator/ny.gdp.defl.kd.zg?downloadformat=xml">The World Bank</a></li>
          <li>
            Example of data:
            <pre>
              <code class="prettyprint">
&lt;?xml version="1.0" encoding="utf-8"?&gt;
&lt;Root xmlns:wb="http://www.worldbank.org"&gt;
  &lt;data&gt;
    &lt;record&gt;
      &lt;field name="Country or Area" key="CZE"&gt;Czech Republic&lt;/field&gt;
      &lt;field name="Item" key="NY.GDP.DEFL.KD.ZG"&gt;Inflation, GDP deflator (annual %)&lt;/field&gt;
      &lt;field name="Year"&gt;2013&lt;/field&gt;
      &lt;field name="Value"&gt;1.66660961129448&lt;/field&gt;
    &lt;/record&gt;
    &lt;record&gt;
      &lt;field name="Country or Area" key="CZE"&gt;Czech Republic&lt;/field&gt;
      &lt;field name="Item" key="NY.GDP.DEFL.KD.ZG"&gt;Inflation, GDP deflator (annual %)&lt;/field&gt;
      &lt;field name="Year"&gt;2014&lt;/field&gt;
      &lt;field name="Value" /&gt;
    &lt;/record&gt;
  &lt;/data&gt;
&lt;/Root&gt;
              </code>
            </pre>
          </li>
        </ul>
      </li>

      <li>
        Unemployment, total (% of total labor force) (national estimate):
        <ul type="square">
          <li>Source: <a href="http://api.worldbank.org/v2/en/indicator/sl.uem.totl.ne.zs?downloadformat=xml">The World Bank</a></li>
          <li>
            Example of data:
            <pre>
              <code class="prettyprint">
&lt;?xml version="1.0" encoding="utf-8"?&gt;
&lt;Root xmlns:wb="http://www.worldbank.org"&gt;
  &lt;data&gt;
    &lt;record&gt;
      &lt;field name="Country or Area" key="CZE"&gt;Czech Republic&lt;/field&gt;
      &lt;field name="Item" key="SL.UEM.TOTL.NE.ZS"&gt;Unemployment, total (% of total labor force) (national estimate)&lt;/field&gt;
      &lt;field name="Year"&gt;2013&lt;/field&gt;
      &lt;field name="Value"&gt;7&lt;/field&gt;
    &lt;/record&gt;
    &lt;record&gt;
      &lt;field name="Country or Area" key="CZE"&gt;Czech Republic&lt;/field&gt;
      &lt;field name="Item" key="SL.UEM.TOTL.NE.ZS"&gt;Unemployment, total (% of total labor force) (national estimate)&lt;/field&gt;
      &lt;field name="Year"&gt;2014&lt;/field&gt;
      &lt;field name="Value" /&gt;
    &lt;/record&gt;
  &lt;/data&gt;
&lt;/Root&gt;
              </code>
            </pre>
          </li>
        </ul>
      </li>

      <li>
        Consumer price index (2010 = 100):
        <ul type="square">
          <li>Source: <a href="http://api.worldbank.org/v2/en/indicator/fp.cpi.totl?downloadformat=xml">The World Bank</a></li>
          <li>
            Example of data:
            <pre>
              <code class="prettyprint">
&lt;?xml version="1.0" encoding="utf-8"?&gt;
&lt;Root xmlns:wb="http://www.worldbank.org"&gt;
  &lt;data&gt;
    &lt;record&gt;
      &lt;field name="Country or Area" key="CZE"&gt;Czech Republic&lt;/field&gt;
      &lt;field name="Item" key="FP.CPI.TOTL"&gt;Consumer price index (2010 = 100)&lt;/field&gt;
      &lt;field name="Year"&gt;2013&lt;/field&gt;
      &lt;field name="Value"&gt;106.810102899906&lt;/field&gt;
    &lt;/record&gt;
    &lt;record&gt;
      &lt;field name="Country or Area" key="CZE"&gt;Czech Republic&lt;/field&gt;
      &lt;field name="Item" key="FP.CPI.TOTL"&gt;Consumer price index (2010 = 100)&lt;/field&gt;
      &lt;field name="Year"&gt;2014&lt;/field&gt;
      &lt;field name="Value"&gt;107.170252572498&lt;/field&gt;
    &lt;/record&gt;
  &lt;/data&gt;
&lt;/Root&gt;
              </code>
            </pre>
          </li>
        </ul>
      </li>

      <li>
        Central government debt, total (current LCU):
        <ul type="square">
          <li>Source: <a href="http://api.worldbank.org/v2/en/indicator/gc.dod.totl.cn?downloadformat=xml">The World Bank</a></li>
          <li>
            Example of data:
            <pre>
              <code class="prettyprint">
&lt;?xml version="1.0" encoding="utf-8"?&gt;
&lt;Root xmlns:wb="http://www.worldbank.org"&gt;
  &lt;data&gt;
    &lt;record&gt;
      &lt;field name="Country or Area" key="CZE"&gt;Czech Republic&lt;/field&gt;
      &lt;field name="Item" key="GC.DOD.TOTL.CN"&gt;Central government debt, total (current LCU)&lt;/field&gt;
      &lt;field name="Year"&gt;2013&lt;/field&gt;
      &lt;field name="Value" /&gt;
    &lt;/record&gt;
    &lt;record&gt;
      &lt;field name="Country or Area" key="CZE"&gt;Czech Republic&lt;/field&gt;
      &lt;field name="Item" key="GC.DOD.TOTL.CN"&gt;Central government debt, total (current LCU)&lt;/field&gt;
      &lt;field name="Year"&gt;2014&lt;/field&gt;
      &lt;field name="Value" /&gt;
    &lt;/record&gt;
  &lt;/data&gt;
&lt;/Root&gt;
              </code>
            </pre>
          </li>
        </ul>
      </li>

      <li>
        Central government debt, total (% of Gross Domestic Product (GDP)):
        <ul type="square">
          <li>Source: <a href="http://api.worldbank.org/v2/en/indicator/gc.dod.totl.gd.zs?downloadformat=xml">The World Bank</a></li>
          <li>
            Example of data:
            <pre>
              <code class="prettyprint">
&lt;?xml version="1.0" encoding="utf-8"?&gt;
&lt;Root xmlns:wb="http://www.worldbank.org"&gt;
  &lt;data&gt;
    &lt;record&gt;
      &lt;field name="Country or Area" key="CZE"&gt;Czech Republic&lt;/field&gt;
      &lt;field name="Item" key="GC.DOD.TOTL.GD.ZS"&gt;Central government debt, total (% of GDP)&lt;/field&gt;
      &lt;field name="Year"&gt;2013&lt;/field&gt;
      &lt;field name="Value" /&gt;
    &lt;/record&gt;
    &lt;record&gt;
      &lt;field name="Country or Area" key="CZE"&gt;Czech Republic&lt;/field&gt;
      &lt;field name="Item" key="GC.DOD.TOTL.GD.ZS"&gt;Central government debt, total (% of GDP)&lt;/field&gt;
      &lt;field name="Year"&gt;2014&lt;/field&gt;
      &lt;field name="Value" /&gt;
    &lt;/record&gt;
  &lt;/data&gt;
&lt;/Root&gt;
              </code>
            </pre>
          </li>
        </ul>
      </li>

      <li>
        Big Mac index:
        <ul type="square">
          <li>Source: <a href="http://bigmacindex.org"></a>Big Mac Index</li>
          <li>Source: <a href="http://www.economist.com"></a>Economist</li>
        </ul>
      </li>
    </ul>
  </body>
  <style>body{background: #ededed;margin:0;padding:0;}#menu_wrap{position:relative;margin-top:20px;margin-left:auto;margin-right:auto;padding:0; padding-right:0px;width:504px;height:40px;list-style-type:none;-webkit-border-radius:10px;-moz-border-radius:10px;border-radius:10px;-webkit-box-shadow:0 1px 3px rgba(0,0,0,.2);-moz-box-shadow:0 1px 3px rgba(0,0,0,.2);box-shadow:0 1px 3px rgba(0,0,0,.2)}.button a{cursor:pointer;text-align:center;font:13px/100% Arial, Helvetica, sans-serif;font-weight:bold;position:relative;min-width:50px;height:20px;float:left;padding:10px;padding-top:10px;padding-bottom:10px;text-decoration:none;text-shadow:0 1px 1px rgba(0,0,0,.3)}.button:first-child a{-webkit-border-top-left-radius:10px;-webkit-border-bottom-left-radius:10px;-moz-border-topleft-radius:10px;-moz-border-bottomleft-radius:10px;border-top-left-radius:10;border-bottom-left-radius:10px}.l_Blue,.l_Blue .button a{color: #ffffef;background: #92c7da;border-right:1px solid #4082bc;background: -moz-linear-gradient(top, #92c7da 0%, #4082bc 100%);background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#92c7da), color-stop(100%,#4082bc));background: -webkit-linear-gradient(top, #92c7da 0%,#4082bc 100%);background: -o-linear-gradient(top, #92c7da 0%,#4082bc 100%);background: -ms-linear-gradient(top, #92c7da 0%,#4082bc 100%);filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#92c7da', endColorstr='#4082bc',GradientType=0 );background: linear-gradient(top, #92c7da 0%,#4082bc 100%);}.l_Blue .button a:hover,.l_Blue .button a:focus{background: #92c7da;background: -moz-linear-gradient(top, #92c7da 0%, #88bdd0 100%);background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#92c7da), color-stop(100%,#88bdd0));background: -webkit-linear-gradient(top, #92c7da 0%,#88bdd0 100%);background: -o-linear-gradient(top, #92c7da 0%,#88bdd0 100%);background: -ms-linear-gradient(top, #92c7da 0%,#88bdd0 100%);filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#92c7da', endColorstr='#88bdd0',GradientType=0 );background: linear-gradient(top, #92c7da 0%,#88bdd0 100%);}.l_Blue .button a:active{background: #88bdd0;background: -moz-linear-gradient(top, #88bdd0 0%, #92c7da 100%);background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#88bdd0), color-stop(100%,#92c7da));background: -webkit-linear-gradient(top, #88bdd0 0%,#92c7da 100%);background: -o-linear-gradient(top, #88bdd0 0%,#92c7da 100%);background: -ms-linear-gradient(top, #88bdd0 0%,#92c7da 100%);filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#88bdd0', endColorstr='#92c7da',GradientType=0 );background: linear-gradient(top, #88bdd0 0%,#92c7da 100%);}.button:last-child a{float:left;border:none; -webkit-border-top-right-radius:10px;-webkit-border-bottom-right-radius:10px;-moz-border-radius:10px;border-top-right-radius:10px;border-bottom-right-radius:10px} </style>
</html>
