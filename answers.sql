-- Question 1 Achieving 1NF (First Normal Form) 
create table productdetail(
orderid int,
customername varchar (150),
product varchar (200),
);
INSERT INTO ProductDetail(OrderID, CustomerName, Products)
VALUES
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'),
(102, 'Jane Smith', 'Mouse'),
(103, 'Emily Clark', 'Phone');


    
--Question 2 Achieving 2NF (Second Normal Form)
create table customer(
orderid int primary key auto_increment,
customername varchar (150)
);

-- Product  table 
CREATE TABLE product(
product_id INT primary key,
productName varchar(100),
quantity INT,
order_id INT,
foreign key(order_id) references orders(OrderID)
);

insert into product(product_id,productName,quantity,order_id)
values 
(1,'laptop',2,101),
(2,'Mouse',1,101),
(3,'Tablet',3,102),
(4,'Keyboard',2,102),
(5,'Mouse',1,102),
(6,'Phone',1,103);
