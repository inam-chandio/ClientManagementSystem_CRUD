

CREATE DATABASE client_db;

USE client_db;


CREATE TABLE clients (
    id INT PRIMARY KEY AUTO_INCREMENT,
    client_name VARCHAR(255),
    observations TEXT,
    page_number INT,
    social_name VARCHAR(255),
    responsible_person VARCHAR(255),
    commercial_contact VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(20),
    fiscal_address VARCHAR(255),
    shipping_address VARCHAR(255),
    accounting_link VARCHAR(255),
    invoice_format VARCHAR(50),
    payment_method VARCHAR(50),
    risk_level VARCHAR(50),
    max_credit DECIMAL(10, 2)
);
