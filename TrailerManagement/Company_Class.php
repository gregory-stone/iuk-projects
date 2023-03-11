<?php

/*
Trailer Management Company Class
Gregory Stone
INFO-C451 System Implementation
Trailer Management System Project
*/

class Company {
	//Private Data
	private $HostName; 
	private $UserID;
	private $Password;
	private $DBName;
	private $Con; // MySQL Connection
	
	//-------------------------------------------------
	// Constructor
	public function __construct($host = NULL, $uid = NULL,$pw = NULL, $db = NULL)
	{
		$this->HostName = $host;
		$this->UserID = $uid;
		$this->Password = $pw;
		$this->DBName = $db;
		
		// Connect to Database
		$this->Con = mysqli_connect($host, $uid, $pw, $db);
		if (mysqli_connect_errno())
		{
			echo "Failed to connect to MySQL: " . mysqli_connect_error();
		}
	}
	
	//-------------------------------------------------
	// Destructor
	public function __destruct()
	{
		// Close connection
		mysqli_close($this->Con);
	}
	
	//-------------------------------------------------
	public function DisplayTrailers()
	{
		echo("<table border ='5' align='center'>");
		echo("<thead>");
		
		echo("<tr>");
		echo(" 	<th bgcolor='#3BA3D0' width='150px'>");
		echo(" 		TrailerNo");
		echo(" 	</th>");
		
		echo(" 	<th bgcolor='#3BA3D0'> ");
		echo(" 		SpotNo");
		echo(" 	</th>");
		
		echo(" 	<th bgcolor='#3BA3D0'> ");
		echo(" 		DoorNo");
		echo(" 	</th>");
		
		echo(" 	<th bgcolor='#3BA3D0' width='100px'>");
		echo(" 		LoadNo");
		echo(" 	</th>");
		
		echo(" 	<th bgcolor='#3BA3D0'>");
		echo(" 		Operator");
		echo(" 	</th>");
		
		echo("</tr>");
		echo("</thead>");
		echo("<tbody>");
		
		$AllTrailers = $this->Get_Trailers_From_DB();
		for($i=0; $i < sizeof($AllTrailers); $i++)
		{
			echo("<tr>");
			echo(" 	<td>" . $AllTrailers[$i]['TrailerNo'] ."</td>");
			echo(" 	<td>" . $AllTrailers[$i]['SpotNo'] . "</td>");
			echo(" 	<td>" . $AllTrailers[$i]['DoorNo'] . "</td>");
			echo(" 	<td>" . $AllTrailers[$i]['LoadNo'] . "</td>");
			echo(" 	<td>" . $AllTrailers[$i]['Operator'] . "</td>");
			echo("</tr>");
		}
		echo("</tbody>");
		echo("</table>");
	}
	
	//-------------------------------------------------
	public function DisplayParkingLocations()
	{
		echo("<table border ='5' align='left'>");
		echo("<thead>");
		
		echo("<tr>");
		echo(" 	<th colspan='4' bgcolor='#3BA3D0'>");
		echo(" 		Dock Doors");
		echo("	</th>");
		echo("</tr>");
		
		echo("<tr>");
		echo(" 	<th bgcolor='#3BA3D0' width='75px'>");
		echo(" 		Door No");
		echo(" 	</th>");
		
		echo(" 	<th bgcolor='#3BA3D0'> ");
		echo(" 		Ship/Rec");
		echo(" 	</th>");
		
		echo(" 	<th bgcolor='#3BA3D0'> ");
		echo(" 		Active");
		echo(" 	</th>");
		
		echo(" 	<th bgcolor='#3BA3D0' width='100px'>");
		echo(" 		Load No");
		echo(" 	</th>");
		
		echo("</tr>");
		echo("</thead>");
		
		echo("<tbody>");
		
		$AllDoors = $this->Get_Dock_Doors_From_DB();
		for($i=0; $i < sizeof($AllDoors); $i++)
		{
			echo("<tr>");
			echo(" 	<td>" . $AllDoors[$i]['DoorNo'] ."</td>");
			echo(" 	<td>" . $AllDoors[$i]['ShipOrRec'] . "</td>");
			echo(" 	<td>" . $AllDoors[$i]['Active'] . "</td>");
			echo(" 	<td>" . $AllDoors[$i]['TrailerNo'] . "</td>");
			echo("</tr>");
		}
		echo("</tbody>");
		echo("</table>");
		
		echo("<table border ='5' align='right'>");
		echo("<thead>");
		
		echo("<tr>");
		echo(" 	<th colspan='4' bgcolor='#3BA3D0'>");
		echo(" 		Parking Spots");
		echo("	</th>");
		echo("</tr>");
		
		echo("<tr>");
		echo(" 	<th bgcolor='#3BA3D0' width='75px'>");
		echo(" 		Spot No");
		echo(" 	</th>");
		
		echo(" 	<th bgcolor='#3BA3D0'> ");
		echo(" 		Active");
		echo(" 	</th>");
		
		echo(" 	<th bgcolor='#3BA3D0' width='100px'>");
		echo(" 		Load No");
		echo(" 	</th>");
		
		echo("</tr>");
		echo("</thead>");
		
		echo("<tbody>");
		
		$AllSpots = $this->Get_Parking_Spots_From_DB();
		for($i=0; $i < sizeof($AllSpots); $i++)
		{
			echo("<tr>");
			echo(" 	<td>" . $AllSpots[$i]['SpotNo'] ."</td>");
			echo(" 	<td>" . $AllSpots[$i]['Active'] . "</td>");
			echo(" 	<td>" . $AllSpots[$i]['TrailerNo'] . "</td>");
			echo("</tr>");
		}
		echo("</tbody>");
		echo("</table>");
	}
		
