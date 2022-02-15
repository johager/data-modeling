create table users (
    user_id serial primary key,
    first_name varchar(75) not null,
    last_name varchar(75) not null,
    email varchar(100) not null,
    passwd varchar(500) not null,
    created timestamp  not null default now()
);

create table recipes (
    recipe_id serial primary key,
    user_id integer not null references users(user_id),
    instructions text not null,
    created timestamp not null default now(),
    is_public boolean
);

create table ingredients (
    ingredient_id serial primary key,
    name varchar(100) not null
);

create table grocery_lists (
    grocery_list_id serial primary key,
    user_id integer not null references users(user_id),
    created timestamp not null,
    status varchar(15) default 'to_get'
);

create table occasions (
    occasion_id serial primary key,
    user_id integer not null references users(user_id),
    occasion varchar(200)
);

create table recipes_ingredients (
    id serial primary key,
    recipe_id integer not null references recipes(recipe_id),
    ingredient_id integer not null references ingredients(ingredient_id),
    amount varchar(25)
);

create table grocery_lists_ingredients (
    id serial primary key,
    grocery_list_id integer not null references grocery_lists(grocery_list_id),
    ingredient_id integer not null references ingredients(ingredient_id),
    amount varchar(25)
);

create table occasions_recipes (
    id serial primary key,
    occasion_id integer not null references occasions(occasion_id),
    recipe_id integer not null references recipes(recipe_id)
);