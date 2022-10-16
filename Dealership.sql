CREATE TABLE Salesperson (
  salesperson_id SERIAL,
  first_name VARCHAR(20),
  last_name VARCHAR(20),
  PRIMARY KEY (salesperson_id)
);
CREATE TABLE Customer (
  customer_id  SERIAL,
  first_name VARCHAR(20),
  last_name VARCHAR(20),
  phone INTEGER(10),
  email VARCHAR(20),
  did_Buy BOOLEAN,
  PRIMARY KEY (customer_id )
);


SELECT * FROM Serv_Mech(
  CREATE TABLE Serv_Mech (
  serv_mech_id SERIAL,
  mechanic_id INTEGER,
  PRIMARY KEY (serv_mech_id)
);

SELECT * FROM Service(
  CREATE TABLE Service (
  service_id SERIAL,
  service_invoice INTEGER,
  service_history VARCHAR(250),
  serv_mech_id INTEGER,
  PRIMARY KEY (service_id),
  FOREIGN KEY (serv_mech_id) REFERENCES Serv_Mech(serv_mech_id)
);
)
SELECT * FROM cars(
  CREATE TABLE cars (
  car_id SERIAL,
  isNew BOOLEAN,
  year INTEGER,
  make VARCHAR(30),
  model VARCHAR(30),
  PRIMARY KEY (car_id)
);
)
SELECT * FROM Invoices(
 CREATE TABLE Invoices (
  invoice_id SERIAL,
  isPaid BOOLEAN,
  customer_id INTEGER,
  salesperson_id INTEGER,
  car_id INTEGER,
  service_id INTEGER,
  PRIMARY KEY (invoice_id),
  FOREIGN KEY (salesperson_id) REFERENCES Salesperson(salesperson_id),
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
  FOREIGN KEY (service_id) REFERENCES Service(service_id),
  FOREIGN KEY (car_id) REFERENCES cars(car_id)
); 
)

SELECT * FROM Mechanic(
  CREATE TABLE Mechanic (
  mechanic_id SERIAL,
  first_name VARCHAR(15),
  last_name VARCHAR(15),
  PRIMARY KEY (mechanic_id),
  FOREIGN KEY (mechanic_id) REFERENCES Serv_Mech(mechanic_id)
);
)


