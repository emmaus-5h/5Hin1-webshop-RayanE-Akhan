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

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Yeezy Boost 350 V2 Cinder', 'Pellentesque at nulla. Suspendisse potenti.', '445924201-X', 13.5, 10, 2, 2, 3, 3, 'male');
  
insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Nike Air Max 1 Tinker Schematic', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 14, 10, 2, 2, 1, 1, 'male'); 

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Air Max 97', 'A very comfortable sneaker with a lot of colorways', '3420096523-7', 180, 130, 2, 2, 1, 1, 'male');
--vrouwen
insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Jordan 1 Mocha', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '077030122-3', 11, 10, 1, 1, 1, 1, 'female');
 
insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Yeezy 700 Boost Inertia', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '693155505-7', 13.5, 10, 2, 2, 3, 3, 'female');

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Christian Dior B23 Sneaker', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14, 10, 1, 1, 2, 2, 'female');

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Yeezy 500 Taupe Light', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '3420096523-7', 14, 10, 2, 2, 3, 3, 'female');
--kids  
insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Dunk Low Michigan', 'sam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '421667523-7', 14, 10, 1, 1, 1, 1, 'kids');

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Jordan 1 Retro High Shadow 2.0', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '3420096523-7', 14, 10, 1, 1, 1, 1, 'kids');

  insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Air Max Plus Supreme Black', 'dam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '3420096523-7', 14, 10, 2, 2, 1, 1, 'kids');

  insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Air Force 1 Black', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '3420096523-7', 14, 10, 2, 2, 1, 1, 'kids');


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
 




