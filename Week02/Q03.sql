CREATE TABLE title_copy(
  copy_id int PRIMARY KEY,
  title_id int NOT NULL,
  status varchar(15) NOT NULL,
  FOREIGN KEY (title_id) REFERENCES title(title_id)
);