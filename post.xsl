<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <h2>Blog posts</h2>
  <table border="1">
    <tr bgcolor="#66cc00">
      <th style="text-align:left">PID</th>
      <th style="text-align:left">Topic</th>
      <th style="text-align:left">Date</th>
      <th style="text-align:left">Title</th>
    </tr>
    <xsl:for-each select="blogpost/post">
    <xsl:sort select="date"/>
    <tr bgcolor="#ccff99">
      <td><xsl:value-of select="@pid"/></td>
      <td><xsl:value-of select="topic"/></td>
      <td><xsl:value-of select="date"/></td>
      <td><xsl:value-of select="title"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