	//-------------------------------------------------
	function DisplayNewUserForm()
	{
		echo("<form action= 'Assign5_Solution.php?BodyContent=processregistration'
			method='POST' >");
		echo("	<div id='RegistrationForm' ");
		echo(" 		style= 'background-color:#FFFF00; ");
		echo("		border:2px solid black; ");
		echo(" 		border-radius: 10px;");
		echo(" 		height:500px; ");
		echo(" 		width:100%; ");
		echo(" 		float:left;'> ");
		
		echo(" 		<h1 align='center'>Add New User</h1> ");
		
		echo("		<table style= 'margin:1cm;'> ");
		echo(" 			<tr> ");
		echo(" 				<td> <label> Employee ID </label> </td> ");
		echo(" 				<td> <input type='text' name='empId' size='20' >
								(must be unique)</td> ");
		echo(" 			</tr> ");
		
		echo(" 			<tr> ");
		echo(" 				<td> <label> Password </label></td> ");
		echo(" 				<td> <input type='text' name='password' size='20' ></td> ");
		echo(" 			</tr> ");
				
		echo(" 			<tr> ");
		echo(" 				<td> Permissions</td> ");
		echo(" 				<td> ");
		echo(" 					<fieldset> ");
		echo(" 						<legend><b> Check all that apply: </b> </legend> ");
		$UserPermissions = $this->Get_Permission_Categories();
		for ($i=0; $i<sizeof($UserPermissions); $i++)
		{
			$ID = $UserPermissions[$i]['PermissionId'];
			echo("<input type='checkbox' name='permissions[]' value='$ID'><br> ");
		}
		echo(" 					</fieldset> ");
		echo("				</td> ");
		echo(" 			</tr> ");
		
		echo(" 		</table> ");
		
		echo(" 		<p> </p> ");
		echo(" 		<center> ");
		echo(" 			<input type='image' ");
		echo(" 				src= '../images/signup.gif' ");
		echo(" 				height='45px' ");
		echo(" 				width ='90px' ");
		echo(" 			> ");
		echo(" 		</center> ");
		echo("	</div> ");
		echo("</form> ");
	}
	
	//-------------------------------------------------
	public function DisplayLocation()
	{
		echo("<table align='center' style='color:#FFFFFF'>");
		
		echo("<tbody>");
		$Location = $this->Get_User_Location_From_DB();
		for($i=0; $i < sizeof($Location); $i++)
		{
			echo("<tr>");
			echo(" 	<td>" . $Location[$i]['Workplace'] ."</td>");
			echo(" 	<td>" . $Location[$i]['WpAddress'] . "</td>");
			echo("</tr>");
		}
		echo("</body>");
		echo("</table>");
	}
	
	//-------------------------------------------------
	function AddNewUser()
	{
		if( !isset($_POST) )
		{
			echo("Form was not completed");
		}
		else
		{
			// The post method is used
			echo("<h3> User account creation</h3>");
			
			$empId = $_POST['employeeId'];
			$password = $_POST['password'];
			
			// write to database
			
			$sql = "CREATE USER $empId@'localhost' IDENTIFIED BY $password;";
			echo ($sql . "<br />");
			
			$status = mysqli_query($this->Con,$sql);
			if ($status == true) {
				echo "Successful Registration <br />";
				// Grant permissions:
				for($i =0; $i < sizeof($_POST['permissions']); $i++)
				{
					$permission = $_POST['permissions'][$i];
					
					$sql = "GRANT '$permission' ON `TrailerManagement` . *
						TO '$emdId'@'localhost';";
					echo ($sql . "<br />");
					$result = mysqli_query($this->Con,$sql);
				}
			}
			else {
				echo "Error in Registration: " . mysqli_error($this->Con) ." <br />";
			}
		}
	}
	
	//-------------------------------------------------
	public function Get_Dock_Doors_From_DB()
	{
		$sql = "SELECT
				dd.DoorNo,
				dd.ShipOrRec,
				dd.Active,
				tr.TrailerNo
			FROM
				dock_door dd
			LEFT OUTER JOIN trailer tr ON dd.WhGln = tr.DoorWh AND dd.DoorNo = tr.DoorNo
			";
			
		$result = mysqli_query($this->Con,$sql);
		
		$arrayResult = array();

		while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)) {
			$arrayResult[] = $row;
		}
		return($arrayResult);
	}
	
