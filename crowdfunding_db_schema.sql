--- Crowdfunding DB ---

--- DROP TABLES
DROP TABLE IF EXISTS contacts ;
DROP TABLE IF EXISTS category ;
DROP TABLE IF EXISTS subcategory ;
DROP TABLE IF EXISTS campaign ;

--- CREATE TABLES 
CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR (12) NOT NULL,
	last_name VARCHAR (13) NOT NULL,
	email VARCHAR (42) NOT NULL
);
CREATE TABLE category (
	category_id VARCHAR (4) PRIMARY KEY,
	category VARCHAR (12) UNIQUE NOT NULL
);
CREATE TABLE subcategory (
	subcategory_id VARCHAR (8) PRIMARY KEY,
	subcategory VARCHAR (17) UNIQUE NOT NULL
);
CREATE TABLE campaign (
	cf_id INT PRIMARY KEY,
	contact_id INT NOT NULL,
	company_name VARCHAR (33) NOT NULL,
	description VARCHAR (53) NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR (10) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR (2) NOT NULL,
	currency VARCHAR (3) NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR (4) NOT NULL,
	subcategory_id VARCHAR (8) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

--- CHECK TABLES 
SELECT * FROM contacts ;
SELECT * FROM category ;
SELECT * FROM subcategory ;
SELECT * FROM campaign ;