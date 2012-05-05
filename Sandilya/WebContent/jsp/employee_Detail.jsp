<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<html>
<head>
<link href="<s:url value="/css/style.css"/>" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="../css/common.css" />
<script type="text/javascript" src="../js/common.js"></script>
<script type="text/javascript" src="../js/employee.js"></script>
<sx:head parseContent="true"/>
</head>
 

<body class="bgcolorMargins" bgcolor="white">
<h1><s:text name="welcome.title"/></h1>
 <s:form>
 <table class="navigationBanner" width="100%" height="25px">
	<tr>
		<td width="100%">Employee&nbsp;&nbsp;<img
			src="../images/menu/linkarrow.gif">Employee Detail&nbsp;(You are
		here)</td>
	</tr>
</table>
<table width="100%" cellpadding="0" cellspacing="0" border="1"
	bordercolor="#c9d7f1"
	style="margin-left: 1px; margin-right: 1px; margin-top: 1px">
	<tr>
		<td width="100%">
<s:if test="(emp == null)">	
<s:text name="employee.exist.not"></s:text>
</s:if>
		</td>
	</tr>
</table>
<table width="100%" border="0" bgcolor="#c9d7f1"
	style="margin-left: 1px; margin-right: 1px; margin-top: 1px"
	height="25px">

	<tr>
		<td><input type="button" value="Back to List"
			name="Back to List" id="backlist" 
			class="btn" onmouseover="this.className='btn btnhov'"
			onmouseout="this.className='btn'"
			onclick="openNewPageHere('listEmployeeAction');" /> <input
			type="button" value="Create New Employee" name="create" id="create"
			class="btn" onmouseover="this.className='btn btnhov'"
			onmouseout="this.className='btn'"
			onclick="openNewPageHere('employee_create.jsp');" /></td>
	</tr>
</table>
</s:form>
<br/>
<!--Start Employee Detail -->
<s:form action="updateEmployeeAction" name="form:%{count}"
	id="form:%{count}">
	<s:hidden name="emp.empID" value="%{emp.empID}"/>
<table class="pageName" width="100%" bgcolor="#c9d7f1" height="25px">
	<tr>
		<td width="100%"><b>Employee details for <label id="a"><s:property value="emp.firstName" /></label></b></td>
	</tr>
</table>
<table width="100%" cellpadding="0" cellspacing="0" border="1"
	bordercolor="#c9d7f1"
	style="margin-left: 1px; margin-bottom: 1px; margin-right: 1px">
	<tr>
		<td width="100%">
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tr id="1" bgcolor="#A8E4F0" align="left">
				<th width="2%"></th>
				<th width="20%"></th>
				<th width="2%"></th>
				<th width="20%"></th>
				<th width="2%"></th>
				<th width="30%"></th>
				<th width="2%"></th>
				<th width="20%"></th>
				<th width="2%"></th>
			</tr>

			<tr>
				<td colspan="9"><br>
				</td>
			</tr>
			<tr>
				<td></td>
				<td colspan="8" class="mainContentsText"><i>Fields marked
				with <em><img src="../images/required_star.gif" /></em> are
				required.</i></td>
			</tr>
			<tr>
				<td colspan="9"><br>
				</td>
			</tr>

			<tr>
				<td></td>
				<td class="mainContentsText">First Name</td>
				<td></td>
				<td><input type="text" name="emp.firstName" width="100%" tabindex="1"
					class="mainContentsText" value="<s:property value="emp.firstName" />" ></td>
				<td></td>
				<td class="mainContentsText">Last Name<em><img
					src="../images/required_star.gif"
					alt="Default Currency field is required" /></em></td>
				<td></td>
				<td><input type="text" id="defaultcurrency"
					value="<s:property value="emp.lastName" />" name="emp.lastName" width="100%"
					maxlength="3" tabindex="2" class="mainContentsText"
					onclick="onFocusAction(this.id);"
					onkeydown="onFocusAction(this.id);"></td>
				<td></td>
			</tr>

			<tr>
				<td></td>
				<td class="mainContentsText">Email <em><img
					src="../images/required_star.gif"
					alt="Default Language field is required" /></em></td>
				<td></td>
				<td><input class="mainContentsText" type="text"
					value="<s:property value="emp.email" />" name="emp.email"
					id="defaultlanguage" width="100%" maxlength="2" tabindex="3"
					onclick="onFocusAction(this.id);"
					onkeydown="onFocusAction(this.id);"></td>
				<td></td>
				<td class="mainContentsText">Phone <em><img
					src="../images/required_star.gif"
					alt="Online Team Email is required" /></em></td>
				<td></td>
				<td><input class="mainContentsText" type="text"
					value="<s:property value="emp.phone" />" name="emp.phone"
					id="onlineteammail" width="100%" tabindex="4"
					onclick="onFocusAction(this.id);"
					onkeydown="onFocusAction(this.id);"></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td class="mainContentsText">Hire Date <em><img
					src="../images/required_star.gif"
					alt="Cust Service Email field is required" /></em></td>
				<td></td>
				<td>
				<sx:datetimepicker name="emp.hireDate"  id="hireDate" cssClass="mainContentsText"
									 value="emp.hireDate" displayFormat="dd-mm-yyyy"/>
				</td>
				<td></td>

				<td class="mainContentsText">DOB <em><img
					src="../images/required_star.gif"
					alt="DOB field is required" /></em></td>
				<td></td>
				<td><sx:datetimepicker name="emp.dob"  id="dob" cssClass="mainContentsText"
					 value="emp.dob" displayFormat="dd-MM-yyyy"/>
					
				</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td class="mainContentsText">Gender <em><img
					src="../images/required_star.gif"
					alt="Default Date Format field is required" /></em></td>
				<td></td><!--
				<td><input class="mainContentsText" type="text"
					value="<s:property value="emp.gender" />" name="emp.gender"
					id="defaultdateformat" width="100%" tabindex="7"
					onclick="onFocusAction(this.id);"
					onkeydown="onFocusAction(this.id);"></td>
				-->
				<td><s:select  align="right" list="{'Male','Female'}" name="emp.gender" cssClass="mainContentsText" value="emp.gender"/></td>
				<td></td>
				<td></td>
				<td></td>
				<td><s:select label="Organisation"  list="{'COLLEGE','SCHOOL'}" name="emp.organisation.organisationName" cssClass="mainContentsText" value="emp.organisation.organisationName"/>
					<s:hidden name="emp.organisation.ID" value="%{emp.organisation.ID}"/>
					<s:hidden name="emp.organisation.organisationType" value="%{emp.organisation.organisationType}"/>
					</td>
				<td></td>
			</tr>
