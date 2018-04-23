<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <items>
      <xsl:for-each select="//item">
        <item Name="{position()}" HeaderText="{title}" Link="{link}" Text="{description}" NavigateUrl="{position()}" Date="{pubDate}" ImageUrl="{image/url}"/>
      </xsl:for-each>
    </items>
  </xsl:template>
</xsl:stylesheet>