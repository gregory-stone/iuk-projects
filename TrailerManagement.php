<!DOCTYPE html>
<html>
<head>
<!--
TrailerManagement.php
Gregory Stone
INFO-C451 System Implementation
Trailer Management System Project
-->
<title>Trailer Management</title>
<meta charset="UTF-8">

<!-- ----------- STYLE ---------------->
<div id="myStyles">
	<link rel="stylesheet" type="text/css" href="css/TrailerManagement_Styles.css" >
</div>

<!-- ------- Java Scripts -------------> 
<script>

		

	function rightContent(i)
	{
		document.getElementById("bodyContent").innerHTML = "";
		if(i == 1)
			document.getElementById("bodyContent").innerHTML = '<object class="content" type="text/html" data="Get_Trailers.php" ></object>';
		if(i == 2)
			document.getElementById("bodyContent").innerHTML = '<object class="content" type="text/html" data="TrailerManagementSettings.php" ></object>';
		if(i == 3)
			document.getElementById("bodyContent").innerHTML = '<object class="content" type="text/html" data="Get_Parking.php" ></object>';
	}	
</script>
</head>


<body>
<?php
	echo ("<div class='bar'></div>");
	echo ("<div id='header'>");
		echo ("<h1>Trailer Management</h1>");
	echo ("</div>");
	echo ("<div class='bar'></div>");
	echo ("<div id='leftNav'>");
			echo ("<div id='navLinks'>");
				echo ("<a href='javascript:;' class='pageLinks' onclick='rightContent(1)'>Trailers</a><br />");
				echo ("<a href='javascript:;' class='pageLinks' onclick='rightContent(3)'>Parking Locations</a><br />");
				echo ("<a href='javascript:;' class='pageLinks' onclick='rightContent(2)'>Settings</a><br />");
			echo ("</div>");
		echo ("</div>");
	echo ("<div id='body'>");
		echo ("<div id='bodyContent'></div>");
	echo ("</div>");
		
	echo ("<div id='footer'>");
		echo( "<object data='Get_Location.php' ></object>");
	echo ("</div>");
?>
</body>
</html>