INSERT INTO Customers ( Fname, Lname, Address, Phone_num, Email, Balance, Date_registered) 
VALUES ('Robert', 'Harrell','10 78th Street, Brooklyn, NY, 11209', 5168070951, 'rharrell@gmail.com', 0, curdate()),
('Maria', 'Adimano','6 Arc Place, Staten Island, NY, 10306', 7185104476, 'rharrell@gmail.com', 0, curdate()),
(Null, Null, '17-25 Harman Street, Flushing, NY, 11385', 9176486238, 'harmanstreetllc@gmail.com', 1, curdate()),
('Amir', 'Shaba', '1160 Rockland Avenue, Staten Island, 10314', 6462441860, null, 0, curdate()),
('Jim', 'Bosco', '400 Skyline Drive, Staten Island, NY, 10304', 3474798657, null, 0, curdate());

INSERT INTO Invoices (Customer_id, Total_cost, Deposit, Balance)
Values (1, 16400.00, 5400.00, 0),
(2, 2800.00, 0, 0),
(3, 375.00, 0, 0),
(4, 750.00, 0, 0),
(4, 350.00, 0, 0),
(5, 9200.00, 0, 0),
(5, 12900.00, 0, 0),
(4, 1550.00, 0, 0),
(6, 3800.00, 0, 0),
(6, 475.00, 0, 0);

INSERT INTO Job (Customer_id, Total_cost, Deposit, Balance)
Values (1,3800.00, 0, 0);