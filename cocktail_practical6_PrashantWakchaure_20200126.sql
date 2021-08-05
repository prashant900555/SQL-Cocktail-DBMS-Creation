/* Practical Week 6 - A cocktail for SQL*/

/* Student No. - 20200126*/
/* Name - Prashant Wakchaure*/

/* Content from Practical Week 2, 3 & 4 to get the previous weeks' tables*/

/*--- THE SOLVED QUERIES FOR PRACTICAL 6 ARE AT THE END ---*/

/* Firstly we will create the required database `cocktails`*/
DROP DATABASE if exists `cocktails`;

CREATE DATABASE `cocktails`;

/* We will then use the required `cocktails` database*/
USE `cocktails`;

/* 1st Table - Ingredient Table - Create a table for inserting the cocktails & the ingredients*/
DROP TABLE IF EXISTS `cocktails`.`ingredients`;
CREATE TABLE `ingredients` (
    cocktail_name VARCHAR(200),
    ingredient_name VARCHAR(200) DEFAULT 'NA',
    quantity DOUBLE PRECISION(10 , 2 ) DEFAULT 0,
    PRIMARY KEY (cocktail_name , ingredient_name)
);

/* 2nd Table - Garnishes Table - Create a table for inserting the cocktails & the garnishes accordingly*/
DROP TABLE IF EXISTS `cocktails`.`garnishes`;
CREATE TABLE `garnishes` (
    cocktail_name VARCHAR(200),
    garnish_name VARCHAR(200) DEFAULT 'NA',
    serving_suggestion VARCHAR(500) DEFAULT 'NA',
    PRIMARY KEY (cocktail_name , garnish_name)
);

/* 3rd Table - Garnishes Table - Create a table for inserting the cocktails & the type of ice accordingly*/
DROP TABLE IF EXISTS `cocktails`.`ice`;
CREATE TABLE `ice` (
    cocktail_name VARCHAR(500),
    ice_serving_suggestion VARCHAR(500) DEFAULT 'NA',
    PRIMARY KEY (cocktail_name)
);

/* 4th Table - Glass Table - Create a table for inserting the cocktails & the accompanied glass accordingly*/
DROP TABLE IF EXISTS `cocktails`.`glass`;
CREATE TABLE `glass` (
    cocktail_name VARCHAR(500),
    glass_type VARCHAR(500) DEFAULT 'NA',
    serving_suggestion VARCHAR(500) DEFAULT 'NA',
    PRIMARY KEY (cocktail_name)
);

