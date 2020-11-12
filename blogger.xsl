<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
  <h2>Blogger List</h2>
  <table border="1">
    <tr bgcolor="#66cc00">
      <th>Name</th>
      <th>email</th>
      <th>No of posts</th>
    </tr>
    <xsl:for-each select="knowledgespace/blogger">
    <xsl:sort select="name"/>
    <tr>
      <xsl:choose>
      <xsl:when test="no_of_posts > 5 ">
         <td bgcolor="#66cc00">
         <xsl:value-of select="name"/>
         </td>
      </xsl:when>
      <xsl:otherwise>
         <td><xsl:value-of select="name"/></td>
      </xsl:otherwise>
      </xsl:choose>
      <td><xsl:value-of select="email"/></td>
      <td><xsl:value-of select="no_of_posts"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

