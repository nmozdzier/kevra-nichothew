<?php
	//want to make an onchange function that's query based and changes everything it needs to like the ingredients and the picture of the food, perhaps we do a parent function that executes all of those things
	function displaySandwichSelection(){
		$servername="placeholder";
		$username="placeholder";
		$password="placeholder";
		$dbname="placeholder";
		
		$connection = new mysqli($servername, $username, $password, $dbname);
		if ($connection->connect_error){
			die("Connection failed: ".$connection->connect_error);
		}
		echo "Connected to database";
	
		$sandwichQuery="SELECT name, price, ingredient_list, food_ID toasted FROM sandwiches;";
		$sandwichResult=mysqli_query($connection, $sandwichQuery);
		if ($sandwichResult -> num_rows > 0){
			echo "Choose your sandwich: <br>";
			echo "<select id=\"choice\" name=\"type\" onchange=\"changePrice()\">";//can we have multiple onchange things or do we need to have a parent fucntion that changes a bunch of things including the price
			while ($sandwich=$sandwichResult -> fetch_assoc()){
				echo "	<option value=".$sandwich["name"]." id=".$sandwich["food_ID"].">".$sandwich["name"]."</option>";
				echo "	</select>";
				echo "	<br><br>";
			}
		}
		$breadQuery="SELECT name, ingredient_ID FROM s_ingredients WHERE category=\"bread\";";
		breadResult=mysqli_query($connection, $breadQuery);
		if ($breadResult -> num_rows > 0){
			echo "Choose your bread: <br>"
			while ($bread=$breadResult -> fetch_assoc()){
				echo "<input value=".$bread["name"]."id=".$bread["ingredient_ID"]."name=bread_choice type=radio>".$bread["name"]."<br>";
			}
		echo "<br>";
		}
		$condimentQuery="SELECT name, ingredient_ID FROM s_ingredients WHERE category=\"condiment\";";
		condimentResult=mysqli_query($connection, $condimentQuery);
		if ($condimentResult -> num_rows > 0){
			echo "Choose your condiment: <br>"
			while ($condiment=$condimentResult -> fetch_assoc()){
				echo "<input value=".$condiment["name"]."id=".$condiment["ingredient_ID"]."name=condiment_choice type=radio>".$condiment["name"]."<br>";
			}
		echo "<br>";
		}
		mysqli_close($connection);
		
?>