/* Here on, we start inserting the data into the 4 tables, one thing to notice is that I've also set varchar to default 'NA' if there is no value over there, as we can see in some cases of garnishes table, where there is no garnish for the given cocktail*/
/* 1 - ALEXANDER*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('ALEXANDER', 'Cognac', 30);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('ALEXANDER', 'Crème de Cacao (Brown)', 30);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('ALEXANDER', 'Fresh Cream', 30);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('ALEXANDER', 'Ground Nutmeg', 'Sprinkle fresh on top');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('ALEXANDER', 'Pour all ingredients into cocktail shaker filled with ice cubes');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('ALEXANDER', 'Cocktail Glass', 'Shake and strain into a chilled cocktail glass');

/* 2 - AMERICANO*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('AMERICANO', 'Bitter Campari', 30);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('AMERICANO', 'Sweet Red Vermouth', 30);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('AMERICANO', 'Soda Water', 'A Splash of it');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('AMERICANO', 'Half-Orange Slice', 'Garnish with it');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('AMERICANO', 'Lemon Zest', 'Garnish with it');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('AMERICANO', 'Mix the ingredients directly in an old fashioned glass filled with ice cubes');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('AMERICANO', 'Old Fashioned Glass', 'Mix the ingredients directly in an old fashioned glass filled with ice cubes and stir gently');


/* 3 - ANGEL FACE*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('ANGEL FACE', 'Gin', 30);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('ANGEL FACE', 'Apricot Brandy', 30);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('ANGEL FACE', 'Calvados', 30);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`) VALUES ('ANGEL FACE');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('ANGEL FACE', 'Pour all ingredients into cocktail shaker filled with ice cubes');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('ANGEL FACE', 'Cocktail Glass', 'Strain into a chilled cocktail glass');


/* 4 - AVIATION*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('AVIATION', 'Gin', 45);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('AVIATION', 'Maraschino Luxardo', 15);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('AVIATION', 'Fresh Lemon Juice', 15);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('AVIATION', 'Crème de Violette', '1 Bar Spoon');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('AVIATION', 'Maraschino Cherry', 'Optional');
 
INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('AVIATION', 'Add all ingredients into a cocktail shaker and shake with cracked ice');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('AVIATION', 'Cocktail Glass', 'Strain into a chilled Cocktail glass');


/* 5 - BETWEEN THE SHEETS*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('BETWEEN THE SHEETS', 'White Rum', 30);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('BETWEEN THE SHEETS', 'Cognac', 30);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('BETWEEN THE SHEETS', 'Triple Sec', 30);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('BETWEEN THE SHEETS', 'Fresh Lemon Juice', 20);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`) VALUES ('BETWEEN THE SHEETS');
 
INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('BETWEEN THE SHEETS', 'Add all ingredients into a cocktail shaker and shake with ice');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('BETWEEN THE SHEETS', 'Cocktail Glass', 'Strain into a chilled cocktail glass');


/* 6 - BOULEVARDIER*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('BOULEVARDIER', 'Bourbon Whiskey', 45);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('BOULEVARDIER', 'Bitter Campari', 30);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('BOULEVARDIER', 'Sweet Red Vermouth', 30);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('BOULEVARDIER', 'Orange Zest', 'Garnish with it');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('BOULEVARDIER', 'Lemon Zest', 'Optional');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('BOULEVARDIER', 'Pour all ingredients into mixing glass with ice cubes and stir well.');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('BOULEVARDIER', 'Cocktail Glass', 'Strain into chilled cocktail glass');


/* 7 - BRANDY CRUSTA*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('BRANDY CRUSTA', 'Brandy', 52.5);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('BRANDY CRUSTA', 'Maraschino Luxardo', 7.5);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('BRANDY CRUSTA', 'Fresh Lemon Juice', 15);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('BRANDY CRUSTA', 'Spoon Curacao', '1 Bar');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('BRANDY CRUSTA', 'Spoon Simple Syrup', '1 Bar');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('BRANDY CRUSTA', 'Aromatic Bitters', '2 Dashes');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('BRANDY CRUSTA', 'Slice of Orange (or Lemon)', 'Rub it around the rim of the glass and dip it in pulverized white sugar, so that the sugar will adhere to the edge of the glass and carefully curling place it around the inside of the glass');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('BRANDY CRUSTA', 'Mix together all ingredients with ice cubes in a mixing glass');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('BRANDY CRUSTA', 'Slim Cocktail Glass', 'Strain into prepared slim cocktail glass');


/* 8 - CASINO*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('CASINO', 'Old Tom Gin', 40);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('CASINO', 'Maraschino Luxardo', 10);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('CASINO', 'Fresh Lemon Juice', 10);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('CASINO', 'Orange Bitters', '2 Dashes');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('CASINO', 'Lemon Zest', 'Garnish with it');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('CASINO', 'Maraschino Cherry', 'Garnish with it');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('CASINO', 'Pour all ingredients into cocktails shaker, shake well with ice');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('CASINO', 'Rocks Glass', 'Strain into chilled rocks glass with ice');


/* 9 - CLOVER CLUB*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('CLOVER CLUB', 'Gin', 45);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('CLOVER CLUB', 'Raspberry Syrup', 15);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('CLOVER CLUB', 'Fresh Lemon Juice', 15);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('CLOVER CLUB', 'Egg White', 'Few Drops');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`) VALUES ('CLOVER CLUB', 'Fresh raspberries');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('CLOVER CLUB', 'Pour all ingredients into cocktails shaker, shake well with ice');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('CLOVER CLUB', 'Cocktail Glass', 'Strain into chilled cocktail glass');


/* 10 - DAIQUIRI*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('DAIQUIRI', 'White Cuban Ron', 60);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('DAIQUIRI', 'Fresh Lime Juice', 20);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`) VALUES ('DAIQUIRI');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('DAIQUIRI', 'In a cocktail shaker add all ingredients and stir well to dissolve the sugar, finally add ice and shake');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('DAIQUIRI', 'Cocktail Glass', 'Strain into chilled cocktail glass');


/* 11 - DRY MARTINI*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('DRY MARTINI', 'Gin', 60);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('DRY MARTINI', 'Dry Vermouth', 10);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('DRY MARTINI', 'Lemon Peel', 'Squeeze oil from it onto the drink');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('DRY MARTINI', 'Green Olives', 'Garnish with it if requested');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('DRY MARTINI', 'Maraschino cherry', 'Garnish with it');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('DRY MARTINI', 'Pour all ingredients into mixing glass with ice cubes and stir well');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('DRY MARTINI', 'Martini Cocktail Glass', ' Strain into chilled martini cocktail glass');


/* 12 - GIN FIZZ*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('GIN FIZZ', 'Gin', 45);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('GIN FIZZ', 'Simple Syrup', 10);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('GIN FIZZ', 'Fresh Lemon Juice', 30);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('GIN FIZZ', 'Soda Water', 'A Splash of it');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('GIN FIZZ', 'Lemon Slice', 'Garnish with it');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('GIN FIZZ', 'Lemon Zest', 'Optional');

INSERT INTO `cocktails`.`ice` (`cocktail_name`) VALUES ('GIN FIZZ');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('GIN FIZZ', 'Tall Tumbler Glass', 'Shake all ingredients with ice except soda water and pour into thin tall Tumbler glass, top with a splash soda water');


/* 13 - HANKY PANKY*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('HANKY PANKY', 'London Dry Gin', 45);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('HANKY PANKY', 'Sweet Red Vermouth', 45);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('HANKY PANKY', 'Fernet Branca', 15);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`) VALUES ('HANKY PANKY', 'Orange Zest');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('HANKY PANKY', 'Pour all ingredients into mixing glass with ice cubes and stir well.');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('HANKY PANKY', 'Cocktail Glass', 'Strain into chilled cocktail glass');


/* 14 - JOHN COLLINS*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('JOHN COLLINS', 'Old Tom Gin', 45);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('JOHN COLLINS', 'Simple Syrup', 15);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('JOHN COLLINS', 'Fresh Lemon Juice', 30);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('JOHN COLLINS', 'Soda Water', 60);


INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('JOHN COLLINS', 'Lemon Slice', 'Garnish with it');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('JOHN COLLINS', 'Maraschino cherry', 'Garnish with it');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('JOHN COLLINS', 'Pour all ingredients directly into highball filled with ice and stir gently');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('JOHN COLLINS', 'Highball Glass', 'Pour all ingredients directly into highball filled with ice');


/* 15 - LAST WORD*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('LAST WORD', 'Gin', 22.5);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('LAST WORD', 'Green Chartreuse', 22.5);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('LAST WORD', 'Maraschino Luxardo', 22.5);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('LAST WORD', 'Fresh Lime Juice', 22.5);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`) VALUES ('LAST WORD');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('LAST WORD', 'Add all ingredients into a cocktail shaker and shake with ice');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('LAST WORD', 'Cocktail Glass', 'Strain into a chilled cocktail glass');


/* 16 - MANHATTAN*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('MANHATTAN', 'Rye Whiskey', 50);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('MANHATTAN', 'Sweet Red Vermouth', 20);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('MANHATTAN', 'Angostura Bitters', '1 Dash');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('MANHATTAN', 'Cocktail cherry', 'Garnish with it');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('MANHATTAN', 'Pour all ingredients into mixing glass with ice cubes and stir well');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('MANHATTAN', 'Cocktail Glass', 'Strain into chilled cocktail glass');


/* 17 - WHITE LADY*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('WHITE LADY', 'Gin', 40);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('WHITE LADY', 'Triple Sec', 30);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('WHITE LADY', 'Fresh Lemon Juice', 20);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`) VALUES ('WHITE LADY');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('WHITE LADY', 'Pour all ingredients into cocktail shaker, shake well with ice');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('WHITE LADY', 'Cocktail Glass', 'Strain into chilled cocktail glass');


/* 18 - WHISKEY SOUR*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('WHISKEY SOUR', 'Bourbon Whiskey', 45);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('WHISKEY SOUR', 'Fresh Lemon Juice', 25);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('WHISKEY SOUR', 'Sugar Syrup', 20);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('WHISKEY SOUR', 'Egg White', 20);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('WHISKEY SOUR', 'Half-orange slice', 'Garnish with it');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('WHISKEY SOUR', 'Maraschino cherry', 'Garnish with it');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('WHISKEY SOUR', 'Orange Zest', 'Optional');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('WHISKEY SOUR', 'Pour all ingredients into cocktail shaker filled with ice and shake well');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('WHISKEY SOUR', 'Cobbler Glass or Old fashioned Glass', 'Strain into cobbler glass and if served “On the rocks”, strain ingredients into old fashioned glass filled with ice');


/* 19 - SAZERAC*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('SAZERAC', 'Cognac', 50);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('SAZERAC', 'Absinthe', 10);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('SAZERAC', 'Sugar Cube', '1 cube');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('SAZERAC', 'Peychaud’s Bitters', '2 Dashes');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('SAZERAC', 'Lemon Zest', 'Garnish with it');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('SAZERAC', 'Rinse a chilled old-fashioned glass with the absinthe, add crushed ice and set it aside and stir the remaining ingredients over ice in a mixing glass');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('SAZERAC', 'Glass', 'Discard the ice and any excess absinthe from the prepared glass, strain the mixed drink into the glass');


/* 20 - RUSTY NAIL*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('RUSTY NAIL', 'Scotch Whisky', 45);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('RUSTY NAIL', 'Drambuie', 25);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('RUSTY NAIL', 'Lemon Zest', 'Garnish with it');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('RUSTY NAIL', 'Pour all ingredients directly into an old fashioned glass filled with ice and stir gently');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('RUSTY NAIL', 'Old Fashioned Glass', 'Pour all ingredients directly into an old fashioned glass filled with ice and stir gently');


/* 21 - RAMOS FIZZ*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('RAMOS FIZZ', 'Gin', 45);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('RAMOS FIZZ', 'Fresh Lime Juice', 15);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('RAMOS FIZZ', 'Fresh Lemon Juice', 15);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('RAMOS FIZZ', 'Sugar Syrup', 30);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('RAMOS FIZZ', 'Cream', 60);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('RAMOS FIZZ', 'Egg White', 30);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('RAMOS FIZZ', 'Orange Flower Water', '3 Dashes');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('RAMOS FIZZ', 'Vanilla Extract', '2 Drops');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`) VALUES ('RAMOS FIZZ', 'Soda Water');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('RAMOS FIZZ', 'Pour all ingredients except soda water in a cocktail shaker with ice, shake for two minutes, double strain in a glass, pour the drink back in the shaker and hard shake without ice for one minute');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('RAMOS FIZZ', 'Highball Glass', 'Strain into a highball glass, top up with soda');


/* 22 - PORTO FLIP*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('PORTO FLIP', 'Brandy', 15);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('PORTO FLIP', 'Red Tawny Port Wine', 45);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('PORTO FLIP', 'Ground nutmeg', 'Sprinkle fresh');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('PORTO FLIP', 'Pour all ingredients into cocktail shaker, shake well with ice');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('PORTO FLIP', 'Cocktail Glass', 'strain into chilled cocktail glass');


/* 23 - PLANTER'S PUNCH*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('PLANTER\'S PUNCH', 'Jamaican Rum', 45);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('PLANTER\'S PUNCH', 'Lime Juice', 15);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('PLANTER\'S PUNCH', 'Sugar Cane Juice', 30);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('PLANTER\'S PUNCH', 'Orange Zest', 'Garnish with it');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('PLANTER\'S PUNCH', 'Add dilution up to taste, it can be given by water, ice or fresh juices');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('PLANTER\'S PUNCH', 'Terracotta Glass', 'Pour all ingredients directly in a small tumbler or a typical terracotta glass');


/* 24 - PARADISE*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('PARADISE', 'Gin', 30);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('PARADISE', 'Apricot Brandy', 20);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('PARADISE', 'Fresh Orange Juice', 15);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`) VALUES ('PARADISE');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('PARADISE', 'Pour all ingredients into cocktail shaker, shake well with ice');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('PARADISE', 'Cocktail Glass', 'Strain into chilled cocktail glass');


/* 25 - OLD FASHIONED*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('OLD FASHIONED', 'Bourbon Whiskey', 45);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('OLD FASHIONED', 'Apricot Brandy', 20);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('OLD FASHIONED', 'Fresh Orange Juice', 15);

INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('OLD FASHIONED', 'Sugar Cube', '1 cube');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('OLD FASHIONED', 'Angostura Bitters', 'Few Dashes');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('OLD FASHIONED', 'Plain Water', 'Few Dashes');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('OLD FASHIONED', 'Orange Slice or Zest', 'Garnish with it');
INSERT INTO `cocktails`.`garnishes` (`cocktail_name`, `garnish_name`, `serving_suggestion`) VALUES ('OLD FASHIONED', 'Cocktail Cherry', 'Garnish with it');

INSERT INTO `cocktails`.`ice` (`cocktail_name`, `ice_serving_suggestion`) VALUES ('OLD FASHIONED', 'Fill the glass with ice cubes and add whiskey and stir gently');

INSERT INTO `cocktails`.`glass` (`cocktail_name`, `glass_type`, `serving_suggestion`) VALUES ('OLD FASHIONED', 'Old Fashioned Glass', 'Place sugar cube in old fashioned glass and saturate with bitter, add few dashes of plain water and muddle until dissolved');

/* 26 - Virgin Mary - Non-Alcoholic Cocktail*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('Virgin Mary', 'tomato juice', 150);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('Virgin Mary', 'Fresh Orange Juice', 15);

/* 27 - Cranberry Sparkler - Non-Alcoholic Cocktail*/
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('Cranberry Sparkler', 'Cranberry Juice', 177);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('Cranberry Sparkler', 'Sparkling Water', 59);
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('Cranberry Sparkler', 'Fresh Lemon Juice', 29);


