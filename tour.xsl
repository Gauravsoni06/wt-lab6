<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <body style="font-family:Arial;font-size:12pt;background-color:#99ccff">

  <center><h1>Hotels</h1></center>

    <xsl:for-each select="HOTELS/HOTEL">
      <div style="background-color:#669999;color:white;padding:6px">
        <span style="font-weight:bold"><xsl:value-of select="NAME"/> - </span>
        <xsl:value-of select="ADDRESS/CITY"/>
      </div>
      <div style="background-color:#c1d7d7;padding:1px;color:black; margin-left:20px;margin-bottom:1em;font-size:10pt">
        <p>
          Address:-<xsl:value-of select="ADDRESS"/>
        </p>
        
        <xsl:for-each select="ROOM">
        <p>
          Type:-<xsl:value-of select="TYPE"/>
        </p>
        <p>
          Amount:-<xsl:value-of select="PRICE/AMOUNT"/>
           <span style="font-style:italic"> (<xsl:value-of select="PRICE/CURRENCY"/>)</span>
        </p>          
        </xsl:for-each>
      </div>
    </xsl:for-each>
  </body>
</html>