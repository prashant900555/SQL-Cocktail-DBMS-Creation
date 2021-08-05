/* Practical Week 1 - A cocktail for SQL*/

/* Student No. - 20200126*/
/* Name - Prashant Wakchaure*/

/* Firstly we will create the required database `cocktails1`*/
DROP DATABASE IF EXISTS `cocktails1`;
CREATE DATABASE `cocktails1`;

/* To just ensure our database is created or not, we will see the list of all the databases*/
SHOW DATABASES;

/* We will then use the required `cocktails1` database*/
USE `cocktails1`;

/* Create a table for inserting the cocktails1 & the ingredients*/
CREATE TABLE `the_cocktails1` (
    cocktail_name VARCHAR(500),
    `Cognac` DOUBLE DEFAULT 0,
    `Old Tom Gin` DOUBLE DEFAULT 0,
    `Crème de Cacao (Brown)` DOUBLE DEFAULT 0,
    `Fresh Cream` DOUBLE DEFAULT 0,
    `Bitter Campari` DOUBLE DEFAULT 0,
    `Sweet Red Vermouth` DOUBLE DEFAULT 0,
    `Gin` DOUBLE DEFAULT 0,
    `Apricot Brandy` DOUBLE DEFAULT 0,
    `Calvados` DOUBLE DEFAULT 0,
    `Maraschino Luxardo` DOUBLE DEFAULT 0,
    `Fresh Lemon Juice` DOUBLE DEFAULT 0,
    `White Rum` DOUBLE DEFAULT 0,
    `Triple Sec` DOUBLE DEFAULT 0,
    `Bourbon` DOUBLE DEFAULT 0,
    `Rye Whiskey` DOUBLE DEFAULT 0,
    `Brandy` DOUBLE DEFAULT 0,
    `Raspberry Syrup` DOUBLE DEFAULT 0,
    `White Cuban Ron` DOUBLE DEFAULT 0,
    `Simple Syrup` DOUBLE DEFAULT 0,
    `London Dry Gin` DOUBLE DEFAULT 0,
    `Fernet Branca` DOUBLE DEFAULT 0,
    `Green Chartreuse` DOUBLE DEFAULT 0,
    `Fresh Pineapple Juice` DOUBLE DEFAULT 0,
    `Fresh Orange Juice` DOUBLE DEFAULT 0,
    `Jamaican Rum` DOUBLE DEFAULT 0,
    `Lime Juice` DOUBLE DEFAULT 0,
    `Sugar Cane Juice` DOUBLE DEFAULT 0,
    `Red Tawny Port Wine` DOUBLE DEFAULT 0,
    `Egg Yolk` DOUBLE DEFAULT 0,
    `Sugar Syrup` DOUBLE DEFAULT 0,
    `Cream` DOUBLE DEFAULT 0,
    `Egg white` DOUBLE DEFAULT 0,
    `Scotch Whisky` DOUBLE DEFAULT 0,
    `Drambuie` DOUBLE DEFAULT 0,
    `Absinthe` DOUBLE DEFAULT 0,
    `White Crème de Menthe` DOUBLE DEFAULT 0,
    PRIMARY KEY (cocktail_name)
);
/* One thing to notice in the table is that the primary key is the `cocktail_name` which is unique for all the different variety of cocktails1 */

/* Just to have a demo at the ALTER DDL Statement, I purposely missed out some of the ingredients and added them later here*/
ALTER TABLE `cocktails1`.`the_cocktails1` ADD COLUMN `Dry Vermouth` DOUBLE NULL DEFAULT '0' AFTER `White Crème de Menthe`;
ALTER TABLE `cocktails1`.`the_cocktails1` ADD COLUMN `Soda Water` DOUBLE NULL DEFAULT '0' AFTER `Dry Vermouth`;
ALTER TABLE `cocktails1`.`the_cocktails1` ADD COLUMN `Grenadine Syrup` DOUBLE NULL DEFAULT '0' AFTER `Soda Water`;
ALTER TABLE `cocktails1`.`the_cocktails1` ADD COLUMN `Dry Gin` DOUBLE NULL DEFAULT '0' AFTER `Grenadine Syrup`;

/* Just to have a glance at our table, I will use the Data Manipulation Language command - SELECT*/
SELECT 
    *
FROM
    the_cocktails1;