/* ABV % TABLE */
DROP TABLE IF EXISTS `cocktails`.`abv_ratings`;
CREATE TABLE `abv_ratings` (
    ingredient_name VARCHAR(200) DEFAULT 'NA',
    ingredient_type VARCHAR(200) DEFAULT 'NA',
    `abv(%)` DOUBLE PRECISION(10 , 2 ) DEFAULT 0,
    PRIMARY KEY (ingredient_name)
);

INSERT INTO `cocktails`.`abv_ratings` (`ingredient_name`, `ingredient_type`, `abv(%)`) VALUES ('Cognac', 'Alcoholic Drink',  40), 
('Crème de Cacao (Brown)', 'Alcoholic Drink',  24), 
('Fresh Cream', 'Soft Drink',  0), 
('Bitter Campari', 'Alcoholic Drink',  25), 
('Sweet Red Vermouth', 'Alcoholic Drink', 16), 
('Apricot Brandy', 'Alcoholic Drink', 24), 
('Calvados', 'Alcoholic Drink', 40), 
('Gin', 'Alcoholic Drink', 42), 
('Fresh Lemon Juice', 'Soft Drink', 0), 
('Maraschino Luxardo', 'Alcoholic Drink', 32), 
('Triple Sec', 'Alcoholic Drink', 38), 
('White Rum', 'Alcoholic Drink', 40),
('Brandy', 'Alcoholic Drink', 50), 
('Old Tom Gin', 'Alcoholic Drink', 40), 
('Raspberry Syrup', 'Soft Drink', 0), 
('Fresh Lime Juice', 'Soft Drink', 0), 
('White Cuban Ron', 'Alcoholic Drink', 37.5), 
('Dry Vermouth', 'Alcoholic Drink', 14), 
('Simple Syrup', 'Soft Drink', 0), 
('Fernet Branca', 'Alcoholic Drink', 39), 
('London Dry Gin', 'Alcoholic Drink', 45), 
('Soda Water', 'Soft Drink', 0), 
('Green Chartreuse', 'Alcoholic Drink', 55), 
('Rye Whiskey', 'Alcoholic Drink', 62.5), 
('Fresh Orange Juice', 'Soft Drink', 0), 
('Jamaican Rum', 'Alcoholic Drink', 63), 
('Lime Juice', 'Soft Drink', 0), 
('Sugar Cane Juice', 'Soft Drink', 0), 
('Red Tawny Port Wine', 'Alcoholic Drink', 20), 
('Cream', 'Soft Drink', 0), 
('Egg White', 'Soft Drink', 0), 
('Sugar Syrup', 'Soft Drink', 0), 
('Drambuie', 'Alcoholic Drink', 40), 
('Scotch Whisky', 'Alcoholic Drink', 40), 
('Absinthe', 'Alcoholic Drink', 74), 
('Bourbon Whiskey', 'Alcoholic Drink', 40), 
('tomato juice', 'Soft Drink', 0), 
('Cranberry Juice', 'Soft Drink', 0), 
('Sparkling Water', 'Soft Drink', 0);
    
