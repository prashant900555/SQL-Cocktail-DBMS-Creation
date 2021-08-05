/* Practical Week 5 - A cocktail for SQL*/

/* Student No. - 20200126*/
/* Name - Prashant Wakchaure*/

/* Content from Practical Week 2, 3 & 4 to get the previous weeks' tables*/

/*--- THE SOLVED QUERIES FOR PRACTICAL 5 ARE AT THE END ---*/

/* Firstly we will create the required database `cocktails`*/
DROP DATABASE if exists `cocktails`;

CREATE DATABASE `cocktails`;

/* We will then use the required `cocktails` database*/
USE `cocktails`;

/* 1st Table - Ingredient Table - Create a table for inserting the cocktails & the ingredients*/
CREATE TABLE `ingredients` (
    cocktail_name VARCHAR(200),
    ingredient_name VARCHAR(200) DEFAULT 'NA',
    quantity DOUBLE PRECISION(10 , 2 ) DEFAULT 0,
    PRIMARY KEY (cocktail_name , ingredient_name)
);

/* 2nd Table - Garnishes Table - Create a table for inserting the cocktails & the garnishes accordingly*/
CREATE TABLE `garnishes` (
    cocktail_name VARCHAR(200),
    garnish_name VARCHAR(200) DEFAULT 'NA',
    serving_suggestion VARCHAR(500) DEFAULT 'NA',
    PRIMARY KEY (cocktail_name , garnish_name)
);

/* 3rd Table - Garnishes Table - Create a table for inserting the cocktails & the type of ice accordingly*/
CREATE TABLE `ice` (
    cocktail_name VARCHAR(500),
    ice_serving_suggestion VARCHAR(500) DEFAULT 'NA',
    PRIMARY KEY (cocktail_name)
);

/* 4th Table - Glass Table - Create a table for inserting the cocktails & the accompanied glass accordingly*/
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


/* Practical Week 5 starts here*/

USE `cocktails`;

/* Define a view that associates each cocktail with its cost to make. */
/* Explanation: The cost to make of each cocktail will be the sum(quantity of ingredients * cost per unit(ml)) grouped by the cocktails, 
for which we create a view "cost_to_make", which acts as a virtual table listing the cost to make of each cocktail,
and thus avoids us from running the respective select query multiple times.*/
CREATE VIEW cost_to_make AS
    SELECT 
        ingredients.cocktail_name AS alcoholic_cocktails,
        ROUND(SUM(ingredients.quantity * costs.`cost_per_unit(euros)`),
                2) AS `total_cost(euros)`
    FROM
        costs
            INNER JOIN
        ingredients ON ingredients.ingredient_name = costs.ingredient_name
    GROUP BY cocktail_name;

/* Define a view that associates each cocktail with its average ABV. */
/* Explanation: The average alcohol content is calculated by sum((abv% of each ingredient * ingredients quantity) / sum(indregients quantity)) grouped by the cocktails, 
for which we create a view "avg_abv", which acts as a virtual table listing the average ABV of each cocktail, 
and thus avoids us from running the respective select query multiple times.*/
CREATE VIEW avg_abv AS
    SELECT 
        ingredients.cocktail_name AS alcoholic_cocktails,
        ROUND(SUM(abv_ratings.`abv(%)` * ingredients.quantity) / SUM(ingredients.quantity),
                2) AS `avg_abv(%)`
    FROM
        abv_ratings
            INNER JOIN
        ingredients ON ingredients.ingredient_name = abv_ratings.ingredient_name
    GROUP BY cocktail_name;

/* Revisit your different treatment of cocktails in weeks 1 and 2. */
/* Define a view that integrates your week 2 treatment into a single table view as in week 1. 
(focus on alcoholic/soft ingredients only). */
/* Explanation: Herein, we will write a query using the "case..when..then..else" query, which is also called as T-SQL query
to basically pivot the distinct row values (ingredients) as columns with their appropriate values (quantities) as values(rows).
Thereby, we are integrating our ingredients table same as we did in the first practical week.*/
DROP VIEW if exists intg_cocktails;

