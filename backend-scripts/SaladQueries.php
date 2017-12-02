<?php
	function displaySaladSelection(){
		$servername="placeholder";
		$username="placeholder";
		$password="placeholder";
		$dbname="placeholder";
		
		$connection = new mysqli($servername, $username, $password, $dbname);
		if ($connection->connect_error){
			die("Connection failed: ".$connection->connect_error);
		}
		echo "Connected to database";
		$categoryQuery="SELECT category, category_description FROM salad;"
		$categoryResult=mysqli_query($connection, $categoryQuery);
		if ($categoryResult->num_rows > 0){
			while ($categoryRow=$categoryResult->fetch_assoc()){
				echo $categoryRow["category"]." (".categoryRow["category_description"]."):";//only want to echo this if there are contents in the row
				echo "Select your ingredients: <br>";
				$categoryValuesQuery="SELECT name, ingredient_ID, input_type FROM salad WHERE category=".$row.";";
				$categoryValuesResult=mysqli_query($connection, $categoryValuesQuery);
				if ($categoryValuesResult -> num_rows>0){
					while($categoryValueRow=categoryValuesResult -> fetch_assoc()){
						echo "<input value=".$categoryValueRow["name"]."id=".$categoryValueRow["ingredient_ID"]."name=".$categoryRow["name"]."type=".$categoryValueRow["input_type"].">".$categoryValueRow["name"]."<br>";
					}
					echo "<br>";
				}	
			}
		}
		mysqli_close($connection);
	}	
?>