/* Cocktail ingredients - cost per unit TABLE */
DROP TABLE IF EXISTS `cocktails`.`costs`;
CREATE TABLE `costs` (
    ingredient_name VARCHAR(200) DEFAULT 'NA',
    `cost_per_unit(euros)` DOUBLE PRECISION(10 , 6 ) DEFAULT 0,
    PRIMARY KEY (ingredient_name)
);

INSERT INTO `cocktails`.`costs` (`ingredient_name`,`cost_per_unit(euros)`) VALUES ('Cognac', 40.31/700), 
('Crème de Cacao (Brown)', 25/700), 
('Fresh Cream',1.0/250), 
('Bitter Campari', 11.93/700), 
('Sweet Red Vermouth', 21/750), 
('Apricot Brandy', 9.67/700), 
('Calvados', 23.44/700), 
('Gin', 16.17/700), 
('Fresh Lemon Juice', 0.15/23), 
('Maraschino Luxardo', 36.99/750), 
('Triple Sec', 9.84/700), 
('White Rum', 10.03/1000), 
('Bourbon Whiskey', 23.05/700), 
('Brandy', 6/50), 
('Old Tom Gin', 24.37/700), 
('Raspberry Syrup', 10.77/700), 
('Cranberry Juice', 0.033/29.5735), 
('Sparkling Water', 0.69/500), 
('Fresh Lime Juice', 22.50/2000), 
('White Cuban Ron', 24.16/700), 
('Dry Vermouth', 21/750), 
('Simple Syrup', 11.47/700), 
('Fernet Branca', 13.81/700), 
('London Dry Gin', 13.31/1000), 
('Soda Water', 0.54/1000), 
('Green Chartreuse', 57.61/700), 
('Rye Whiskey', 49.25/700), 
('Fresh Orange Juice', 1.37/1000), 
('Jamaican Rum', 16.50/1000), 
('Lime Juice', 1/250), 
('Sugar Cane Juice', 4/700), 
('Red Tawny Port Wine', 17.24/750), 
('Cream', 1.79/350), 
('Egg White', 2.09/220), 
('Sugar Syrup', 9.99/1000), 
('Drambuie', 35/700), 
('Scotch Whisky', 9.16/700), 
('Absinthe', 9.95/350), 
('tomato juice', 0.58/200);


