## Explication des tables

** Table Client **

> Contient les infos des clients

```
CREATE TABLE clients (
    ClientId INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    FirstName VARCHAR(100) NOT NULL,
    Age INTEGER NOT NULL,
    Email VARCHAR(255) NOT NULL,
    PhoneNumber VARCHAR(10)
);
```
- **CLientId:** Id du client dan la Base de donnée
- **Name:** Nom du client
- **FirstName:** Prénom du client
- **Age:** Age du client
- **Email:** Adresse E-mail du client
- **PhoneNumber:** Numéro de téléphone du client



---

**Table "rooms"**

> Contient les informations des chambres
> 
```
CREATE TABLE rooms (
    RoomId INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,   
    Room INTEGER NOT NULL,
    ClientId INTEGER NOT NULL, 
    Arrival DATE,
    Departure DATE,
    FOREIGN KEY (ClientId) REFERENCES clients(ClientId)
);
```

- **RoomId:** Id de la chambre dans la base de donnée
- **Room:** Numéro de la chambre
- **ClientId:** Occupant de la chambre
- **Arrival:** Date d'arrivée du client dans la chambre
- **Departure:** Départ du client de la chambre



---

**Table menu**

> Contient les différnents plats proposés par l'hôtel

```
CREATE TABLE menu (
    FoodId INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Title varchar(100),
    Description varchar(255)
);
```

- **FoodId:** Id du plat dans la base de donnée
- **Title:** Nom du plat
- **Description:** Détails du plats (ingrédients, provenance, etc...)

---

**Table "orders"**

> Contient les détails des commandes passées dans l'hôtel

```
CREATE TABLE orders (
    OrderId INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    RoomId INTEGER NOT NULL,
    FoodId INTEGER NOT NULL,
    Quantity INTEGER NOT NULL,
    FOREIGN KEY (RoomId) REFERENCES rooms(RoomId),
    FOREIGN KEY (FoodId) REFERENCES menu(FoodId)
);
```
- **OrderId:** Id de la commande dans la base de donnée
- **RoomId:** La chambre ayant passé commande
- **FoodId:** Le plat commandé
- **Quantity:** La quantité de plats commandé