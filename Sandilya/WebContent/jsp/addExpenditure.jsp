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
		<td width="100%">Transaction&nbsp;&nbsp;<img
			src="../images/menu/linkarrow.gif">Add Expenditure&nbsp;(You are
		here)</td>
	</tr>
</table>
<table width="100%" cellpadding="0" cellspacing="0" border="1"
	bordercolor="#c9d7f1"
	style="margin-left: 1px; margin-right: 1px; margin-top: 1px">
	<tr>
		<td width="100%">

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
<s:form action="addExpenditureAction" name="form:%{count}"
	id="form:%{count}">
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
				<td class="mainContentsText">Transaction ID</td>
				<td></td>
				<td><input type="text" name="trans.transactionID" width="100%" tabindex="1" disabled="disabled"
					class="mainContentsText" value="<s:property value="trans.transactionID" />" ></td>
				<td></td>
				<td class="mainContentsText">Transaction Date<em><img
					src="../images/required_star.gif"
					alt="Default Currency field is required" /></em></td>
				<td></td>
				<td><sx:datetimepicker  name="trans.transactionDate" dayWidth="100%" id="transDate" cssClass="mainContentsText"
					onclick="onFocusAction(this.id);"
					onkeydown="onFocusAction(this.id);"  value="" displayFormat="dd-MMM-yyyy"/></td>
				<td></td>
			</tr>

			<tr>
				<td></td>
				<td class="mainContentsText">Receipt No<em><img
					src="../images/required_star.gif"
					alt="Default Language field is required" /></em></td>
				<td></td>
				<td><input class="mainContentsText" type="text"
					value="<s:property value="trans.receiptNo" />" name="trans.receiptNo"
					id="receiptNo" width="100%" maxlength="20" tabindex="3"
					onclick="onFocusAction(this.id);"
					onkeydown="onFocusAction(this.id);"></td>
				<td></td>
				<td class="mainContentsText">Type <em><img
					src="../images/required_star.gif"
					alt="Online Team Email is required" /></em></td>
				<td></td>
				<td><input class="mainContentsText" type="text"
					value="<s:property value="trans.transactionType" />" name="trans.transactionType"
					id="transType" width="100%" tabindex="4"
					onclick="onFocusAction(this.id);"
					onkeydown="onFocusAction(this.id);"></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td class="mainContentsText">To Account <em><img
					src="../images/required_star.gif"
					alt="Cust Service Email field is required" /></em></td>
				<td></td>
				<td>
				<input class="mainContentsText" type="text"
					value="<s:property value="trans.toAccount" />" name="trans.toAccount"
					id="toaccount" width="100%" tabindex="4"
					onclick="onFocusAction(this.id);"
					onkeydown="onFocusAction(this.id);"></td>
				<td></td>

				<td class="mainContentsText">From Account <em><img
					src="../images/required_star.gif"
					alt="Cust Service Phone Number field is required" /></em></td>
				<td></td>
				<td><input class="mainContentsText" type="text"
					value="<s:property value="trans.fromAccount" />" name="trans.fromAccount"
					id="tofromaccount" width="100%" tabindex="4"
					onclick="onFocusAction(this.id);"
					onkeydown="onFocusAction(this.id);"></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td class="mainContentsText">Cashier <em><img
					src="../images/required_star.gif"
					alt="Cust Service Email field is required" /></em></td>
				<td></td>
				<td>
				<input class="mainContentsText" type="text"
					value="<s:property value="trans.cashier" />" name="trans.cashier"
					id="cashier" width="100%" tabindex="4"
					onclick="onFocusAction(this.id);"
					onkeydown="onFocusAction(this.id);"></td>
				<td></td>

				<td class="mainContentsText">Notes <em><img
					src="../images/required_star.gif"
					alt="Cust Service Phone Number field is required" /></em></td>
				<td></td>
				<td><input class="mainContentsText" type="text"
					value="<s:property value="trans.transactionNote" />" name="trans.transactionNote"
					id="notes" width="100%" tabindex="4"
					onclick="onFocusAction(this.id);"
					onkeydown="onFocusAction(this.id);"></td>
				<td></td>
			</tr>

	<tr class="middleline" >
	<td colspan="9"></td>
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
		  <s:submit value="Create" name="Create" id="Create" javascriptTooltip="Create new Empoyee" 
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