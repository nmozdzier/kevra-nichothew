<?php
	//want to make an onchange function that's query based and changes everything it needs to like the ingredients and the picture of the food, perhaps we do a parent function that executes all of those things
	function displayCalzoneSelection(){
		$servername="placeholder";
		$username="placeholder";
		$password="placeholder";
		$dbname="placeholder";
		
		$connection = new mysqli($servername, $username, $password, $dbname);
		if ($connection->connect_error){
			die("Connection failed: ".$connection->connect_error);
		}
		echo "Connected to database";
		
		$pizzaQuery="SELECT name, food_ID, ingredient_list, price FROM pizza_calzones where on_menu_now=true:";
		$pizzaResult=mysqli_query($connection, $pizzaQuery);
		if ($pizzaResult -> num_rows > 0){
			echo "Choose your pizza: <br>";
			echo "<select id=\"choice\" name=\"type\" onchange=\"changePrice()\">";//can we have multiple onchange things or do we need to have a parent fucntion that changes a bunch of things including the price
			while($pizza=$pizzaResult -> fetch_assoc()){
				echo "	<option value=".$pizza["name"]." id=".$pizza["food_ID"].">".$pizza["name"]."</option>";
			}
			echo "</select>";
			echo "<br><br>";
		}
		mysqli_close($connection);
	}
?>