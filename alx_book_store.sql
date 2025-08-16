CREATE DATABASE alx_book_store;
USE alx_book_store;

CREATE TABLE Books(
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    author_id INT FOREIGN KEY REFERENCES Authors(author_id),
    price DOUBLE,
    publication_date DATE
);

CREATE TABLE authors(
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR(255)
);

CREATE TABLE Customers(
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(255),
    email_address VARCHAR(215),
    address TEXT
);

CRATE TABLE Orders(
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT FOREIGN KEY REFERENCES Customers(customer_id),
    order_date DATE
);

CREATE TABLE Order_Details(
    orderdetailid PRIMARY KEY AUTO_INCREMENT,
    order_id Foreign Key references Orders(order_id),
    book_id Foreign Key references Books(book_id),
    quantity DOUBLE
);
