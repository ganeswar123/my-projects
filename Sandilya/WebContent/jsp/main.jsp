<%@page import="com.sgo.dto.user.User"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<title><s:text name="welcome.title"/></title>
<link rel="stylesheet" type="text/css" href="../css/common.css" />

</head>
<body class="mani">
<!-- to fix the width of the page un-comment below line and commnet the line after that -->
<!-- 
	<table height="100%" width="100%" border="0" cellpadding="0"
	cellspacing="0" align="center">
 -->

<table height="110%" width="1024" border="0" cellpadding="0"
	cellspacing="0" align="center">


	<!-- style="margin-bottom: 2px; margin-left: 2.5px; margin-right: = 2px; margin-top: 2px;" -->
	<tr height="50px">
			<td width="100%" background="images/banner.png"
				align="right" valign="top" 
				style="margin: 1; border-width: 2px; border-style: solid; border-color: teal;">
				Welcome! &nbsp;<s:property value="#session.SANDILYA_USER_SESSSION_HANDLE.userName" default="Gaust"/>
				<br>
				<a href="logoutAction" target="_parent">Logout</a>&nbsp;
				</td>
		</tr>
	<tr valign="top" height="100%">
		<td width="100%" bgcolor="#e8eefa"
			style="border-width: 2px; border-style: solid; border-color: teal; tabindex: -1;">
			<jsp:include page="mainPage.jsp" /></td>
	</tr>
	<!-- 
		<tr height="50px">
			<td width="100%" background="../images/footer_background.gif"
				align="center" valign="middle"><a href="">Home</a> | <a href="">Domains</a>
			| <a href="">Attributess</a> | <a href="">Permissions</a> | <a href="">OU's</a>
			| <a href="">IO's</a> | <a href="">Shipment Methods</a> | <a href="">Users</a>
			
		</tr>
	 -->
</table>


</body>
</html>