/* Practical Week 2 - A cocktail for SQL*/

/* Student No. - 20200126*/
/* Name - Prashant Wakchaure*/

/* Firstly we will create the required database `cocktails`*/
CREATE DATABASE `cocktails`;

/* To just ensure our database is created or not, we will see the list of all the databases*/
SHOW DATABASES;

/* We will then use the required `cocktails` database*/
USE `cocktails`;

/* 1st Table - Ingredient Table - Create a table for inserting the cocktails & the ingredients*/
/* The composite key is cocktail_name-ingredient_name*/
CREATE TABLE `ingredients`(cocktail_name varchar(200), ingredient_name varchar(200) default 'NA', ingredient_type varchar(200) default 'NA', quantity double default 0, PRIMARY KEY(cocktail_name, ingredient_name) );

/* 2nd Table - Garnishes Table - Create a table for inserting the cocktails & the garnishes accordingly*/
/* The composite key is cocktail_name-garnish_name*/
CREATE TABLE `garnishes`(cocktail_name varchar(200), garnish_name varchar(200) default 'NA', serving_suggestion varchar(500) default 'NA', PRIMARY KEY(cocktail_name, garnish_name) );

/* 3rd Table - Garnishes Table - Create a table for inserting the cocktails & the type of ice accordingly*/
/* The atomic (primary) key is cocktail_name*/
CREATE TABLE `ice`(cocktail_name varchar(500), ice_serving_suggestion varchar(500) default 'NA', PRIMARY KEY(cocktail_name) );

/* 4th Table - Glass Table - Create a table for inserting the cocktails & the accompanied glass accordingly*/
/* The atomic (primary) key is cocktail_name*/
CREATE TABLE `glass`(cocktail_name varchar(500), glass_type varchar(500) default 'NA', serving_suggestion varchar(500) default 'NA', PRIMARY KEY(cocktail_name) );

