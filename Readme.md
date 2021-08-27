<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128563585/12.1.6%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E4197)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to bind ASPxNewsControl to RSS feeds
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e4197/)**
<!-- run online end -->


<p>This sample illustrates how to bind ASPxNewsControl to the DevExpress News rss feed. RSS format presents data in a hierarchical view. </p><p>ASPxNewsControl allows you to correctly bind to XmlDataSource if source values are presented as attributes. It is easy to convert  your  hierarchical view to the necessary view by using the XmlDataSource.TransformFile property. Simply respecify the rss stylesheet in the following manner:</p><br />


```xml
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
```

<p> </p>

<br/>


