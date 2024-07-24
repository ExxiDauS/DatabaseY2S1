CREATE TABLE title(
	title_id int,
  	title varchar(60) NOT NULL,
  	description varchar(400) NOT NULL,
  	rating varchar(4),
  	category varchar(20),
  	release_date date,
  	PRIMARY KEY `title_title_id` (title_id)
);