CREATE TABLE title(
	title_id int PRIMARY KEY,
  	title varchar(60) NOT NULL,
  	description varchar(400) NOT NULL,
  	rating varchar(4),
  	category varchar(20),
  	release_date date
);