CREATE VIEW intg_cocktails AS
    SELECT 
        ingredients.cocktail_name,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Cognac' THEN quantity
            ELSE 0
        END) `Cognac`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Crème de Cacao (Brown)' THEN quantity
            ELSE 0
        END) `Crème de Cacao (Brown)`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Fresh Cream' THEN quantity
            ELSE 0
        END) `Fresh Cream`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Bitter Campari' THEN quantity
            ELSE 0
        END) `Bitter Campari`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Sweet Red Vermouth' THEN quantity
            ELSE 0
        END) `Sweet Red Vermouth`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Apricot Brandy' THEN quantity
            ELSE 0
        END) `Apricot Brandy`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Calvados' THEN quantity
            ELSE 0
        END) `Calvados`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Gin' THEN quantity
            ELSE 0
        END) `Gin`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Fresh Lemon Juice' THEN quantity
            ELSE 0
        END) `Fresh Lemon Juice`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Maraschino Luxardo' THEN quantity
            ELSE 0
        END) `Maraschino Luxardo`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Triple Sec' THEN quantity
            ELSE 0
        END) `Triple Sec`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'White Rum' THEN quantity
            ELSE 0
        END) `White Rum`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Bourbon Whiskey' THEN quantity
            ELSE 0
        END) `Bourbon Whiskey`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Brandy' THEN quantity
            ELSE 0
        END) `Brandy`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Old Tom Gin' THEN quantity
            ELSE 0
        END) `Old Tom Gin`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Raspberry Syrup' THEN quantity
            ELSE 0
        END) `Raspberry Syrup`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Cranberry Juice' THEN quantity
            ELSE 0
        END) `Cranberry Juice`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Sparkling Water' THEN quantity
            ELSE 0
        END) `Sparkling Water`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Fresh Lime Juice' THEN quantity
            ELSE 0
        END) `Fresh Lime Juice`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'White Cuban Ron' THEN quantity
            ELSE 0
        END) `White Cuban Ron`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Dry Vermouth' THEN quantity
            ELSE 0
        END) `Dry Vermouth`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Simple Syrup' THEN quantity
            ELSE 0
        END) `Simple Syrup`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Fernet Branca' THEN quantity
            ELSE 0
        END) `Fernet Branca`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'London Dry Gin' THEN quantity
            ELSE 0
        END) `London Dry Gin`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Soda Water' THEN quantity
            ELSE 0
        END) `Soda Water`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Green Chartreuse' THEN quantity
            ELSE 0
        END) `Green Chartreuse`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Rye Whiskey' THEN quantity
            ELSE 0
        END) `Rye Whiskey`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Fresh Orange Juice' THEN quantity
            ELSE 0
        END) `Fresh Orange Juice`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Jamaican Rum' THEN quantity
            ELSE 0
        END) `Jamaican Rum`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Lime Juice' THEN quantity
            ELSE 0
        END) `Lime Juice`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Sugar Cane Juice' THEN quantity
            ELSE 0
        END) `Sugar Cane Juice`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Red Tawny Port Wine' THEN quantity
            ELSE 0
        END) `Red Tawny Port Wine`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Cream' THEN quantity
            ELSE 0
        END) `Cream`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Egg White' THEN quantity
            ELSE 0
        END) `Egg White`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Sugar Syrup' THEN quantity
            ELSE 0
        END) `Sugar Syrup`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Drambuie' THEN quantity
            ELSE 0
        END) `Drambuie`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Scotch Whisky' THEN quantity
            ELSE 0
        END) `Scotch Whisky`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'Absinthe' THEN quantity
            ELSE 0
        END) `Absinthe`,
        MAX(CASE
            WHEN ingredients.ingredient_name = 'tomato juice' THEN quantity
            ELSE 0
        END) `tomato juice`
    FROM
        ingredients
    GROUP BY ingredients.cocktail_name;

/* LETS HAVE A LOOK AT THE 3 CREATED VIEWS: */
SELECT 
    *
FROM
    cost_to_make;
    
SELECT 
    *
FROM
    avg_abv;
    
SELECT 
    *
FROM
    intg_cocktails;
