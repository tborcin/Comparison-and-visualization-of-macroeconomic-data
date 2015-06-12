<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="https://cdn.rawgit.com/google/code-prettify/master/loader/run_prettify.js"></script>
    <title>Raw Database</title>
  </head>
  <body>
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
        TODO:
        <ul type="square">
          <li>Source: <a href=""></a>TODO</li>
          <li>
            Example of data:
            <pre>
              <code class="prettyprint">
TODO
              </code>
            </pre>
          </li>
        </ul>
      </li>
    </ul>
  </body>
</html>
