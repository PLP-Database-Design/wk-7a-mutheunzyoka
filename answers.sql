-- Question 1 Achieving 1NF (First Normal Form) 
create table productdetail(
productid int,
orderid int,
customername varchar (150),
product varchar (200),
quantity int,
primary key(orderid,productid)
);
INSERT INTO productdetail (productid, orderid, customername, product, quantity)
VALUES
    (1, 101, 'John Doe', 'Laptop', 2),
    (2, 101, 'John Doe', 'Mouse', 1),
    (3, 102, 'Jane Smith', 'Tablet', 3),
    (4, 102, 'Jane Smith', 'Keyboard', 1),
    (5, 102, 'Jane Smith', 'Mouse', 2),
    (6, 103, 'Emily Clark', 'Phone', 1);

    
--Question 2 Achieving 2NF (Second Normal Form)
create table customer(
orderid int primary key auto_increment,
customername varchar (150)
);