/* PRACTICAL WEEK 6 STARTS HERE */

USE `cocktails`;

/* Define a table that associates each cocktail with its cost_to_make. */
DROP TABLE if exists `cost_to_make`;
CREATE TABLE `cost_to_make` (
    cocktail_name VARCHAR(200) DEFAULT 'NA',
    `cost(euros)` DOUBLE DEFAULT 0,
    PRIMARY KEY (cocktail_name)
);

/* Explanation: Now, rather than inserting each value manually, I will populate the cost_to_make table using an insert into...select from.. query by 
selecting the cocktails and the formula [sum(quantity of ingredients * cost per unit(ml))] to calculate cost to make of each cocktail.*/
INSERT INTO cost_to_make (`cocktail_name`, `cost(euros)`) 
SELECT 
    ingredients.cocktail_name,
    ROUND(SUM(ingredients.quantity * costs.`cost_per_unit(euros)`),
            2)
FROM
    ingredients,
    costs
WHERE
    ingredients.ingredient_name = costs.ingredient_name
GROUP BY ingredients.cocktail_name;

/* Define a table that associates each cocktail with its average_ABV. */
CREATE TABLE `avg_abv` (
    cocktail_name VARCHAR(200) DEFAULT 'NA',
    `avg_abv(%)` DOUBLE DEFAULT 0,
    PRIMARY KEY (cocktail_name)
);

/* Explanation: Now, rather than inserting each value manually, I will populate the avg_abv table using an insert into...select from.. query and 
selecting the cocktails and the formula[sum((abv% of each ingredient * ingredients quantity) / sum(indregients quantity))] to calculate the average abv % of each cocktail.*/
INSERT INTO avg_abv (`cocktail_name`, `avg_abv(%)`) 
SELECT 
    ingredients.cocktail_name,
    ROUND(SUM(abv_ratings.`abv(%)` * ingredients.quantity) / SUM(ingredients.quantity),
            2)
FROM
    ingredients,
    abv_ratings
WHERE
    ingredients.ingredient_name = abv_ratings.ingredient_name
GROUP BY ingredients.cocktail_name;

/* Lets have a look at the populated tables */
SELECT * from cost_to_make;

SELECT * from avg_abv;

/* Define a trigger that updates the cost_to_make table every time a change is made to the ingredients table (from week 2). Define another to update average_ABV.*/
/* We will firstly set the SQL SAFE UPDATES to 0, so that the updates and deletes are not rejected*/
SET SQL_SAFE_UPDATES = 0;