/* Now, we will finally insert(DML statement) the cocktails1 with their appropriate quantities of ingredients whereever applicable (in millilitres)*/
INSERT INTO `cocktails1`.`the_cocktails1` (`cocktail_name`, `Cognac`, `Crème de Cacao (Brown)`, `Fresh Cream`) VALUES ('ALEXANDER', '30', '30', '30');
INSERT INTO `cocktails1`.`the_cocktails1` (`cocktail_name`, `Bitter Campari`, `Sweet Red Vermouth`) VALUES ('AMERICANO', '30', '30');
INSERT INTO `cocktails1`.`the_cocktails1` (`cocktail_name`, `Gin`, `Apricot Brandy`, `Calvados`) VALUES ('ANGEL FACE', '30', '30', '30');
INSERT INTO `cocktails1`.`the_cocktails1` (`cocktail_name`, `Gin`, `Maraschino Luxardo`, `Fresh Lemon Juice`) VALUES ('AVIATION', '45', '15', '15');
INSERT INTO `cocktails1`.`the_cocktails1` (`cocktail_name`, `Cognac`, `Fresh Lemon Juice`, `White Rum`, `Triple Sec`) VALUES ('BETWEEN THE SHEETS', '30', '20', '30', '30');
INSERT INTO `cocktails1`.`the_cocktails1` (`cocktail_name`, `Bitter Campari`, `Sweet Red Vermouth`, `Bourbon`) VALUES ('BOULEVARDIER', '30', '30', '45');
INSERT INTO `cocktails1`.`the_cocktails1` (`cocktail_name`, `Maraschino Luxardo`, `Fresh Lemon Juice`, `Brandy`) VALUES ('BRANDY CRUSTA', '7.5', '15', '52.5');
INSERT INTO `cocktails1`.`the_cocktails1` (`cocktail_name`, `Old Tom Gin`, `Maraschino Luxardo`, `Fresh Lemon Juice`) VALUES ('CASINO', '40', '10', '10');
INSERT INTO `cocktails1`.`the_cocktails1` (`cocktail_name`, `Gin`, `Fresh Lemon Juice`, `Raspberry Syrup`) VALUES ('CLOVER CLUB', '45', '15', '15');
INSERT INTO `cocktails1`.`the_cocktails1` (`cocktail_name`, `Fresh Lemon Juice`, `White Cuban Ron`) VALUES ('DAIQUIRI', '20', '60');
INSERT INTO `cocktails1`.`the_cocktails1` (`cocktail_name`, `Gin`, `Dry Vermouth`) VALUES ('DRY MARTINI', '60', '10');
INSERT INTO `cocktails1`.`the_cocktails1` (`cocktail_name`, `Gin`, `Fresh Lemon Juice`, `Simple Syrup`) VALUES ('GIN FIZZ', '45', '30', '10');
INSERT INTO `cocktails1`.`the_cocktails1` (`cocktail_name`, `Sweet Red Vermouth`, `London Dry Gin`, `Fernet Branca`) VALUES ('HANKY PANKY', '45', '45', '7.5');
INSERT INTO `cocktails1`.`the_cocktails1` (`cocktail_name`, `Gin`, `Fresh Lemon Juice`, `Simple Syrup`, `Soda Water`) VALUES ('JOHN COLLINS', '45', '30', '15', '60');
INSERT INTO `cocktails1`.`the_cocktails1` (`cocktail_name`, `Gin`, `Maraschino Luxardo`, `Fresh Lemon Juice`, `Green Chartreuse`) VALUES ('LAST WORD', '22.5', '22.5', '22.5', '22.5');
INSERT INTO `cocktails1`.`the_cocktails1` (`cocktail_name`, `Sweet Red Vermouth`, `Rye Whiskey`) VALUES ('MANHATTAN', '20', '50');
INSERT INTO `cocktails1`.`the_cocktails1` (`cocktail_name`, `Sweet Red Vermouth`, `London Dry Gin`) VALUES ('MARTINEZ', '45', '45');
INSERT INTO `cocktails1`.`the_cocktails1` (`cocktail_name`, `Maraschino Luxardo`, `White Rum`, `Fresh Pineapple Juice`, `Grenadine Syrup`) VALUES ('MARY PICKFORD', '7.5', '45', '45', '5');
INSERT INTO `cocktails1`.`the_cocktails1` (`cocktail_name`, `Fresh Orange Juice`, `Dry Gin`) VALUES ('MONKEY GLAND', '45', '45');
INSERT INTO `cocktails1`.`the_cocktails1` (`cocktail_name`, `Bitter Campari`, `Sweet Red Vermouth`, `Gin`) VALUES ('NEGRONI', '30', '30', '30');
INSERT INTO `cocktails1`.`the_cocktails1` (`cocktail_name`, `Bourbon`) VALUES ('OLD FASHIONED', '45');
INSERT INTO `cocktails1`.`the_cocktails1` (`cocktail_name`, `Gin`, `Apricot Brandy`, `Fresh Orange Juice`) VALUES ('PARADISE', '30', '20', '15');
INSERT INTO `cocktails1`.`the_cocktails1` (`cocktail_name`, `Jamaican Rum`, `Lime Juice`, `Sugar Cane Juice`) VALUES ('PLANTER’S PUNCH', '45', '15', '30');
INSERT INTO `cocktails1`.`the_cocktails1` (`cocktail_name`, `Brandy`, `Red Tawny Port Wine`, `Egg Yolk`) VALUES ('PORTO FLIP', '15', '45', '10');
INSERT INTO `cocktails1`.`the_cocktails1` (`cocktail_name`, `Gin`, `Fresh Lemon Juice`, `Lime Juice`, `Sugar Syrup`, `Cream`, `Egg white`) VALUES ('RAMOS FIZZ', '45', '15', '15', '30', '60', '30');

/* The Final Database as suggested in the exercise looks like this - SELECT*/
SELECT 
    *
FROM
    the_cocktails1;

/* Getting the count of the no. of cocktails1 inserted into the table*/
SELECT 
    COUNT(*) AS `NO. OF cocktails1`
FROM
    the_cocktails1;
/* As we can see, we get 25, which satisfies the assignment condition*/
