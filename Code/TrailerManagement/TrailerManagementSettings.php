<!DOCTYPE html>
<html>
<head>
<!--
Trailer Management Settings
Gregory Stone
INFO-C451 System Implementation
Trailer Management System Project
-->
<meta charset="UTF-8">

<!-- ----------- STYLE ---------------->
<div id="myStyles">
	<link rel="stylesheet" type="text/css" href="css/TrailerManagement_Styles.css" >
</div>

<!-- ------- Java Scripts -------------> 
<script>

		

	function rightContent(i)
	{
		document.getElementById("bodyContentSub").innerHTML = "";
		if(i == 1)
			document.getElementById("bodyContentSub").innerHTML = '<object class="content" type="text/html" data="Get_Users.php" ></object>';
		if(i == 2)
			document.getElementById("bodyContentSub").innerHTML = '<object class="content" type="text/html" data="Get_Company.php" ></object>';
		if(i == 3)
			document.getElementById("bodyContentSub").innerHTML = '<object class="content" type="text/html" data="Get_Parking.php" ></object>';
	}	
</script>
</head>


<body>
<?php
	echo ("<div id='headerSub'>");
		echo ("<h1>Settings</h1>");
	echo ("</div>");
	echo ("<div id='leftNavSub'>");
			echo ("<div id='navLinks'>");
				echo ("<a href='javascript:;' class='pageLinks' onclick='rightContent(1)'>Users</a><br />");
				echo ("<a href='javascript:;' class='pageLinks' onclick='rightContent(3)'>Parking Locations</a><br />");
				echo ("<a href='javascript:;' class='pageLinks' onclick='rightContent(2)'>Company and Warehouse</a><br />");
			echo ("</div>");
		echo ("</div>");
	echo ("<div id='body'>");
		echo ("<div id='bodyContentSub'></div>");
	echo ("</div>");
?>
</body>
</html>