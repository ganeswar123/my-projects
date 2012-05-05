<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<link href="<s:url value="/css/style.css"/>" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="../css/common.css" />
<script type="text/javascript" src="../js/common.js"></script>
<script type="text/javascript" src="../js/employee.js"></script>
</head>
 

<body class="bgcolorMargins" bgcolor="white">
<h1><s:text name="welcome.title"/></h1>
 <s:form>
 <table class="navigationBanner" width="100%" height="25px">
	<tr>
		<td width="100%">Employee&nbsp;&nbsp;<img
			src="../images/menu/linkarrow.gif">List Existing&nbsp;(You are
		here)</td>
	</tr>
</table>
<table class="pageName" width="100%" bgcolor="#c9d7f1" height="25px">
	<tr>
		<td width="100%"><b>List of Employee</b></td>
	</tr>
</table>
<table width="100%" cellpadding="0" cellspacing="0" border="1"
	bordercolor="#c9d7f1"
	style="margin-left: 1px; margin-right: 1px; margin-top: 1px">
	<tr>
		<td width="100%">
		<table class="manitable" id='manitable'>
<s:if test="(employeeList == null) || (employeeList.isEmpty())">	
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td class="manith" align="center" valign="middle">No Employee to
				list down!</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
</s:if>
<s:if test="(employeeList!= null) && (!employeeList.isEmpty())">
<tr id="tableHeader">
				<th width="2%" class="manith"><input type=CHECKBOX
					onclick="checkall();"></th>
				<th width="10%" class="manith">First Name</th>
				<th width="16%" class="manith">Middle Name</th>
				<th width="18%" class="manith">Last Name</th>
				<th width="18%" class="manith">Email</th>
				<th width="18%" class="manith">Phone</th>
				<th width="18%" class="manith">Hire Date</th>
				<th width="18%" class="manith">Remove</th>
			</tr>
			<s:iterator value="employeeList" status="userStatus">
			<tr id="tableRow<s:property value="#userStatus.count" />" onmouseover="ChangeColor(this, true);"
				onmouseout="ChangeColor(this, false);">

				<td class="manitd"><input type=CHECKBOX
					onclick="javascript:isAnyCheckBoxSelected();"></td>
				<td class="manitd"><a id="row<s:property value="#userStatus.count" />"
					href="<s:url value="getEmployeeAction?emp.empID=%{empID}" />"><s:property value="firstName" /></a></td>
			<td class="manitd"><s:property value="middleName" /></td>
			<td class="manitd"><s:property value="lastName" /></td>
			<td class="manitd"><s:property value="email" /></td>
			<td class="manitd"><s:property value="phone" /></td>
			<td class="manitd"><s:date name="hireDate" format="dd/MMM/yyyy" /></td>
			<td class="manitd"><a href="<s:url value="deleteEmployeeAction?emp.empID=%{empID}"/>" >Remove</a>
			</td>

			</tr>
			</s:iterator>
</s:if>
</table>
		</td>
	</tr>
</table>

<table width="100%" border="0" bgcolor="#c9d7f1"
	style="margin-left: 1px; margin-right: 1px; margin-top: 1px"
	height="25px">

	<tr>
		<td><input type="button" value="Delete Selected"
			name="deleteSelected" id="deleteSelected" disabled="disabled"
			class="btn" onmouseover="this.className='btn btnhov'"
			onmouseout="this.className='btn'"
			onclick="return confirmDelete('domainList');" /> <input
			type="button" value="Create New Employee" name="create" id="create"
			class="btn" onmouseover="this.className='btn btnhov'"
			onmouseout="this.className='btn'"
			onclick="openNewPageHere('employee_create.jsp');" /></td>
	</tr>
</table>
</s:form>
<br/>
<br/>
 <s:a href="index.jsp" cssStyle="align:center;">Back to Home</s:a>
</body>
</html>