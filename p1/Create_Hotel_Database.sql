CREATE TABLE clients (
    ClientId INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    FirstName VARCHAR(100) NOT NULL,
    Age INTEGER NOT NULL,
    Email VARCHAR(255) NOT NULL,
    PhoneNumber VARCHAR(10)
);

CREATE TABLE rooms (
    RoomId INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,   
    Room INTEGER NOT NULL,
    ClientId INTEGER NOT NULL, 
    Arrival DATE,
    Departure DATE,
    FOREIGN KEY (ClientId) REFERENCES clients(ClientId)
);


CREATE TABLE menu (
    FoodId INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Title varchar(100),
    Description varchar(255)
);

CREATE TABLE orders (
    OrderId INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    RoomId INTEGER NOT NULL,
    FoodId INTEGER NOT NULL,
    Quantity INTEGER NOT NULL,
    FOREIGN KEY (RoomId) REFERENCES rooms(RoomId),
    FOREIGN KEY (FoodId) REFERENCES menu(FoodId)
);