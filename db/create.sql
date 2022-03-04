--
-- create tables
--
-- products
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  resell NUMERIC(10,2),
  stock_id INTEGER,
  interest_id INTEGER,
  supply_id INTEGER,
  time_id INTEGER,
  category VARCHAR(255)
);

--stocks 1:n relatie
  CREATE TABLE stocks (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  instock VARCHAR(150)
  );

--interest 1:n relatie
    CREATE TABLE interest (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR
);
  
--size n:m relatie
CREATE TABLE supplier (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR
);
  
--interest 1:n relatie
CREATE TABLE deliverytime (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  timedeliver TEXT
);

  






--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--



--mannen
insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Air Force 1 White', 'One of the most worn sneakers of this decade.', '816905633-0', 110, 85, 1, 1, 1, 1, 'male');

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Yeezy Boost 350 V2 Cinder', 'A beautiful sneaker made by the artist kanye.', '445924201-X', 220, 350, 2, 2, 3, 3, 'male');
  
insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Nike Air Max 1 Tinker Schematic', 'A beautiful sneaker with fantastic finish.', '686928463-6', 150, 250, 2, 2, 1, 1, 'male'); 

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Air Max 97', 'A very comfortable sneaker with a lot of colorways', '3420096523-7', 180, 130, 2, 2, 1, 1, 'male');
--vrouwen
insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Jordan 1 Mocha', 'One of the most used silhouettes with a beautiful suede finsh.', '077030122-3', 160, 450, 1, 1, 1, 1, 'female');
 
insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Yeezy 700 Boost Inertia', 'A beautiful colourway matching with a perfect silhouette.', '693155505-7', 300, 480, 2, 2, 3, 3, 'female');

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Christian Dior B23 Sneaker', 'A iconic silhouette with a luxury finish.', '492662523-7', 900, 1100, 1, 1, 2, 2, 'female');

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Yeezy 500 Taupe Light', 'A new sneaker currently on the market with a bold design.', '3420096523-7', 200, 225, 2, 2, 3, 3, 'female');
--kids  
insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Dunk Low Michigan', 'A iconic design in the colours of the university of Michigan.', '421667523-7', 85, 200, 1, 1, 1, 1, 'kids');

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Jordan 1 Retro High Shadow 2.0', 'A iconic silhouette with a beautiful colourway.', '3420096523-7', 130, 200, 1, 1, 1, 1, 'kids');

  insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Air Max Plus Supreme Black', 'A beautiful colourway designed by one of the hyped brands of the 21st century.', '3420096523-7', 120, 180, 2, 2, 1, 1, 'kids');

  insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Air Force 1 Black', 'A iconic design with a matt black finish.', '3420096523-7', 80, 50, 2, 2, 1, 1, 'kids');


--stocks
insert into stocks (instock) values ('Almost sold out');
insert into stocks (instock) values ('Enough in stock');
  
--interest
insert into interest (name) values ('Popular');  
insert into interest (name) values ('-');  
  
--supplier
insert into supplier (name) values ('Nike');  
insert into supplier (name) values ('Dior');  
insert into supplier (name) values ('Adidas');  

--deliverytime
insert into deliverytime (timedeliver) values ('3-5 business days');  
insert into deliverytime (timedeliver) values ('7-10 business days');  
insert into deliverytime (timedeliver) values ('1-3 business days');  
 




