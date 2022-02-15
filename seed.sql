insert into users (first_name, last_name, email, passwd)
values ('firstName','lastName','email@server.com','asdf()');

insert into ingredients (name) values
('ham'),
('swiss cheese'),
('rye bread');

insert into recipes (user_id, instructions, isPublic) values
(1,'Place ham and swiss on the rye bread.', true);

insert into recipes_ingredients (recipe_id,ingredient_id,amount) values
(1,1,'three slices'),
(1,2,'one slice'),
(1,3,'two slices');