	//-------------------------------------------------
	public function Get_Parking_Spots_From_DB()
	{
		$sql = "SELECT
				ps.SpotNo,
				ps.Active,
				tr.TrailerNo
			FROM
				parking_spot ps
			LEFT OUTER JOIN trailer tr ON ps.WhGln = tr.SpotWh AND ps.SpotNo = tr.SpotNo
			";
			
		$result = mysqli_query($this->Con,$sql);
		
		$arrayResult = array();

		while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)) {
			$arrayResult[] = $row;
		}
		return($arrayResult);
	}
	
	//-------------------------------------------------
	public function Get_Trailers_From_DB()
	{
		$sql = "SELECT
				TrailerNo,
				Operator,
				SpotNo,
				SpotWh,
				DoorNo,
				DoorWh,
				LoadNo
			FROM
				trailer
			";
			
		$result = mysqli_query($this->Con,$sql);
		
		$arrayResult = array();

		while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)) {
			$arrayResult[] = $row;
		}
		return($arrayResult);
	}
	
	//-------------------------------------------------
	public function Get_User_Location_From_DB()
	{
		$sql = "SELECT
				CONCAT(comp.Name,' - ',wh.Name) as Workplace,
				CONCAT(wh.Street1,'  ',wh.City,', ',wh.State,' ',wh.Zip) as WpAddress
			FROM
				employee, company comp, warehouse wh
			WHERE
				EmployeeId = '101'";
				
		$result = mysqli_query($this->Con,$sql);
		
		$arrayResult = array();

		while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)) {
			$arrayResult[] = $row;
		}
		return($arrayResult);
	}
	
	//-------------------------------------------------
	public function Get_User_Role_From_DB($EmpId)
	{
		$sql = "SELECT
				WRole
			FROM
				employee
			WHERE
				EmployeeId = '$EmpId'";
				
		$result = mysqli_query($this->Con,$sql);
		return($result);
	}
		//-------------------------------------------------
	public function Get_Users_From_DB()
	{
		$sql = "SELECT
				emp.EmployeeId,
				CONCAT(emp.FName, ' ', emp.LName) AS Name,
				emp.WRole,
				wh.Name as Warehouse
			FROM
				employee emp, warehouse wh
			";
			
		$result = mysqli_query($this->Con,$sql);
		
		$arrayResult = array();

		while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)) {
			$arrayResult[] = $row;
		}
		return($arrayResult);
	}
	
		//-------------------------------------------------
	private function Get_Permission_Categories()
	{
		$sql = "SELECT
				'SELECT',
				'INSERT',
				'UPDATE',
				'DELETE' AS PermissionId
			FROM
				interest_type";
				
		$result = mysqli_query($this->Con,$sql);
		
		$arrayResult = array();
		
		return($arrayResult);
	}
}

?>