/* UPDATE TRIGGER */
/* Explanation: Herein, I will be creating an after update trigger on the ingredients table, so that whenever the ingredients table is UPDATED, 
the "cost_to_make" & "avg_abv" tables are populated if there exists no entry of that particular cocktail, or updated in case if the particular updated cocktail 
exists in the table accordingly. 
One important thing to notice here is, I have included both the updates on the "cost_to_make" & "avg_abv" tables in a single trigger. 
We can also create a separate trigger for update in "avg_abv" table, but since the trigger is on the same table "ingredients", it becomes intuitive to comprehend what is happening. 
It simply means that the ingredients table (along with the "costs" and "abv_ratings" of each ingredient) is providing values to the newly defined "cost_to_make" & "avg_abv" tables. */
DROP TRIGGER if exists ingred_update;
DELIMITER $$
CREATE TRIGGER ingred_update 
AFTER UPDATE ON ingredients 
FOR EACH ROW
BEGIN

	/* If the updated cocktail in ingredients is unfortunately not inserted into the "cost_to_make" table,
	 then the update trigger will insert(ignore=if already inserted) the cost of that cocktail with the updated values from ingredients table. */
	IF ((SELECT COUNT(*) from cost_to_make where cocktail_name = new.cocktail_name) = 0) THEN
		INSERT IGNORE INTO cost_to_make (cocktail_name) VALUES (new.cocktail_name);
	END IF;
    
	/* If the updated cocktail in ingredients is unfortunately not inserted into the "avg_abv" table,
	 then the update trigger will insert(ignore=if already inserted) the average abv %  of that cocktail with the updated values from ingredients table. */
	IF ((SELECT COUNT(*) from avg_abv where cocktail_name = new.cocktail_name) = 0) THEN
		INSERT IGNORE INTO avg_abv (cocktail_name) VALUES (new.cocktail_name);
	END IF;

	/* On updating the ingredients table, we duly update the "cost_to_make" table with the NEWly updated total cost of that cocktail in the ingredients table.*/
	UPDATE cost_to_make 
	SET cost_to_make.`cost(euros)` = (SELECT final_costs_table.total_cost FROM -- Select the updated cocktails total cost using the formula accordingly.
										(SELECT cocktail_name, ROUND(SUM(ingredients.quantity * costs.`cost_per_unit(euros)`), 2) AS total_cost
											FROM ingredients -- We join the ingredients and costs table to get both the ingredients and cost per unit of an ingredient.
											INNER JOIN costs USING (ingredient_name) 
										GROUP BY cocktail_name) AS final_costs_table
									WHERE cocktail_name = NEW.cocktail_name)
	WHERE cocktail_name = NEW.cocktail_name;
    
	/* On updating the ingredients table, we duly update the "avg_abv" table with the NEWly updated total abv % of that cocktail in the ingredients table.*/
	UPDATE avg_abv 
	SET avg_abv.`avg_abv(%)` = (SELECT final_abv_table.total_abv FROM -- Select the updated cocktails total abv % using the formula accordingly.
									(SELECT cocktail_name, ROUND(SUM(abv_ratings.`abv(%)` * ingredients.quantity) / SUM(ingredients.quantity), 2) AS total_abv
										FROM ingredients -- We join the ingredients and abv_ratings table to get both the ingredients and abv % of an ingredient.
										INNER JOIN abv_ratings USING (ingredient_name)
									GROUP BY cocktail_name) AS final_abv_table 
								WHERE cocktail_name = NEW.cocktail_name)
	WHERE cocktail_name = NEW.cocktail_name;
    
END $$
DELIMITER ;

/* INSERT TRIGGER */
/* Explanation: Herein, I will be creating an after insert trigger on the ingredients table, so that whenever we insert any new ingredient of any cocktail or new cocktail into the ingredients table,
the "cost_to_make" & "avg_abv" tables are populated if there exists no entry of that particular cocktail and further updated in case if the particular updated cocktail 
exists in the table accordingly. 
One important thing to notice here is that, I have included both the updates on the "cost_to_make" & "avg_abv" tables in a single trigger. 
We can also create a separate trigger for insert in "avg_abv" table, but since the trigger is on the same table "ingredients", it becomes intuitive to comprehend what is happening. 
It simply means that the ingredients table (along with the "costs" and "abv_ratings" of each ingredient) is providing values to the newly defined "cost_to_make" & "avg_abv" tables. */
DROP TRIGGER if exists ingred_insert;
DELIMITER $$
CREATE TRIGGER ingred_insert 
AFTER INSERT ON ingredients 
FOR EACH ROW
BEGIN

	/* If the inserted ingredients' cocktail is not present into the "cost_to_make" table, then this query will add the 
    respective cocktail duly into the "cost_to_make" table & ignore if already inserted. */
	INSERT IGNORE INTO cost_to_make (cocktail_name) VALUES (new.cocktail_name);

	/* If the inserted ingredients' cocktail is not present into the "avg_abv" table, then this query will add the 
    respective cocktail duly into the "avg_abv" table & ignore if already inserted. */
	INSERT IGNORE INTO avg_abv (cocktail_name) VALUES (new.cocktail_name);
	
	/* On inserting ingredients into the ingredients table, if the cocktail(in which the ingredients are being added) is already present in the "cost_to_make" table, 
    then we just update the respective total cost of that cocktail because of the added ingredients into the cocktail.*/
	UPDATE cost_to_make 
	SET cost_to_make.`cost(euros)` = (SELECT final_costs_table.total_cost FROM -- Select the updated cocktails total cost using the formula accordingly.
										(SELECT cocktail_name, ROUND(SUM(ingredients.quantity * costs.`cost_per_unit(euros)`), 2) AS total_cost
											FROM ingredients -- We join the ingredients and costs table to get both the ingredients and cost per unit of an ingredient.
											INNER JOIN costs USING (ingredient_name) 
										GROUP BY cocktail_name) AS final_costs_table
									WHERE cocktail_name = NEW.cocktail_name)
	WHERE cocktail_name = NEW.cocktail_name;

	/* On inserting ingredients into the ingredients table, if the cocktail(in which the ingredients are being added) is already present in the "avg_abv" table, 
    then we just update the respective total abv % of that cocktail because of the added ingredients into the cocktail.*/
	UPDATE avg_abv 
	SET avg_abv.`avg_abv(%)` = (SELECT final_abv_table.total_abv FROM -- Select the updated cocktails total abv % using the formula accordingly.
									(SELECT cocktail_name, ROUND(SUM(abv_ratings.`abv(%)` * ingredients.quantity) / SUM(ingredients.quantity), 2) AS total_abv
										FROM ingredients -- We join the ingredients and abv_ratings table to get both the ingredients and abv % of an ingredient.
										INNER JOIN abv_ratings USING (ingredient_name)
									GROUP BY cocktail_name) AS final_abv_table 
								WHERE cocktail_name = NEW.cocktail_name)
	WHERE cocktail_name = NEW.cocktail_name;
    
