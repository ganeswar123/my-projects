<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
<s:if test="#session.SANDILYA_USER_SESSSION_HANDLE != null">
<jsp:forward page="/jsp/main.jsp"/>
</s:if>
<s:if test="#session.SANDILYA_USER_SESSSION_HANDLE == null">
<jsp:forward page="login.jsp"/>
</s:if>