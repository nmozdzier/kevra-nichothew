CREATE DATABASE cafe;
USE cafe;
CREATE TABLE users 
(
    userID int,
    firstName varchar(255),
    lastName varchar(255),
    dateOfBirth int,
    email varchar(255),
    passW varchar(255),
    phone int,
    address varchar(255),
    savedOrder varchar(255),
    lastOrder varchar(255)
);
CREATE TABLE food 
(
    foodID int,
    menuCategory varchar(255),
    name varchar(255),
    price decimal(4,2),
    onMenuNow boolean
);
CREATE TABLE pastOrders 
(
  orderID int,
  userID int,
  employeeID int,
  itemsOrdered varchar(255),
  subtotal decimal(4,2),
  total decimal(4,2),
  startTime decimal(4,2),
  CompletionTime decimal(4,2)
);
CREATE TABLE ingredients 
(
    ingredientID int,
    menuCategory varchar(255),
    name varchar(255),
    customizationStyle varchar(255)
);
CREATE TABLE employee
(
    employeeID int,
    firstName varchar(255),
    lastName varchar(255),
    password varchar(255)
);
INSERT INTO food VALUES (0, "salad", "salad", 2.89, true);
INSERT INTO food VALUES (1, "pizza", "cheese", 4.89, true);
INSERT INTO food VALUES (2, "pizza", "pepperoni", 5.49, true);
INSERT INTO food VALUES (3, "pizza", "bbq_chicken", 6.89, true);
INSERT INTO food VALUES (4, "pizza", "meat_lovers", 6.89, true);
INSERT INTO food VALUES (5, "pizza", "hawaiian", 6.89, true);
INSERT INTO food VALUES (6, "pizza", "margherita", 5.49, true);
INSERT INTO food VALUES (7, "pizza", "margheritin", 5.49, true);
INSERT INTO food VALUES (8, "pizza", "vegan", 5.39, true);
INSERT INTO food VALUES (9, "calzone", "cheese", 5.89, true);
INSERT INTO food VALUES (10, "calzone", "pepperoni", 6.49, true);
INSERT INTO food VALUES (11, "calzone", "bbq_chicken", 7.89, true);
INSERT INTO food VALUES (12, "calzone", "meat_lovers", 7.89, true);
INSERT INTO food VALUES (13, "calzone", "hawaiian", 7.89, true);
INSERT INTO food VALUES (14, "calzone", "margherita", 6.49, true);
INSERT INTO food VALUES (15, "calzone", "margheritin", 6.49, true);
INSERT INTO food VALUES (16, "calzone", "vegan", 6.39, true);
INSERT INTO food VALUES (17, "soup", "beef_bean_chili_8oz", 2.89, true);
INSERT INTO food VALUES (18, "soup", "beef_bean_chili_12oz", 3.89, true);
INSERT INTO food VALUES (19, "soup", "soup_of_day_8oz", 2.89, true);
INSERT INTO food VALUES (20, "soup", "soup_of_day_12oz", 3.89, true);
INSERT INTO food VALUES (21, "coffee", "coffee_12oz", 1.45, true);
INSERT INTO food VALUES (22, "coffee", "coffee_16oz", 1.80, true);
INSERT INTO food VALUES (23, "coffee", "coffee_20oz", 2.05, true);
INSERT INTO food VALUES (24, "tea", "tea_12oz", 1.19, true);
INSERT INTO food VALUES (25, "tea", "tea_16oz", 1.59, true);
INSERT INTO food VALUES (26, "tea", "tea_20oz", 1.89, true);
INSERT INTO food VALUES (27, "cider", "apple_12oz", 1.95, true);
INSERT INTO food VALUES (28, "cider", "apple_16oz", 2.35, true);
INSERT INTO food VALUES (29, "cider", "apple_20oz", 2.65, true);
INSERT INTO food VALUES (30, "smoothie", "smoothie_16oz", 5.89, true);
INSERT INTO food VALUES (31, "sandwich", "baker_bacon", 6.89, true);
INSERT INTO food VALUES (32, "sandwich", "bbq_chicken", 6.89, true);
INSERT INTO food VALUES (33, "sandwich", "classic_blt", 4.89, true);
INSERT INTO food VALUES (34, "sandwich", "classic_italian", 6.89, true);
INSERT INTO food VALUES (35, "sandwich", "darly_divine", 6.89, true);
INSERT INTO food VALUES (36, "sandwich", "farrand_fodder", 6.89, true);
INSERT INTO food VALUES (37, "sandwich", "hallett_ham", 6.89, true);
INSERT INTO food VALUES (38, "sandwich", "libby_licious", 6.89, true);
INSERT INTO food VALUES (39, "sandwich", "parisian_grilled_cheese", 5.89, true);
INSERT INTO food VALUES (40, "sandwich", "roast_beef_pepper_melt", 7.89, true);
INSERT INTO food VALUES (41, "sandwich", "tofu_mozzarella", 5.89, true);
INSERT INTO food VALUES (42, "sandwich", "tuna_melt", 5.89, true);
INSERT INTO food VALUES (43, "sandwich", "turkey_bacon_club", 6.89, true);
INSERT INTO food VALUES (44, "sandwich", "turkey_jalapeno_melt", 6.89, true);
INSERT INTO food VALUES (45, "sandwich", "veggie_club", 6.89, true);
INSERT INTO food VALUES (68, "dessert", "gelato_8oz", 2.89, true);
INSERT INTO food VALUES (69, "dessert", "gelato_12oz", 3.69, true);
INSERT INTO food VALUES (70, "dessert", "sundae_8oz", 2.89, true);
INSERT INTO food VALUES (71, "dessert", "sundae_12oz", 3.69, true);
INSERT INTO food VALUES (72, "dessert", "milkshake", 5.89, true);
INSERT INTO food VALUES (73, "dessert", "avalanche", 5.89, true);
INSERT INTO food VALUES (74, "dessert", "hot_chocolate_12oz", 2.85, true);
INSERT INTO food VALUES (74, "dessert", "hot_chocolate_16oz", 3.55, true);
INSERT INTO food VALUES (75, "dessert", "hot_chocolate_20oz", 3.85, true);
INSERT INTO food VALUES (76, "gluten_free", "hallett_ham_sandwich", 6.89, true);
INSERT INTO food VALUES (77, "gluten_free", "veggie_club_sandwich", 6.89, true);
INSERT INTO food VALUES (78, "gluten_free", "roast_turkey_wrap", 6.89, true);
INSERT INTO food VALUES (79, "gluten_free", "heavenly_hummus_wrap", 6.89, true);