END $$
DELIMITER ;

/* DELETE TRIGGER */
/* Explanation: Herein, I will be creating an after delete trigger on the ingredients table, so that whenever we delete any ingredient from the ingredients table,
the "cost_to_make" & "avg_abv" tables are updated with the updated values of costs and abv percentages respectively(i.e. not considering the deleted ingredients values).
If there exists no entry of that particular cocktails' deleted ingredients and if that cocktail has another ingredients with appropriate values, then it will get automatically 
reflected(inserted & further updated in the same manner) in the "cost_to_make" & "avg_abv" tables, since whatever we add, delete, or update from the ingredients table, 
the "cost_to_make" & "avg_abv" should act accordingly.
One important thing to notice here is that, I have included both the updates on the "cost_to_make" & "avg_abv" tables in a single trigger. 
We can also create a separate trigger for delete in "avg_abv" table, but since the trigger is on the same table "ingredients", it becomes intuitive to comprehend what is happening. 
It simply means that the ingredients table (along with the "costs" and "abv_ratings" of each ingredient) is providing values to the newly defined "cost_to_make" & "avg_abv" tables. */
DROP TRIGGER if exists ingred_delete;
DELIMITER $$
CREATE TRIGGER ingred_delete 
AFTER DELETE ON ingredients 
FOR EACH ROW
BEGIN

	/* If the deleted cocktail in ingredients is containing other cocktails with appropriate values and unfortunately not inserted into the "cost_to_make" table,
	 then the delete trigger will insert(ignore=if already inserted) the cost of that cocktail with the updated values from ingredients table. */
	IF ((SELECT COUNT(*) from cost_to_make where cocktail_name = old.cocktail_name) = 0) THEN
		INSERT IGNORE INTO cost_to_make (cocktail_name) VALUES (old.cocktail_name);
	END IF;
    
	/* If the deleted cocktail in ingredients is containing other cocktails with appropriate values and unfortunately not inserted into the "avg_abv" table,
	 then the delete trigger will insert(ignore=if already inserted) the average abv % of that cocktail with the updated values from ingredients table. */
	IF ((SELECT COUNT(*) from avg_abv where cocktail_name = old.cocktail_name) = 0) THEN
		INSERT IGNORE INTO avg_abv (cocktail_name) VALUES (old.cocktail_name);
	END IF;

	/* On deleting ingredients from the ingredients table, we duly update the "cost_to_make" table with the NEWly updated total cost of that cocktail in the ingredients table. 
    (if any more ingredients of that cocktail are present)*/
	UPDATE cost_to_make 
	SET cost_to_make.`cost(euros)` = (SELECT final_costs_table.total_cost FROM -- Select the updated cocktails total cost using the formula accordingly.
										(SELECT cocktail_name, ROUND(SUM(ingredients.quantity * costs.`cost_per_unit(euros)`), 2) AS total_cost
											FROM ingredients -- We join the ingredients and costs table to get both the ingredients and cost per unit of an ingredient.
											INNER JOIN costs USING (ingredient_name) 
										GROUP BY cocktail_name) AS final_costs_table
									WHERE cocktail_name = old.cocktail_name)
	WHERE cocktail_name = old.cocktail_name;
    
	/* On deleting ingredients from the the ingredients table, we duly update the "avg_abv" table with the NEWly updated total abv % of that cocktail in the ingredients table.
	(if any more ingredients of that cocktail are present)*/
	UPDATE avg_abv 
	SET avg_abv.`avg_abv(%)` = (SELECT final_abv_table.total_abv FROM -- Select the updated cocktails total abv % using the formula accordingly.
									(SELECT cocktail_name, ROUND(SUM(abv_ratings.`abv(%)` * ingredients.quantity) / SUM(ingredients.quantity), 2) AS total_abv
										FROM ingredients -- We join the ingredients and abv_ratings table to get both the ingredients and abv % of an ingredient.
										INNER JOIN abv_ratings USING (ingredient_name)
									GROUP BY cocktail_name) AS final_abv_table 
								WHERE cocktail_name = old.cocktail_name)
	WHERE cocktail_name = old.cocktail_name;
    
    /* If no ingredients of the cocktail are present in the ingredients table, then the updated total cost in the "cost_to_make" table becomes NULL, hence we delete it duly.*/
    DELETE FROM cost_to_make WHERE `cost(euros)` = '' OR `cost(euros)` IS NULL;
    
    /* If no ingredients of the cocktail are present in the ingredients table, then the updated total abv % in the "avg_abv" table becomes NULL, hence we delete it duly.*/    
	DELETE FROM avg_abv WHERE `avg_abv(%)` = '' OR `avg_abv(%)` IS NULL;
    