<!--	Address Start		-->
<s:iterator value="emp.address" status="count">
	<tr class="middleline" >
	<td></td>
	<td colspan="8"><b>Address Type <s:property value="addressType" /></b></td>
	</tr>
			<tr>
				<td></td>
				<td class="mainContentsText">Address Type<em><img
					src="../images/required_star.gif"
					alt="Minimum Order Value field is required" /></em></td>
				<td></td>
				<td><input class="mainContentsText" type="text" width="100%"
					value="<s:property value="addressType" />" name="addressType"
					id="minimumordervalue" tabindex="9"
					onclick="onFocusAction(this.id);"
					onkeydown="onFocusAction(this.id);"></td>
				<td></td>
				<td class="mainContentsText">Address One <em><img
					src="../images/required_star.gif"
					alt="Minimum Order Value Surcharge field is required" /></em></td>
				<td></td>
				<td><input class="mainContentsText" type="text" width="100%"
					value="<s:property value="addressOne" />" name="addressOne"
					id="ordervaluesurcharge" tabindex="10"
					onclick="onFocusAction(this.id);"
					onkeydown="onFocusAction(this.id);"></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td class="mainContentsText">Street <em><img
					src="../images/required_star.gif"
					alt="Energy Surcharge field is required" /></em></td>
				<td></td>
				<td><input class="mainContentsText" type="text" width="100%"
					value="<s:property value="street" />" maxlength="" name="street"
					id="energysurcharge" tabindex="11"
					onclick="onFocusAction(this.id);"
					onkeydown="onFocusAction(this.id);"></td>
				<td></td>
				<td class="mainContentsText">Dist <em><img
					src="../images/required_star.gif"
					alt="Current TC Version field is required" /></em></td>
				<td></td>
				<td><input class="mainContentsText" type="text" width="100%"
					value="<s:property value="dist" />" name="dist"
					id="currenttocversion" tabindex="12"
					onclick="onFocusAction(this.id);"
					onkeydown="onFocusAction(this.id);"></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td class="mainContentsText">State <em><img
					src="../images/required_star.gif"
					alt="Energy Surcharge field is required" /></em></td>
				<td></td>
				<td><input class="mainContentsText" type="text" width="100%"
					value="<s:property value="state" />" maxlength="" name="state"
					id="energysurcharge" tabindex="11"
					onclick="onFocusAction(this.id);"
					onkeydown="onFocusAction(this.id);"></td>
				<td></td>
				<td class="mainContentsText">Country <em><img
					src="../images/required_star.gif"
					alt="Current TC Version field is required" /></em></td>
				<td></td>
				<td><input class="mainContentsText" type="text" width="100%"
					value="<s:property value="country" />" name="country"
					id="currenttocversion" tabindex="12"
					onclick="onFocusAction(this.id);"
					onkeydown="onFocusAction(this.id);"></td>
				<td></td>
			</tr>
</s:iterator>
<!--	Address End		-->
	<tr class="middleline" >
	<td colspan="9"></td>
	</tr>
			<tr>
				<td></td>
				<td class="mainContentsText">Salary <em><img
					src="../images/required_star.gif" alt="Sivo field is required" /></em></td>
				<td></td>
				<td><input class="mainContentsText" type="text" width="100%"
					value="<s:property value="emp.lastName" />" name="salary" id="sivo" tabindex="13"
					onclick="onFocusAction(this.id);"
					onkeydown="onFocusAction(this.id);"></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td colspan="6"><br>
				</td>
			</tr>
		</table>
		</td>
	</tr>
</table>


<table width="100%" border="0" bgcolor="#c9d7f1"
	style="margin-left: 1px; margin-right: 1px; margin-top: 1px"
	height="25px">
	<tr>
		<td>
		  <s:submit value="Save" name="Save" id="Save" javascriptTooltip="Save the Empoyee Detail" 
			cssClass="btn" onmouseover="this.className='btn btnhov'" align="left"
			onmouseout="this.className='btn'" tabindex="14" ></s:submit>
		</td>
	</tr>
</table>
</s:form>
<!--End Employee Detail -->
<br/>
 <s:a href="index.jsp" cssStyle="align:center;">Back to Home</s:a>
</body>
</html>