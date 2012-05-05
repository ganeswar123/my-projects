<html>
<head>
<title>Slashdot's Menu</title>
<link rel="stylesheet" type="text/css" href="../css/menu.css" />
<script type="text/javascript" src="../js/menu.js">
	
</script>
<script type="text/javascript">
	var myMenu;
	window.onload = function() {
		myMenu = new Menu("my_menu");
		myMenu.init();
	};
	//
</script>
</head>
<body bgcolor="#e8eefa" style="height: 100%;">

<div id="my_menu" class="menu">

<div class="collapsed">
	<span>Report Transaction</span> 
	<a href="underConstructionPage.jsp" target="contents">Today's' Transaction</a> 
	<a href="underConstructionPage.jsp" target="contents">List Month Transaction</a> 
	<a href="underConstructionPage.jsp" target="contents">List Year Transaction</a>
	<a href="underConstructionPage.jsp" target="contents">Search Transaction</a>
</div>

<div class="collapsed">
	<span>Examination</span> 
	<a href="underConstructionPage.jsp" target="contents">Create New</a> 
	<a href=underConstructionPage.jsp target="contents">List Existing</a>
	<a href=underConstructionPage.jsp target="contents">Monthly Exam</a>
</div>
<div class="collapsed">
	<span>Employee</span> 
	<a href="employee_create.jsp" target="contents">Create New</a>
	<a href="listEmployeeAction" target="contents">List Existing</a>	
	<a href="searchEmployeeAction" target="contents">Search Employee</a>
	<a href="getEmployeeAction" target="contents">Employee Details</a>
</div>

<div class="collapsed">
	<span>Student</span> 
	<a href="student.jsp" target="contents">Create New</a>
	<a href="listStudentAction" target="contents">List Existing</a>	
	<a href="search_student.jsp" target="contents">Search Student</a>
	<a href="listStudentAction" target="contents">Student Details</a>
</div>
<div class="collapsed">
	<span>Library</span> 
	<a href="searchMedia.jsp" target="contents">Search Media</a>
	<a href="listStudentAction" target="contents">Student Library Details</a>	
	<a href="search_student.jsp" target="contents">Media Operation</a>
	<a href="listStudentAction" target="contents">Payment Operation</a>
	<a href="listStudentAction" target="contents">Library Card Operation</a>
</div>
<div class="collapsed">
	<span>Users</span> 
	<a href="manageUsers_create.jsp" target="contents">Create New</a> 
	<a href="underConstructionPage.jsp" target="contents">List Existing</a> 
	<a href="underConstructionPage.jsp" target="contents">Search</a> 
	<a href="underConstructionPage.jsp" target="contents">Bulk Upload</a>	
	
</div>
<div class="collapsed">
	<span>Transaction</span> 
	<a href="addStudentPayment.jsp" target="contents">Add Student Transaction</a> 
	<a href="addExpenditure.jsp" target="contents">Add Expenditure</a>
	<a href="listExpenditureAction" target="contents">List Existing</a>	 
	<a href="underConstructionPage.jsp" target="contents">Search</a> 
	<a href="underConstructionPage.jsp" target="contents">Bulk Upload</a>	
	
</div>

</div>

</body>
</html>