END $$
DELIMITER ;

SHOW TRIGGERS;

/* DEMONSTRATIONS: */

SELECT * from cost_to_make where cocktail_name='ALEXANDER';
/* OUTPUT:
	# cocktail_name	| cost(euros)
	  ALEXANDER		| 2.92 */

SELECT * from avg_abv where cocktail_name='ALEXANDER';
/* OUTPUT:
	# cocktail_name	| avg_abv(%)
	  ALEXANDER		| 21.33 */

/* Use of Insert trigger: */
INSERT INTO `cocktails`.`ingredients` (`cocktail_name`, `ingredient_name`, `quantity`) VALUES ('ALEXANDER', 'Fresh Lemon Juice', 50);
SELECT * from cost_to_make where cocktail_name='ALEXANDER';
/* OUTPUT for cost_to_make:
	# cocktail_name	| cost(euros)
	  ALEXANDER		| 3.25 */
/* As we can see; the cost of Alexander has increased to 3.25 from 2.92 as we insert an extra ingredient into the ingredients table.*/ 

SELECT * from avg_abv where cocktail_name='ALEXANDER';
/* OUTPUT for avg_abv:
	# cocktail_name	| avg_abv(%)
	  ALEXANDER		| 13.71 */
/* As we can see; the avg_abv of Alexander has decreased to 13.71 from21.33 as we inserted an extra ingredient into the ingredients table which is non-alcoholic.*/ 

/* Use of Delete Trigger: */
SET SQL_SAFE_UPDATES = 0;
DELETE FROM `cocktails`.`ingredients` 
WHERE (`cocktail_name` = 'ALEXANDER') AND (`ingredient_name` = 'Fresh Lemon Juice');
SELECT * from cost_to_make where cocktail_name='ALEXANDER';
/* OUTPUT:
	# cocktail_name	| cost(euros)
	  ALEXANDER		| 2.92 */
/* As we can see; the cost of Alexander has decreased back to 2.92 from 3.25 as we deleted the extra ingredient from the ingredients table.*/

SELECT * from avg_abv where cocktail_name='ALEXANDER';
/* OUTPUT:
	# cocktail_name	| avg_abv(%)
	  ALEXANDER		| 21.33 */
/* As we can see; the avg_abv of Alexander has again increased to 21.33 as we deleted the extra ingredient from the ingredients table which was non-alcoholic.*/ 

/* Use of Update Trigger: */
UPDATE ingredients 
SET quantity = 60
WHERE cocktail_name = 'ALEXANDER' AND ingredient_name = 'Cognac';
SELECT * from cost_to_make where cocktail_name='ALEXANDER';
/* OUTPUT:
	# cocktail_name	| cost(euros)
	  ALEXANDER		| 4.65 */
/* As we can see; the cost of Alexander has increased to 4.65 as we updated the Cognac ingredients' quantity from the ingredients table to 60.*/

SELECT * from avg_abv where cocktail_name='ALEXANDER';
/* OUTPUT:
	# cocktail_name	| avg_abv(%)
	  ALEXANDER		| 26 */
/* As we can see; the avg_abv of Alexander has again increased to 26 as we updated the Cognac ingredients' quantity from the ingredients table to 60 which is alcoholic.*/ 

/* Now we will delete the Alexander cocktail(all ingredients of Alexander) from the ingredients and have a look at the corresponding triggered tables*/
DELETE FROM `cocktails`.`ingredients` WHERE (`cocktail_name` = 'ALEXANDER') and (`ingredient_name` = 'Cognac');
DELETE FROM `cocktails`.`ingredients` WHERE (`cocktail_name` = 'ALEXANDER') and (`ingredient_name` = 'Crème de Cacao (Brown)');
DELETE FROM `cocktails`.`ingredients` WHERE (`cocktail_name` = 'ALEXANDER') and (`ingredient_name` = 'Fresh Cream');

/* Hence the cocktail ALEXANDER is now deleted duly from the cost_to_make table because of the trigger on ingredients.*/
SELECT * from cost_to_make where cocktail_name='ALEXANDER';

/* Hence the cocktail ALEXANDER is now deleted duly from the avg_abv table because of the trigger on ingredients.*/
SELECT * from avg_abv where cocktail_name='ALEXANDER';


