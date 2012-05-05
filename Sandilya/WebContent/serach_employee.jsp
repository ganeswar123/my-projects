<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <link href="<s:url value="/css/style.css"/>" rel="stylesheet" type="text/css"/>
</head>
 
<body>
<h1><s:text name="welcome.title"/></h1>
 
<h2>Search Employee</h2>
<s:actionerror/>
<s:form action="searchEmployeeAction" namespace="/">
  <s:textfield name="firstName" label="FirstName" value="" />
  <s:textfield name="lastName" label="LastName" value="" />
  <s:textfield name="email" label="Email" value="" />
   <s:submit />
</s:form>
 
<h2>Employee List</h2>
<s:if test="employeeList!= null">
<s:if test="!employeeList.isEmpty()">
<table border="1px" cellpadding="8px">
	<tr>
		<th>First Name</th>
		<th>Middle Name</th>
		<th>Last Name</th>
		<th>Email Name</th>
		<th>Phone Name</th>
		<th>Hire Date</th>
	</tr>
	<s:iterator value="employeeList" status="userStatus">
		<tr>
			<td><s:property value="firstName" /></td>
			<td><s:property value="middleName" /></td>
			<td><s:property value="lastName" /></td>
			<td><s:property value="email" /></td>
			<td><s:property value="phone" /></td>
			<td><s:date name="hireDate" format="dd/MM/yyyy" /></td>
		</tr>
	</s:iterator>
</table>
</s:if>
</s:if>
<br/>
<br/>
  <s:a href="index.jsp" cssStyle="align:center;">Back to Home</s:a>
</body>
</html>