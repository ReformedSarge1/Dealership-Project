SELECT FROM Customer;

INSERT INTO Customer (
  First_name,
  last_name,
  phone,
  email,
  did_buy
)
VALUES (
  'Ray',
  'Cordova',
  '(696)321-1234'
  'raycord@gmail.com',
  'Bought Mitsubishi Lancer Evo 8'
)
SELECT FROM Serv_Mech;

INSERT INTO Serv_Mech (
  mechanic_id,
)
VALUES (
  1590
)
SELECT FROM Services;

INSERT INTO Services(
  services_invoice,
  services_history,
  serv_mech_id,
)
VALUES (
  20000
  'Vehicle had the timing belt replaced last year.'
  1920
)
SELECT FROM Salesperson;

INSERT INTO Salesperson (
  first_name,
  last_name,
)
VALUES (
  'Roy'
  'Caspian'
)
SELECT FROM Invoices;

INSERT INTO (
    isPaid,
    customer_id,
    salesperson_id,
    car_id,
    service_id,
)
VALUES (
    TRUE
    980987
    1765
    3426577
    16098
)
SELECT FROM Mechanic;

INSERT INTO Mechanic (
    first_name,
    last_name,
)
VALUES (
    'Stephen'
    'Wilder'
)
SELECT FROM Cars;

INSERT INTO Cars (
    isNew,
    years,
    make,
    model,
)
VALUES (
    TRUE
    2008
    'Mitsubishi'
    'Lancer Evo 8'
)