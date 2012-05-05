<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link href="<s:url value="/css/style.css"/>" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="css/common.css" />
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/employee.js"></script>
<title>Login</title>
</head>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript">
	window.onresize = function() {
		positionDiv();
	};

	function positionDiv() {
		var myWidth = 0, myHeight = 0;
		if (typeof (window.innerWidth) == 'number') {
			//Non-IE
			myWidth = window.innerWidth;
			myHeight = window.innerHeight;
		} else if (document.documentElement
				&& (document.documentElement.clientWidth || document.documentElement.clientHeight)) {
			//IE 6+ in 'standards compliant mode'
			myWidth = document.documentElement.clientWidth;
			myHeight = document.documentElement.clientHeight;
		} else if (document.body
				&& (document.body.clientWidth || document.body.clientHeight)) {
			//IE 4 compatible
			myWidth = document.body.clientWidth;
			myHeight = document.body.clientHeight;
		}

		var bodyDiv_left = 0;
		if (myWidth > 400) {
			bodyDiv_left = (myWidth - 400) / 2;
		}

		var bodyDiv_top = 0;
		if (myHeight > 150) {
			bodyDiv_top = (myHeight - 150) / 2;
		}

		moveIt(document.getElementById('bodyDiv'), bodyDiv_top, bodyDiv_left);
	}

	function moveIt(obj, mvTop, mvLeft) {

		obj.style.position = "absolute";
		obj.style.top = mvTop;
		obj.style.left = mvLeft;
	}

	/*
	 * Clears form contents 
	 */
	function clearForm(formName) {
		var noErrorColor = 'black';
		var noErrorBackgroundColor = 'white';
		var noErrorBorder = '1px solid #4f6b72';
		for (i = 0; i < document.getElementById(formName).elements.length; i++) {
			if (document.getElementById(formName).elements[i].type == "text"
					|| document.getElementById(formName).elements[i].type == "password") {
				document.getElementById(formName).elements[i].value = "";
				document.getElementById(formName).elements[i].style.backgroundColor = noErrorBackgroundColor;
				document.getElementById(formName).elements[i].style.border = noErrorBorder;
				document.getElementById(formName).elements[i].color = noErrorColor;
			}
		}
	}

	/*
	 * Will be called when user clicks or keys in an input box 
	 */
	function onFocusAction(id) {
		document.getElementById(id).style.color = 'black';
		document.getElementById(id).style.backgroundColor = 'white';
		document.getElementById(id).style.border = '1px solid #4f6b72';
	}

	/*
	 * Will validate and submit the form 
	 */
	function validate(formName) {

		var integerValidate = new RegExp("^[0-9]+");
		var alphabetsValidate = new RegExp("^[a-zA-Z]+");

		var message = "";
		var returnValue = true;
		var errorCount = 0;
		var errorColor = 'white';
		var errorBackgroundColor = '#FFD6CC';
		var errorBorder = '1px solid #FF0000';

		var noErrorColor = 'black';
		var noErrorBackgroundColor = 'white';
		var noErrorBorder = '1px solid #4f6b72';

		var errorArray = new Array(
				document.getElementById(formName).elements.length);

		//username validation
		if (document.getElementById(formName).userId.value == ""
				|| document.getElementById(formName).userId.value == null) {
			errorCount++;
			message = message + errorCount + ". User Name is required.\n";
			errorArray.push(document.getElementById(formName).userId);
			returnValue = false;
		}
		//password validation
		if (document.getElementById(formName).password.value == ""
				|| document.getElementById(formName).password.value == null) {
			errorCount++;
			message = message + errorCount + ". Password is required.\n";
			errorArray.push(document.getElementById(formName).password);
			returnValue = false;
		}

		for (j = 0; j < errorArray.length; j++) {
			for (k = 0; k < document.getElementById(formName).elements.length; k++) {
				if ((document.getElementById(formName).elements[k].type == "text" || document
						.getElementById(formName).elements[k].type == "password")
						&& (document.getElementById(formName).elements[k] == errorArray[j])) {

					document.getElementById(formName).elements[k].style.backgroundColor = errorBackgroundColor;
					document.getElementById(formName).elements[k].style.border = errorBorder;
					document.getElementById(formName).elements[k].style.color = errorColor;

				}
			}
		}

		if (returnValue != true) {
			var dashes = "---------------------------------------------------------------------------------------";

			alert("You failed to correctly fill in your form:\n" + dashes
					+ "\n" + message + dashes
					+ "\nPlease correct form errors and try again!");

		} else {
			document.getElementById(formName).submit();
		}

		return returnValue;
	}
</script>
<body class="bgcolorMargins" bgcolor="white" onload="positionDiv();" bgcolor="#c9d7f1">
<div id="bodyDiv" style="height:100px; vertical-align:middle; width:400px;" align="center">
<s:form namespace="/" action="index.action" method="post" name="mainForm" id="mainForm" cssClass="maincontents">
<s:hidden name="QUADRAN_LOGIN_ATTEMPT" value="%{'1'}" />

<table class="navigationBanner" width="100%" height="25px">
	<tr>
		<td width="100%">Sandilya Group &nbsp;&nbsp;<img
			src="images/menu/linkarrow.gif">Login&nbsp;(You are here)</td>
	</tr>
</table>


<table class="pageName" width="100%" bgcolor="#c9d7f1" height="25px">
	<tr>
		<td width="100%"><b>Please enter your login details</b></td>
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
				<th width="47%" align="right"></th>
				<th width="2%"></th>
				<th width="47%" align="left"></th>
				<th width="2%"></th>
			</tr>

			<tr>
				<td colspan="5"><s:actionerror /></td>
				<!--<td colspan="4"><br>
				</td>
			--></tr>

			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td>
				  <s:textfield name="QUADRAN_USERNAME" label="User ID" width="100%" maxlength="10" tabindex="2" cssClass="mainContentsText"/>
				</td>
				<td></td>
			</tr>

			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td>
				 <s:password name="QUADRAN_PASSWORD"   label="Password" width="100%" maxlength="10" tabindex="2" cssClass="mainContentsText"/>
				</td>
				<td></td>
			</tr>

			<tr>
				<td colspan="5"><br>
				</td>
			</tr>
		</table>
		</td>
	</tr>
</table>

<table width="100%" border="0" bgcolor="#c9d7f1"
	style="margin-left: 1px; margin-right: 1px; margin-top: 1px">
	<tr>
		<td>
		 <s:submit value="Login" align="center" cssClass="btn" tabindex="5">
        <s:param name="colspan" value="%{2}" />
        <s:param name="align" value="%{'center'}" />
    	</s:submit>
    </td>
	</tr>
</table>
</s:form>
</div>
</body>
</html>