/* Here on, we start inserting the data into the 4 tables, one thing to notice is that I've also set varchar to default 'NA' if there is no value over there, as we can see in some cases of garnishes table, where there is no garnish for the given cocktail*/
/* 1 - ALEXANDER*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('ALEXANDER', 'Cognac', 'Alcoholic Drink', 30);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('ALEXANDER', 'Crème de Cacao (Brown)', 'Alcoholic Drink', 30);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('ALEXANDER', 'Fresh Cream', 'Dairy Product', 30);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('ALEXANDER', 'Ground Nutmeg', 'Sprinkle fresh on top');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('ALEXANDER', 'Pour all ingredients into cocktail shaker filled with ice cubes');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('ALEXANDER', 'Cocktail Glass', 'Shake and strain into a chilled cocktail glass');

/* 2 - AMERICANO*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('AMERICANO', 'Bitter Campari', 'Alcoholic Drink', 30);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('AMERICANO', 'Sweet Red Vermouth', 'Alcoholic Drink', 30);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('AMERICANO', 'Soda Water', 'A Splash of it');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('AMERICANO', 'Half-Orange Slice', 'Garnish with it');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('AMERICANO', 'Lemon Zest', 'Garnish with it');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('AMERICANO', 'Mix the ingredients directly in an old fashioned glass filled with ice cubes');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('AMERICANO', 'Old Fashioned Glass', 'Mix the ingredients directly in an old fashioned glass filled with ice cubes and stir gently');


/* 3 - ANGEL FACE*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('ANGEL FACE', 'Gin', 'Alcoholic Drink', 30);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('ANGEL FACE', 'Apricot Brandy', 'Alcoholic Drink', 30);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('ANGEL FACE', 'Calvados', 'Alcoholic Drink', 30);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`) VALUES ('ANGEL FACE');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('ANGEL FACE', 'Pour all ingredients into cocktail shaker filled with ice cubes');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('ANGEL FACE', 'Cocktail Glass', 'Strain into a chilled cocktail glass');


/* 4 - AVIATION*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('AVIATION', 'Gin', 'Alcoholic Drink', 45);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('AVIATION', 'Maraschino Luxardo', 'Alcoholic Drink', 15);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('AVIATION', 'Fresh Lemon Juice', 'Soft Drink', 15);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('AVIATION', 'Crème de Violette', '1 Bar Spoon');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('AVIATION', 'Maraschino Cherry', 'Optional');
 
INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('AVIATION', 'Add all ingredients into a cocktail shaker and shake with cracked ice');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('AVIATION', 'Cocktail Glass', 'Strain into a chilled Cocktail glass');


/* 5 - BETWEEN THE SHEETS*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('BETWEEN THE SHEETS', 'White Rum', 'Alcoholic Drink', 30);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('BETWEEN THE SHEETS', 'Cognac', 'Alcoholic Drink', 30);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('BETWEEN THE SHEETS', 'Triple Sec', 'Alcoholic Drink', 30);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('BETWEEN THE SHEETS', 'Fresh Lemon Juice', 'Soft Drink', 20);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`) VALUES ('BETWEEN THE SHEETS');
 
INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('BETWEEN THE SHEETS', 'Add all ingredients into a cocktail shaker and shake with ice');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('BETWEEN THE SHEETS', 'Cocktail Glass', 'Strain into a chilled cocktail glass');


/* 6 - BOULEVARDIER*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('BOULEVARDIER', 'Bourbon or Rye Whiskey', 'Alcoholic Drink', 45);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('BOULEVARDIER', 'Bitter Campari', 'Alcoholic Drink', 30);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('BOULEVARDIER', 'Sweet Red Vermouth', 'Alcoholic Drink', 30);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('BOULEVARDIER', 'Orange Zest', 'Garnish with it');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('BOULEVARDIER', 'Lemon Zest', 'Optional');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('BOULEVARDIER', 'Pour all ingredients into mixing glass with ice cubes and stir well.');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('BOULEVARDIER', 'Cocktail Glass', 'Strain into chilled cocktail glass');


/* 7 - BRANDY CRUSTA*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('BRANDY CRUSTA', 'Brandy', 'Alcoholic Drink', 52.5);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('BRANDY CRUSTA', 'Maraschino Luxardo', 'Alcoholic Drink', 7.5);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('BRANDY CRUSTA', 'Fresh Lemon Juice', 'Soft Drink', 15);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('BRANDY CRUSTA', 'Spoon Curacao', '1 Bar');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('BRANDY CRUSTA', 'Spoon Simple Syrup', '1 Bar');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('BRANDY CRUSTA', 'Aromatic Bitters', '2 Dashes');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('BRANDY CRUSTA', 'Slice of Orange (or Lemon)', 'Rub it around the rim of the glass and dip it in pulverized white sugar, so that the sugar will adhere to the edge of the glass and carefully curling place it around the inside of the glass');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('BRANDY CRUSTA', 'Mix together all ingredients with ice cubes in a mixing glass');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('BRANDY CRUSTA', 'Slim Cocktail Glass', 'Strain into prepared slim cocktail glass');


/* 8 - CASINO*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('CASINO', 'Old Tom Gin', 'Alcoholic Drink', 40);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('CASINO', 'Maraschino Luxardo', 'Alcoholic Drink', 10);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('CASINO', 'Fresh Lemon Juice', 'Soft Drink', 10);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('CASINO', 'Orange Bitters', '2 Dashes');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('CASINO', 'Lemon Zest', 'Garnish with it');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('CASINO', 'Maraschino Cherry', 'Garnish with it');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('CASINO', 'Pour all ingredients into cocktails shaker, shake well with ice');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('CASINO', 'Rocks Glass', 'Strain into chilled rocks glass with ice');


/* 9 - CLOVER CLUB*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('CLOVER CLUB', 'Gin', 'Alcoholic Drink', 45);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('CLOVER CLUB', 'Raspberry Syrup', 'Soft Drink', 15);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('CLOVER CLUB', 'Fresh Lemon Juice', 'Soft Drink', 15);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('CLOVER CLUB', 'Egg White', 'Few Drops');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`) VALUES ('CLOVER CLUB', 'Fresh raspberries');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('CLOVER CLUB', 'Pour all ingredients into cocktails shaker, shake well with ice');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('CLOVER CLUB', 'Cocktail Glass', 'Strain into chilled cocktail glass');


/* 10 - DAIQUIRI*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('DAIQUIRI', 'White Cuban Ron', 'Alcoholic Drink', 60);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('DAIQUIRI', 'Fresh Lime Juice', 'Soft Drink', 20);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`) VALUES ('DAIQUIRI');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('DAIQUIRI', 'In a cocktail shaker add all ingredients and stir well to dissolve the sugar, finally add ice and shake');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('DAIQUIRI', 'Cocktail Glass', 'Strain into chilled cocktail glass');


/* 11 - DRY MARTINI*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('DRY MARTINI', 'Gin', 'Alcoholic Drink', 60);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('DRY MARTINI', 'Dry Vermouth', 'Alcoholic Drink', 10);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('DRY MARTINI', 'Lemon Peel', 'Squeeze oil from it onto the drink');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('DRY MARTINI', 'Green Olives', 'Garnish with it if requested');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('DRY MARTINI', 'Maraschino cherry', 'Garnish with it');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('DRY MARTINI', 'Pour all ingredients into mixing glass with ice cubes and stir well');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('DRY MARTINI', 'Martini Cocktail Glass', ' Strain into chilled martini cocktail glass');


/* 12 - GIN FIZZ*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('GIN FIZZ', 'Gin', 'Alcoholic Drink', 45);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('GIN FIZZ', 'Simple Syrup', 'Soft Drink', 10);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('GIN FIZZ', 'Fresh Lemon Juice', 'Soft Drink', 30);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('GIN FIZZ', 'Soda Water', 'A Splash of it');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('GIN FIZZ', 'Lemon Slice', 'Garnish with it');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('GIN FIZZ', 'Lemon Zest', 'Optional');

INSERT INTO `cocktails`.`ice` (`cocktail_name`) VALUES ('GIN FIZZ');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('GIN FIZZ', 'Tall Tumbler Glass', 'Shake all ingredients with ice except soda water and pour into thin tall Tumbler glass, top with a splash soda water');


/* 13 - HANKY PANKY*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('HANKY PANKY', 'London Dry Gin', 'Alcoholic Drink', 45);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('HANKY PANKY', 'Sweet Red Vermouth', 'Alcoholic Drink', 45);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('HANKY PANKY', 'Fernet Branca', 'Alcoholic Drink', 15);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`) VALUES ('HANKY PANKY', 'Orange Zest');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('HANKY PANKY', 'Pour all ingredients into mixing glass with ice cubes and stir well.');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('HANKY PANKY', 'Cocktail Glass', 'Strain into chilled cocktail glass');


/* 14 - JOHN COLLINS*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('JOHN COLLINS', 'Old Tom Gin', 'Alcoholic Drink', 45);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('JOHN COLLINS', 'Simple Syrup', 'Soft Drink', 15);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('JOHN COLLINS', 'Fresh Lemon Juice', 'Soft Drink', 30);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('JOHN COLLINS', 'Soda Water', 'Soft Drink', 60);


INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('JOHN COLLINS', 'Lemon Slice', 'Garnish with it');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('JOHN COLLINS', 'Maraschino cherry', 'Garnish with it');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('JOHN COLLINS', 'Pour all ingredients directly into highball filled with ice and stir gently');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('JOHN COLLINS', 'Highball Glass', 'Pour all ingredients directly into highball filled with ice');


/* 15 - LAST WORD*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('LAST WORD', 'Gin', 'Alcoholic Drink', 22.5);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('LAST WORD', 'Green Chartreuse', 'Alcoholic Drink', 22.5);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('LAST WORD', 'Maraschino Luxardo', 'Alcoholic Drink', 22.5);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('LAST WORD', 'Fresh Lime Juice', 'Soft Drink', 22.5);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`) VALUES ('LAST WORD');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('LAST WORD', 'Add all ingredients into a cocktail shaker and shake with ice');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('LAST WORD', 'Cocktail Glass', 'Strain into a chilled cocktail glass');


/* 16 - MANHATTAN*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('MANHATTAN', 'Rye Whiskey', 'Alcoholic Drink', 50);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('MANHATTAN', 'Sweet Red Vermouth', 'Alcoholic Drink', 20);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('MANHATTAN', 'Angostura Bitters', '1 Dash');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('MANHATTAN', 'Cocktail cherry', 'Garnish with it');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('MANHATTAN', 'Pour all ingredients into mixing glass with ice cubes and stir well');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('MANHATTAN', 'Cocktail Glass', 'Strain into chilled cocktail glass');


/* 17 - WHITE LADY*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('WHITE LADY', 'Gin', 'Alcoholic Drink', 40);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('WHITE LADY', 'Triple Sec', 'Alcoholic Drink', 30);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('WHITE LADY', 'Fresh Lemon Juice', 'Soft Drink', 20);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`) VALUES ('WHITE LADY');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('WHITE LADY', 'Pour all ingredients into cocktail shaker, shake well with ice');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('WHITE LADY', 'Cocktail Glass', 'Strain into chilled cocktail glass');


/* 18 - WHISKEY SOUR*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('WHISKEY SOUR', 'Bourbon Whiskey', 'Alcoholic Drink', 45);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('WHISKEY SOUR', 'Fresh Lemon Juice', 'Soft Drink', 25);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('WHISKEY SOUR', 'Sugar Syrup', 'Soft Drink', 20);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('WHISKEY SOUR', 'Egg White', 'Dairy Product', 20);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('WHISKEY SOUR', 'Half-orange slice', 'Garnish with it');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('WHISKEY SOUR', 'Maraschino cherry', 'Garnish with it');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('WHISKEY SOUR', 'Orange Zest', 'Optional');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('WHISKEY SOUR', 'Pour all ingredients into cocktail shaker filled with ice and shake well');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('WHISKEY SOUR', 'Cobbler Glass or Old fashioned Glass', 'Strain into cobbler glass and if served “On the rocks”, strain ingredients into old fashioned glass filled with ice');


/* 19 - SAZERAC*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('SAZERAC', 'Cognac', 'Alcoholic Drink', 50);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('SAZERAC', 'Absinthe', 'Alcoholic Drink', 10);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('SAZERAC', 'Sugar Cube', '1 cube');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('SAZERAC', 'Peychaud’s Bitters', '2 Dashes');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('SAZERAC', 'Lemon Zest', 'Garnish with it');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('SAZERAC', 'Rinse a chilled old-fashioned glass with the absinthe, add crushed ice and set it aside and stir the remaining ingredients over ice in a mixing glass');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('SAZERAC', 'Glass', 'Discard the ice and any excess absinthe from the prepared glass, strain the mixed drink into the glass');


/* 20 - RUSTY NAIL*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('RUSTY NAIL', 'Scotch Whisky', 'Alcoholic Drink', 45);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('RUSTY NAIL', 'Drambuie', 'Alcoholic Drink', 25);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('RUSTY NAIL', 'Lemon Zest', 'Garnish with it');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('RUSTY NAIL', 'Pour all ingredients directly into an old fashioned glass filled with ice and stir gently');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('RUSTY NAIL', 'Old Fashioned Glass', 'Pour all ingredients directly into an old fashioned glass filled with ice and stir gently');


/* 21 - RAMOS FIZZ*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('RAMOS FIZZ', 'Gin', 'Alcoholic Drink', 45);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('RAMOS FIZZ', 'Fresh Lime Juice', 'Soft Drink', 15);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('RAMOS FIZZ', 'Fresh Lemon Juice', 'Soft Drink', 15);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('RAMOS FIZZ', 'Sugar Syrup', 'Soft Drink', 30);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('RAMOS FIZZ', 'Cream', 'Dairy Product', 60);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('RAMOS FIZZ', 'Egg White', 'Dairy Product', 30);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('RAMOS FIZZ', 'Orange Flower Water', '3 Dashes');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('RAMOS FIZZ', 'Vanilla Extract', '2 Drops');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`) VALUES ('RAMOS FIZZ', 'Soda Water');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('RAMOS FIZZ', 'Pour all ingredients except soda water in a cocktail shaker with ice, shake for two minutes, double strain in a glass, pour the drink back in the shaker and hard shake without ice for one minute');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('RAMOS FIZZ', 'Highball Glass', 'Strain into a highball glass, top up with soda');


/* 22 - PORTO FLIP*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('PORTO FLIP', 'Brandy', 'Alcoholic Drink', 15);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('PORTO FLIP', 'Red Tawny Port Wine', 'Alcoholic Drink', 45);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('PORTO FLIP', 'Ground nutmeg', 'Sprinkle fresh');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('PORTO FLIP', 'Pour all ingredients into cocktail shaker, shake well with ice');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('PORTO FLIP', 'Cocktail Glass', 'strain into chilled cocktail glass');


/* 23 - PLANTER'S PUNCH*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('PLANTER\'S PUNCH', 'Jamaican Rum', 'Alcoholic Drink', 45);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('PLANTER\'S PUNCH', 'Lime Juice', 'Soft Drink', 15);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('PLANTER\'S PUNCH', 'Sugar Cane Juice', 'Soft Drink', 30);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('PLANTER\'S PUNCH', 'Orange Zest', 'Garnish with it');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('PLANTER\'S PUNCH', 'Add dilution up to taste, it can be given by water, ice or fresh juices');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('PLANTER\'S PUNCH', 'Terracotta Glass', 'Pour all ingredients directly in a small tumbler or a typical terracotta glass');


/* 24 - PARADISE*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('PARADISE', 'Gin', 'Alcoholic Drink', 30);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('PARADISE', 'Apricot Brandy', 'Alcoholic Drink', 20);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('PARADISE', 'Fresh Orange Juice', 'Soft Drink', 15);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`) VALUES ('PARADISE');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('PARADISE', 'Pour all ingredients into cocktail shaker, shake well with ice');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('PARADISE', 'Cocktail Glass', 'Strain into chilled cocktail glass');


/* 25 - OLD FASHIONED*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('OLD FASHIONED', 'Bourbon or Rye Whiskey', 'Alcoholic Drink', 45);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('OLD FASHIONED', 'Apricot Brandy', 'Alcoholic Drink', 20);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `ingredient_type`, `quantity`) VALUES ('OLD FASHIONED', 'Fresh Orange Juice', 'Soft Drink', 15);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('OLD FASHIONED', 'Sugar Cube', '1 cube');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('OLD FASHIONED', 'Angostura Bitters', 'Few Dashes');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('OLD FASHIONED', 'Plain Water', 'Few Dashes');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('OLD FASHIONED', 'Orange Slice or Zest', 'Garnish with it');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('OLD FASHIONED', 'Cocktail Cherry', 'Garnish with it');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('OLD FASHIONED', 'Fill the glass with ice cubes and add whiskey and stir gently');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('OLD FASHIONED', 'Old Fashioned Glass', 'Place sugar cube in old fashioned glass and saturate with bitter, add few dashes of plain water and muddle until dissolved');


/* The Final Database (4 tables) as suggested in the exercise looks like this - SELECT*/
SELECT * from ingredients;
SELECT * from garnishes;
SELECT * from ice;
SELECT * from glass;

/* Getting the count of the no. of cocktails inserted into the tables*/
SELECT count(distinct cocktail_name) as `NO. OF COCKTAILS in INGREDIENTS TABLE` from ingredients;
SELECT count(distinct cocktail_name) as `NO. OF COCKTAILS in GARNISHES TABLE` from garnishes;
SELECT count(*) as `NO. OF COCKTAILS in ICE TABLE` from ice;
SELECT count(*) as `NO. OF COCKTAILS in GLASS TABLE` from glass;
/* As we can see, we get 25 count of cocktails from all the tables, which satisfies the assignment condition*/

/* I also tried an INNER JOIN statement to join the ingredients and garnishes table with the cocktail_name as primary key common between them*/
SELECT distinct ingredients.cocktail_name, garnishes.garnish_name, garnishes.serving_suggestion
FROM ingredients
JOIN garnishes ON ingredients.cocktail_name=garnishes.cocktail_name;





