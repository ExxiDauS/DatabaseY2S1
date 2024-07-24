CREATE TABLE title_copy(
  copy_id int,
  title_id int NOT NULL,
  status varchar(15) NOT NULL,
  PRIMARY KEY `copy_id_pk` (copy_id),
  FOREIGN KEY (title_id) REFERENCES title(title_id)
);