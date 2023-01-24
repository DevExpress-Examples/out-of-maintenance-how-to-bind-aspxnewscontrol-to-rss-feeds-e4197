﻿<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dx:ASPxNewsControl DataSourceID="XmlDataSource1" ID="ASPxNewsControl1" runat="server"
			HeaderTextField="HeaderText" TextField="Text"                      
			NavigateUrlField="Link" Width="100%" ClientInstanceName="newsControl">
			<ItemSettings MaxLength="120" ShowHeaderAsLink="True" TailText="Details"/>
		</dx:ASPxNewsControl>
	</div>
	<asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="http://devexpress.com/rss/news/news20.xml"
		EnableCaching="true" CacheDuration="3600" TransformFile="~/App_Data/RSS.xslt"
		XPath="//item"></asp:XmlDataSource>
	</form>
</body>
</html>