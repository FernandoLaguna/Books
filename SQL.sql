-- Creating tables for Base1
CREATE TABLE Base1 (
     isbn VARCHAR(20),
	 series VARCHAR(150),
	 language VARCHAR(40),
	 publisher VARCHAR(150),
	 price VARCHAR(10),
     PRIMARY KEY (isbn)
);

--Creating tables for Base2
CREATE TABLE base2 (
     isbn13 VARCHAR(20),
	 title VARCHAR(350),
	 subtitle VARCHAR(250),
	 authors VARCHAR(500),
	 categories VARCHAR(60),
	 published_year VARCHAR(15),
	 average_rating VARCHAR(15),
	 num_pages VARCHAR(10),
	 ratings_count VARCHAR(15),
     PRIMARY KEY (isbn13)
);