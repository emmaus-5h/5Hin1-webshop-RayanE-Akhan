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
  stock_id INTEGER,
  resale_id INTEGER,
  size_id INTEGER,
  interest_id INTEGER,
  category VARCHAR(255)
);

--stocks 1:n relatie
  CREATE TABLE stocks (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  stockinfo VARCHAR(150)
  );

--resale price n:m relatie
  CREATE TABLE resale (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  pricesale NUMERIC
  );


--size n:m relatie
CREATE TABLE sizes (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  size VARCHAR
);
  
--interest 1:n relatie
    CREATE TABLE interest (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  interest VARCHAR
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
insert into products (name, description, code, price, stock_id, category) values ('Air Force 1 White', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id.', '816905633-0', 10.5, 2, 'male');
--vrouwen
insert into products (name, description, code, price, stock_id, category) values ('Jordan 1 Mocha', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '077030122-3', 11, 1, 'female');
--mannen
insert into products (name, description, code, price, stock_id, category) values ('Yeezy Boost 350 V2 Cinder', 'Pellentesque at nulla. Suspendisse potenti.', '445924201-X', 13.5, 2, 'male');
--vrouwen  
insert into products (name, description, code, price, stock_id, category) values ('Yeezy 700 Boost Inertia', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '693155505-7', 13.5, 1, 'female');
--mannen  
insert into products (name, description, code, price, stock_id, category) values ('Nike Air Max 1 Tinker Schematic', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 14, 1, 'male');
--vrouwen  
insert into products (name, description, code, price, stock_id, category) values ('Christian Dior B23 Sneaker', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14, 2, 'female');
--kids  
insert into products (name, description, code, price, stock_id, category) values ('Dunk Low Michigan', 'sam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '421667523-7', 14, 2, 'kids');
--vrouwen  
insert into products (name, description, code, price, stock_id, category) values ('Originals Ozweego', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '3420096523-7', 14, 1, 'female');
--kids 
insert into products (name, description, code, price, stock_id, category) values ('Jordan 1 Retro High Shadow 2.0', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '3420096523-7', 14, 2, 'kids');
--kids
  insert into products (name, description, code, price, stock_id, category) values ('Air Max Plus Supreme Black', 'dam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '3420096523-7', 14, 1, 'kids');
--kids  
  insert into products (name, description, code, price, stock_id, category) values ('Air Force 1 Black', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '3420096523-7', 14, 2, 'kids');
--mannen
insert into products (name, description, code, price, stock_id, category) values ('Air Max 97', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '3420096523-7', 14, 1, 'male');

--stocks
insert into stocks (stockinfo) values ('Almost sold out');
insert into stocks (stockinfo) values ('Enough in stock');

--sizes
--insert into sizes (name) values ('XS');  
--insert into sizes (name) values ('S');  
--insert into sizes (name) values ('M');  
--insert into sizes (name) values ('L');  
--insert into sizes (name) values ('XL');  

--interest
--insert into interest (name) values ('Popular');  


