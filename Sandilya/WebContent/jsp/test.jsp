<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<s:actionerror/>
<s:form action="searchEmployeeAction" namespace="/">
  <s:textfield name="firstName" label="FirstName" value="" />
  <s:textfield name="lastName" label="LastName" value="" />
  <s:textfield name="email" label="Email" value="" />
   <s:submit />
</s:form>
</body>
</html>