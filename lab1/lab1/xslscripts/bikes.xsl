<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml"
            encoding="UTF-16"
            doctype-system="http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd"
            doctype-public="-//W3C//DTD XHTML 1.1//EN" indent="yes"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>The Bikes Table</title>
      </head>
      <body>
        <h1>The Bikes Table</h1>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th>Name</th>
            <th>Price</th>
            <th>Description</th>
          </tr>
          <xsl:apply-templates/>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="bike">
    <tr>
     <td>
         <xsl:element name="a">
             <xsl:attribute name="href">
                 <xsl:value-of select="url"/>
             </xsl:attribute>
             <xsl:value-of select="name"/>
         </xsl:element>
         <xsl:element name="img">
             <xsl:attribute name="width">200px</xsl:attribute>
             <xsl:attribute name="src">
                 <xsl:value-of select="image"/>
             </xsl:attribute>
         </xsl:element>
     </td>
     <td><xsl:value-of select="price"/> грн.</td>
     <td><xsl:value-of select="description"/></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>