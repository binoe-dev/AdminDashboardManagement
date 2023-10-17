-- Set the search_path for your database schema if needed
-- SET search_path TO your_schema;

-- Table structure for table `accounts`
CREATE TABLE IF NOT EXISTS accounts (
  id serial PRIMARY KEY,
  username text,
  password text,
  role text,
  dateCreated date
);

-- Insert data into the `accounts` table
INSERT INTO accounts (id, username, password, role, dateCreated)
VALUES
(1, 'admin', '$2b$10$J1JTnk4KtLylMznNjWlRsOKPvsDEYDX.xyP77EY/Gq1JpccSnr3qa', 'admin', '2022-10-25');

-- Table structure for table `calendar`
CREATE TABLE IF NOT EXISTS calendar (
  id serial PRIMARY KEY,
  title text,
  details text,
  deadlineDate date,
  hours text,
  addDate date,
  worker text
);

-- Table structure for table `clients`
CREATE TABLE IF NOT EXISTS clients (
  client_id serial PRIMARY KEY,
  client text,
  clientDetails text,
  phone text,
  country text,
  street text,
  city text,
  postalCode text,
  clientDateCreated date
);

-- Table structure for table `orders`
CREATE TABLE IF NOT EXISTS orders (
  id serial PRIMARY KEY,
  client_id int,
  date date,
  price real,
  status text,
  workerName text
);

-- Table structure for table `products`
CREATE TABLE IF NOT EXISTS products (
  id serial PRIMARY KEY,
  order_id int,
  productName text,
  amount int,
  itemPrice real,
  totalPrice real
);