INSERT INTO ingredients VALUES (1, "condiment", "ranch", "sandwich");
INSERT INTO ingredients VALUES (2, "condiment", "spicy_ranch", "sandwich");
INSERT INTO ingredients VALUES (3, "condiment", "mustard", "sandwich");
INSERT INTO ingredients VALUES (4, "condiment", "brown_mustard", "sandwich");
INSERT INTO ingredients VALUES (5, "condiment", "mayo", "sandwich");
INSERT INTO ingredients VALUES (6, "condiment", "bbq", "sandwich");
INSERT INTO ingredients VALUES (7, "condiment", "hot_sauce","sandwich" );
INSERT INTO ingredients VALUES (8, "condiment", "pesto", "sandwich");
INSERT INTO ingredients VALUES (9, "condiment", "hummus", "sandwich");
INSERT INTO ingredients VALUES (10, "condiment", "honey_mustard", "sandwich");
INSERT INTO ingredients VALUES (11, "condiment", "italian", "sandwich");
INSERT INTO ingredients VALUES (12, "condiment", "avocado", "sandwich");
INSERT INTO ingredients VALUES (13, "bread_choice", "white_baguette", "sandwich");
INSERT INTO ingredients VALUES (14, "bread_choice", "wheat_baguette", "sandwich");
INSERT INTO ingredients VALUES (15, "bread_choice", "white_ciabatta", "sandwich");
INSERT INTO ingredients VALUES (16, "bread_choice", "potato_rosemary_ciabatta", "sandwich");
INSERT INTO ingredients VALUES (17, "bread_choice", "focaccia", "sandwich");
INSERT INTO ingredients VALUES (18, "bread_choice", "7_grain", "sandwich");
INSERT INTO ingredients VALUES (19, "greens", "field_greens", "salad");
INSERT INTO ingredients VALUES (20, "greens", "romaine", "salad");
INSERT INTO ingredients VALUES (21, "greens", "spinach", "salad");
INSERT INTO ingredients VALUES (22, "veggies", "tomato", "salad");
INSERT INTO ingredients VALUES (23, "veggies", "onion", "salad");
INSERT INTO ingredients VALUES (24, "veggies", "olives", "salad");
INSERT INTO ingredients VALUES (25, "veggies", "mushrooms", "salad");
INSERT INTO ingredients VALUES (26, "veggies", "bell_peppers", "salad");
INSERT INTO ingredients VALUES (27, "veggies", "banana_peppers", );
INSERT INTO ingredients VALUES (28, "veggies", "broccoli", "salad");
INSERT INTO ingredients VALUES (29, "veggies", "cucumber", "salad");
INSERT INTO ingredients VALUES (30, "veggies", "jalapeno", "salad");
INSERT INTO ingredients VALUES (31, "veggies", "corn", "salad");
INSERT INTO ingredients VALUES (32, "veggies", "garbanzo_beans", "salad");
INSERT INTO ingredients VALUES (33, "veggies", "carrots", "salad");
INSERT INTO ingredients VALUES (34, "cheese", "cheddar", "salad");
INSERT INTO ingredients VALUES (35, "cheese", "feta", "salad");
INSERT INTO ingredients VALUES (36, "cheese", "parmesan", "salad");
INSERT INTO ingredients VALUES (37, "cheese", "blue", "salad");
INSERT INTO ingredients VALUES (38, "cheese", "mozzarella", "salad");
INSERT INTO ingredients VALUES (39, "protein", "turkey", "salad");
INSERT INTO ingredients VALUES (40, "protein", "chicken", "salad");
INSERT INTO ingredients VALUES (41, "protein", "tofu", "salad");
INSERT INTO ingredients VALUES (42, "protein", "bacon", "salad");
INSERT INTO ingredients VALUES (43, "protein", "tuna", "salad");
INSERT INTO ingredients VALUES (44, "protein", "salami", "salad");
INSERT INTO ingredients VALUES (45, "protein", "pepperoni", "salad");
INSERT INTO ingredients VALUES (46, "protein", "roast_beef", "salad");
INSERT INTO ingredients VALUES (47, "protein", "ham", "salad");
INSERT INTO ingredients VALUES (48, "toppings", "croutons", "salad");
INSERT INTO ingredients VALUES (49, "toppings", "cranberry_raisins", "salad");
INSERT INTO ingredients VALUES (50, "toppings", "sesame_seeds", "salad");
INSERT INTO ingredients VALUES (51, "dressing", "ranch", "salad");
INSERT INTO ingredients VALUES (52, "dressing", "spicy_ranch", "salad");
INSERT INTO ingredients VALUES (53, "dressing", "parmesan_peppercorn", "salad");
INSERT INTO ingredients VALUES (54, "dressing", "red_wine_vinaigrette", "salad");
INSERT INTO ingredients VALUES (55, "dressing", "raspberry_vinaigrette", "salad");
INSERT INTO ingredients VALUES (56, "dressing", "balsamic_vinaigrette", "salad");
INSERT INTO ingredients VALUES (57, "dressing", "caesar", "salad");
INSERT INTO ingredients VALUES (58, "dressing", "italian", "salad");
INSERT INTO ingredients VALUES (59, "dressing", "blue_cheese", "salad");
INSERT INTO ingredients VALUES (60, "dressing", "honey_mustard", "salad");
INSERT INTO ingredients VALUES (61, "dressing", "balsamic_vinegar_and_oil", "salad");
