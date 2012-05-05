/**
 * 
 */
/*
	 * Will be called to check all the checkboxes in table
	 */
	function checkall() {
		if (document.domainList.elements[0].checked) {
			for (i = 0; i < document.domainList.elements.length; i++) {
				if (document.domainList.elements[i].type == "checkbox") {
					document.domainList.elements[i].checked = true;
				}
			}
			//enable the delete selected button
			document.domainList.deleteSelected.disabled = false;

		} else {
			for (i = 0; i < document.domainList.elements.length; i++) {
				if (document.domainList.elements[i].type == "checkbox") {
					document.domainList.elements[i].checked = false;
				}
			}
			document.domainList.deleteSelected.disabled = true;
			showDiv('noSuchDivExist');
		}

		selectAll();

	}

	/*
	 * Will return true if any checkbox is selected in the table
	 */
	function isAnyCheckBoxSelected() {
		var selected = new Boolean(false);
		for (i = 1; i < document.domainList.elements.length; i++) {
			if (document.domainList.elements[i].type == "checkbox") {
				if (document.domainList.elements[i].checked) {
					selected = true;
				}
			}
		}
		if (selected == true) {
			document.domainList.deleteSelected.disabled = false;
		} else {
			document.domainList.deleteSelected.disabled = true;
		}

		selectAll();

		return selected;
	}

	/*
	 * Will be called to select all checkboxes
	 */
	function selectAll() {
		/* put the selected domains to a hidden text box*/
		document.domainList.removedomains.value = "";
		for (i = 1; i < document.domainList.elements.length; i++) {
			if (document.domainList.elements[i].type == "checkbox") {
				if (document.domainList.elements[i].checked) {
					if (document.domainList.removedomains.value == "") {
						document.domainList.removedomains.value = document
								.getElementById('manitable').rows[i].cells[1].innerText;
					} else {
						document.domainList.removedomains.value = document.domainList.removedomains.value
								+ "|"
								+ document.getElementById('manitable').rows[i].cells[1].innerText;
					}
				}
			}
		}
		//alert(document.domainList.removedomains.value);
	}

	/*
	 * Will be used to navigate to other URL in the same iFrame
	 */
	function openNewPageHere(pageURL) {
		//alert(pageURL);
		//alert(document.domainList.removedomains.value);
		window.document.location = pageURL;
		//window.document.location.href("http://localhost:7001/Aqua/login.jsp")

	}

	/*
	 * Will be called when user clicks or keys in aan input box 
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
		var decimalValidate = new RegExp("^[0-9]+\.[0-9]+");
		var alphabetsValidate = new RegExp("^[a-zA-Z]+");
		var alphaNumValidate = new RegExp("^[a-zA-Z0-9]+");
		var alphabetsValidate = new RegExp("^[a-zA-Z]+");
		var languageCodeValidate = new RegExp("^[a-zA-Z]{2}");
		var currencyCodeValidate = new RegExp("^[a-zA-Z]{3}");
		var dateFormatValidate = new RegExp(
				"^[dDmM]{2,3}[-\\\/]{1}[mMdD]{2,3}[-\\\/][yY][yY]{2}");

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

		//domain name validation
		if (document.getElementById(formName).name.value == ""
				|| document.getElementById(formName).name.value == null) {
			errorCount++;
			message = message + errorCount + ". Domain name is required.\n";
			errorArray.push(document.getElementById(formName).name);
			returnValue = false;
		}
		if (!document.getElementById(formName).name.value
				.match(alphabetsValidate)) {
			errorCount++;
			message = message
					+ errorCount
					+ ". Please enter valid domain name. Domain name contain only alphabets.\n";
			errorArray.push(document.getElementById(formName).name);
			returnValue = false;
		}

		//default currency validation
		if (document.getElementById(formName).defaultcurrency.value == ""
				|| document.getElementById(formName).defaultcurrency.value == null) {
			errorCount++;
			message = message + errorCount
					+ ". Default currency is required.\n";
			errorArray.push(document.getElementById(formName).defaultcurrency);
			returnValue = false;
		}

		if (!document.getElementById(formName).defaultcurrency.value
				.match(currencyCodeValidate)) {
			errorCount++;
			message = message
					+ errorCount
					+ ". Please enter a valid defualt currency. Defualt currency contain only alphabets.\n";
			errorArray.push(document.getElementById(formName).defaultcurrency);
			returnValue = false;
		}
		if (document.getElementById(formName).defaultcurrency.value.length != 3) {
			errorCount++;
			message = message
					+ errorCount
					+ ". Defualt currency can contain only 3 characters. Numbers are not allowed.\n";
			errorArray.push(document.getElementById(formName).defaultcurrency);
			returnValue = false;
		}

		//default language validation
		if (document.getElementById(formName).defaultlanguage.value == ""
				|| document.getElementById(formName).defaultlanguage.value == null) {
			errorCount++;
			message = message + errorCount
					+ ". Default language is required.\n";
			errorArray.push(document.getElementById(formName).defaultlanguage);
			returnValue = false;
		}
		if (!document.getElementById(formName).defaultlanguage.value
				.match(languageCodeValidate)) {
			errorCount++;
			message = message
					+ errorCount
					+ ". Please enter a valid defualt language. Defualt language contain only alphabets.\n";
			errorArray.push(document.getElementById(formName).defaultlanguage);
			returnValue = false;
		}
		if (document.getElementById(formName).defaultlanguage.value.length != 2) {
			errorCount++;
			message = message
					+ errorCount
					+ ". Defualt language can contain only 2 characters. Numbers are not allowed.\n";
			errorArray.push(document.getElementById(formName).defaultlanguage);
			returnValue = false;
		}

		//online email validation		
		var onlineteammailID = document.getElementById(formName).onlineteammail.value;

		if ((onlineteammailID == null) || (onlineteammailID == "")) {
			errorCount++;
			message = message + errorCount
					+ ". Online team email id is required.\n";
			errorArray.push(document.getElementById(formName).onlineteammail);
			returnValue = false;
		}
		if (validateEmail(onlineteammailID) == false) {
			errorCount++;
			message = message + errorCount
					+ ". Please enter a valid online team email id.\n";
			errorArray.push(document.getElementById(formName).onlineteammail);
			returnValue = false;
		}

		//customer service email validation		
		var custservicemailID = document.getElementById(formName).custservicemail.value;

		if ((custservicemailID == null) || (custservicemailID == "")) {
			errorCount++;
			message = message + errorCount
					+ ". Customer service email id is required.\n";
			errorArray.push(document.getElementById(formName).custservicemail);
			returnValue = false;
		}
		if (validateEmail(custservicemailID) == false) {
			errorCount++;
			message = message + errorCount
					+ ". Please enter a valid customer service email id.\n";
			errorArray.push(document.getElementById(formName).custservicemail);
			returnValue = false;
		}

		//custservicephonenumber validation
		if (document.getElementById(formName).custservicephonenumber.value == ""
				|| document.getElementById(formName).custservicephonenumber.value == null) {
			errorCount++;
			message = message + errorCount
					+ ". Customer service phone number is required.\n";
			errorArray
					.push(document.getElementById(formName).custservicephonenumber);
			returnValue = false;
		}
		if (!document.getElementById(formName).custservicephonenumber.value
				.match(integerValidate)) {
			errorCount++;
			message = message
					+ errorCount
					+ ". Please enter a valid customer service phone number. Customer service phone number contain only numbers.\n";
			errorArray
					.push(document.getElementById(formName).custservicephonenumber);
			returnValue = false;
		}

		//defaultdateformat validation
		if (document.getElementById(formName).defaultdateformat.value == ""
				|| document.getElementById(formName).defaultdateformat.value == null) {
			errorCount++;
			message = message + errorCount
					+ ". Default date format is required.\n";
			errorArray
					.push(document.getElementById(formName).defaultdateformat);
			returnValue = false;
		} else if (!document.getElementById(formName).defaultdateformat.value
				.match(dateFormatValidate)) {
			errorCount++;
			message = message + errorCount
					+ ". Please enter a valid default date format.\n";
			errorArray
					.push(document.getElementById(formName).defaultdateformat);
			returnValue = false;
		}

		//defaultnumberformat validation
		if (document.getElementById(formName).defaultnumberformat.value == ""
				|| document.getElementById(formName).defaultnumberformat.value == null) {
			errorCount++;
			message = message + errorCount
					+ ". Default number format is required.\n";
			errorArray
					.push(document.getElementById(formName).defaultnumberformat);
			returnValue = false;
		} else if (!document.getElementById(formName).defaultnumberformat.value
				.match(decimalValidate)
				|| !document.getElementById(formName).defaultnumberformat.value
						.match(integerValidate)) {
			errorCount++;
			message = message
					+ errorCount
					+ ". Please enter a valid default number format. Number format should be a valid number.\n";
			errorArray
					.push(document.getElementById(formName).defaultnumberformat);
			returnValue = false;
		}

		//minimumordervalue validation
		if (document.getElementById(formName).minimumordervalue.value == ""
				|| document.getElementById(formName).minimumordervalue.value == null) {
			errorCount++;
			message = message + errorCount
					+ ". Minimum order value is required.\n";
			errorArray
					.push(document.getElementById(formName).minimumordervalue);
			returnValue = false;
		}
		if (!document.getElementById(formName).minimumordervalue.value
				.match(integerValidate)) {
			errorCount++;
			message = message
					+ errorCount
					+ ". Please enter a valid minimum order value. It can only be integer.\n";
			errorArray
					.push(document.getElementById(formName).minimumordervalue);
			returnValue = false;
		}

		//ordervaluesurcharge validation
		if (document.getElementById(formName).ordervaluesurcharge.value == ""
				|| document.getElementById(formName).ordervaluesurcharge.value == null) {
			errorCount++;
			message = message + errorCount
					+ ". Order value surcharge is required.\n";
			errorArray
					.push(document.getElementById(formName).ordervaluesurcharge);
			returnValue = false;
		}
		if (!document.getElementById(formName).ordervaluesurcharge.value
				.match(integerValidate)) {
			errorCount++;
			message = message
					+ errorCount
					+ ". Please enter a valid order value surcharge. It can only be integer.\n";
			errorArray
					.push(document.getElementById(formName).ordervaluesurcharge);
			returnValue = false;
		}

		//energysurcharge validation
		if (document.getElementById(formName).energysurcharge.value == ""
				|| document.getElementById(formName).energysurcharge.value == null) {
			errorCount++;
			message = message + errorCount
					+ ". Energy surcharge is required.\n";
			errorArray.push(document.getElementById(formName).energysurcharge);
			returnValue = false;
		}
		if (!document.getElementById(formName).energysurcharge.value
				.match(integerValidate)) {
			errorCount++;
			message = message
					+ errorCount
					+ ". Please enter a valid energy surcharge value. It can only be integer.\n";
			errorArray.push(document.getElementById(formName).energysurcharge);
			returnValue = false;
		}

		//currenttocversion validation
		if (document.getElementById(formName).currenttocversion.value == ""
				|| document.getElementById(formName).currenttocversion.value == null) {
			errorCount++;
			message = message + errorCount
					+ ". Current  TC version is required.\n";
			errorArray
					.push(document.getElementById(formName).currenttocversion);
			returnValue = false;
		}

		//sivo validation
		if (document.getElementById(formName).sivo.value == ""
				|| document.getElementById(formName).sivo.value == null) {
			errorCount++;
			message = message + errorCount + ". SIVO is required.\n";
			errorArray.push(document.getElementById(formName).sivo);
			returnValue = false;
		}
		if (!document.getElementById(formName).sivo.value
				.match(integerValidate)) {
			errorCount++;
			message = message + errorCount
					+ ". Please enter a valid SIVO. It can only be integer.\n";
			errorArray.push(document.getElementById(formName).sivo);
			returnValue = false;
		}

		for (j = 0; j < errorArray.length; j++) {
			for (k = 0; k < document.getElementById(formName).elements.length; k++) {
				if (document.getElementById(formName).elements[k].type == "text"
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

	/*
	 * Will validate email id 
	 */
	function validateEmail(str) {
		if (str.length > 0) {
			var i = str.indexOf("@");
			var j = str.indexOf(".", i);
			var k = str.indexOf(",");
			var kk = str.indexOf(" ");
			var jj = str.lastIndexOf(".") + 1;
			var len = str.length;
		}
		if ((i > 0) && (j > (i + 1)) && (k == -1) && (kk == -1)
				&& (len - jj >= 2) && (len - jj <= 3)) {
		} else {
			//alert("Invalid E-mail ID");
			return false;
		}
	}

	/*
	 * Will be used to confirm deletion
	 */
	function confirmDelete(formName) {
		var selectedDomains = document.getElementById(formName).removedomains.value;
		var temp = new Array();
		temp = selectedDomains.split('|');
		var message = temp[0];
		if (temp.length > 1) {
			for (i = 1; i < temp.length; i++) {
				if (i < (temp.length - 1)) {
					message = message + ", " + temp[i];
				} else {
					message = message + " and " + temp[i];
				}
			}
		}

		var deleteConfirm = confirm("Do you really want to delete the following domain ?\n"
				+ message);
		if (deleteConfirm == true) {
			document.getElementById(formName).submit();
		}
		return false;
	}