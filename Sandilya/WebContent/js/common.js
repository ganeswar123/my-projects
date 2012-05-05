/** ************************************************************* */
// disable backspace in iframes
if (typeof window.event != 'undefined')
	document.onkeydown = function() {
		if (event.srcElement.tagName.toUpperCase() != 'INPUT')
			return (event.keyCode != 8);
	};
else
	document.onkeypress = function(e) {
		if (e.target.nodeName.toUpperCase() != 'INPUT')
			return (e.keyCode != 8);
	};

	/** ************************************************************* */

var state = 'none';

function showhide(layer_ref) {

	if (state == 'block') {
		state = 'none';
	} else {
		state = 'block';
	}
	if (document.all) { // IS IE 4 or 5 (or 6 beta)
		eval("document.all." + layer_ref + ".style.display = state");
	}
	if (document.layers) { // IS NETSCAPE 4 or below
		document.layers[layer_ref].display = state;
	}
	if (document.getElementById && !document.all) {
		hza = document.getElementById(layer_ref);
		hza.style.display = state;
	}
}

function showDiv(pass) {
	alert("Param>"+pass);
	var divs = document.getElementsByTagName('div');
	for (i = 0; i < divs.length; i++) {
		if (divs[i].id != 'message') {
			if (divs[i].id.match(pass)) {// if they are 'see' divs
				if (document.getElementById) // DOM3 = IE5, NS6
					divs[i].style.visibility = "visible";// show/hide
				else if (document.layers) // Netscape 4
					document.layers[divs[i]].display = 'visible';
				else
					// IE 4
					document.all.divs[i].visibility = 'visible';
			} else {
				if (document.getElementById)
					divs[i].style.visibility = "hidden";
				else if (document.layers) // Netscape 4
					document.divs[i].visibility = 'hidden';
				else
					// IE 4
					document.all.divs[i].visibility = 'hidden';
			}
		}
	}
}

function ChangeColor(tableRow, highLight) {
	if (highLight) {
		tableRow.style.backgroundColor = '#D9F3FF';
	} else {
		tableRow.style.backgroundColor = '#ffffff';
	}
}

function advance(formName, currentField, nextField, maxLength) {
	if (document.getElementById(formName).currentField.value.length == length)
		document.getElementById(formName).nextField.focus();
}

/*
 * function numbersonly(e, decimal) { var key; var keychar;
 * 
 * if (window.event) { key = window.event.keyCode; } else if (e) { key =
 * e.which; } else { return true; } keychar = String.fromCharCode(key);
 * 
 * if ((key == null) || (key == 0) || (key == 8) || (key == 9) || (key == 13) ||
 * (key == 27)) { return true; } else if ((("0123456789").indexOf(keychar) >
 * -1)) { return true; } else if (decimal && (keychar == ".")) { return true; }
 * else return false; }
 */

