CREATE TABLE Customers(
Customer_id INT NOT NULL AUTO_INCREMENT,
Fname varchar(25),
Lname varchar(25),
Address varchar(50),
Phone_num char(10),
Email varchar(75),
Balance BIT,
Date_registered DATE,
PRIMARY KEY(Customer_id)
);


CREATE TABLE Invoices(
Invoice_id INT NOT NULL AUTO_INCREMENT,
Customer_id INT,
Total_cost DECIMAL(8,2),
Deposit DECIMAL(7,2),
Balance DECIMAL(8,2),
PRIMARY KEY (Invoice_id),
FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id)
);

CREATE TABLE Job_Types(
Job_type_code INT NOT NULL AUTO_INCREMENT,
Descr VARCHAR(25),
PRIMARY KEY (Job_type_code)
);

CREATE TABLE Jobs(
Job_id INT NOT NULL AUTO_INCREMENT,
Customer_id INT,
Invoice_id INT,
Job_type_code INT,
PRIMARY KEY (Job_id),
FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id),
FOREIGN KEY (Invoice_id) REFERENCES Invoices(Invoice_id),
FOREIGN KEY (Job_type_code) REFERENCES Job_Types(Job_type_code)
);

CREATE TABLE Job_Details(
Job_id INT,
Material_used VARCHAR(50),
FOREIGN KEY (Job_id) REFERENCES Job_Types(Job_type_code),
PRIMARY KEY (Job_id, Material_used)
);

