-- question 1
create table ProductsDetails (
  OrderID int,
  CustomerName varchar(50),
  Product varchar(50),
  primary key (OrderID, Product)
);

insert into ProductsDetails values (101, 'John Doe', 'Laptop');
insert into ProductsDetails values (101, 'John Doe', 'Mouse');
insert into ProductsDetails values (102, 'Jane Smith', 'Tablet');
insert into ProductsDetails values (102, 'Jane Smith', 'Keyboard');
insert into ProductsDetails values (102, 'Jane Smith', 'Mouse');
insert into ProductsDetails values (103, 'Emily Clark', 'Phone');


-- question 2

create table Customers (
  OrderID int primary key,
  CustomerName varchar(50)
);

insert into Customers 
values(101, 'John Doe'),(102, 'Jane Smith'),(103, 'Emily Clark');

create table OrderProducts (
  OrderID int,
  Product varchar(50),
  Quantity int,
  primary key (OrderID, Product),
  foreign key (OrderID) references Customers(OrderID)
);

insert into OrderProducts 
values(101, 'Laptop', 2),(101, 'Mouse', 1),(102, 'Tablet', 3),
(102, 'Keyboard', 1),(102, 'Mouse', 2),(103, 'Phone', 1);