
	//Input the IDs of the IFRAMES you wish to dynamically resize to match its content height:
	//Separate each ID with a comma. Examples: ["myframe1", "myframe2"] or ["myframe"] or [] for none:
	var iframeids = ["contents"];

	//Should script hide iframe from browsers that don't support this script (non IE5+/NS6+ browsers. Recommended):
	var iframehide = "no";

	// The added height to add to the iframe, helps further prevent scrollbars when resizing the contents
	var extraHeight = 35;

	function resizeCaller() {
		var dyniframe = new Array();
		for (i = 0; i < iframeids.length; i++) {
			if (document.getElementById)
				resizeIframe(iframeids);
				//reveal iframe for lower end browsers? (see var above):
			if ((document.all || document.getElementById) && iframehide == "no") {
				var tempobj = document.all ? document.all[iframeids] : document
						.getElementById(iframeids);
				tempobj.style.display = "block";
			}
		}
	}

	function resizeIframe(frameid) {
		var currentfr = document.getElementById(frameid);
		if (currentfr && !window.opera) {
			currentfr.style.display = "block";
			if (currentfr.contentDocument
					&& currentfr.contentDocument.body.offsetHeight) //ns6 syntax
			{
				currentfr.height = currentfr.contentDocument.body.offsetHeight
						+ extraHeight;
			} else if (currentfr.Document
					&& currentfr.Document.body.scrollHeight) //ie5+ syntax
			{
				currentfr.height = currentfr.Document.body.scrollHeight
						+ extraHeight;
			}
			if (currentfr.addEventListener)
				currentfr.addEventListener("load", readjustIframe, false);
			else if (currentfr.attachEvent) {
				currentfr.detachEvent("onload", readjustIframe); // Bug fix line
				currentfr.attachEvent("onload", readjustIframe);
			}
		}
	}

	function readjustIframe(loadevt) {
		var crossevt = (window.event) ? event : loadevt;
		var iframeroot = (crossevt.currentTarget) ? crossevt.currentTarget
				: crossevt.srcElement;
		if (iframeroot)
			resizeIframe(iframeroot.id);
	}

	function loadintoIframe(iframeid, url) {
		if (document.getElementById)
			document.getElementById(iframeid).src = url;
	}

	if (window.addEventListener)
		window.addEventListener("load", resizeCaller, false);
	else if (window.attachEvent)
		window.attachEvent("onload", resizeCaller);
	else
		window.onload = resizeCaller;
