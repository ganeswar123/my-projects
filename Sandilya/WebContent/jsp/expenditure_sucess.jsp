<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sandilya Group of Organisation</title>
<link href="<s:url value="/css/style.css"/>" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="../css/common.css" />
<script type="text/javascript" src="../js/common.js"></script>
<script type="text/javascript" src="../js/employee.js"></script>
</head>
<body>
<h1><s:text name="welcome.title"/></h1>
 <table class="navigationBanner" width="100%" height="25px">
	<tr>
		<td width="100%">Expenditure&nbsp;&nbsp;<img
			src="../images/menu/linkarrow.gif">Create New&nbsp;(You are
		here)</td>
	</tr>
</table>
<table class="pageName" width="100%" bgcolor="#c9d7f1" height="25px">
	<tr>
		<td width="100%"><b>Expenditure Created For <label id="a"><s:property value="trans.transactionNote" /></label></b></td>
	</tr>
</table>
<div class="success" id="message">Expenditure Added Successfully....</div>
<table width="100%" border="0" bgcolor="#c9d7f1"
	style="margin-left: 1px; margin-right: 1px; margin-top: 1px"
	height="25px">

	<tr>
		<td><input type="button" value="Back to List"
			name="Go to List" id="backlist" 
			class="btn" onmouseover="this.className='btn btnhov'"
			onmouseout="this.className='btn'"
			onclick="openNewPageHere('listEmployeeAction');" /> <input
			type="button" value="Create New Employee" name="create" id="create"
			class="btn" onmouseover="this.className='btn btnhov'"
			onmouseout="this.className='btn'"
			onclick="openNewPageHere('addExpendtiture.jsp');" /></td>
	</tr>
</table>
</body>
</html>