ALTER TABLE title
ADD CONSTRAINT title_cat_fk
FOREIGN KEY (category_id)
REFERENCES title_category(title_category_id);