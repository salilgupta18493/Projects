CREATE TABLE Items (
  ItemID      INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  CatID      INT NOT NULL,
  ItemName    VARCHAR(100) NOT NULL,
  ItemPrice   DECIMAL UNSIGNED NOT NULL,
  ItemStock   INT UNSIGNED NOT NULL,
  INDEX(ItemID, CatID),
  FOREIGN KEY(CatID) REFERENCES Category(CatID)
);

CREATE TABLE Category (
  CatID      INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  ItemId     INT NOT NULL,
  CatName    VARCHAR(20) NOT NULL
);

CREATE TABLE USER (

 UserId NOT NULL PRIMARY KEY,
 FirstName,
 LastName
);


CREATE TABLE OFFER (

 OfferId  INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 ItemId  INT NOT NULL,
 ThresholdQuantity INT NOT NULL,
 DiscountCategory VARCHAR(20) NOT NULL,
 Description VARCHAR(100),
 OfferValue INT NOT NULL
);

CREATE TABLE CART_USER_MAPPING (
 CartID  NOT NULL
 UserID  NOT NULL 
);


CREATE TABLE CART (

 CartId  NOT NULL AUTO_INCREMENT PRIMARY KEY,
 ItemId INT NOT NULL,
 OfferId INT NOT NULL,
 Quantity INT NOT NULL
);

After finalising the cart offer will be applied and transaction will be prepared considering the discounts from the offer table based in the Discount category and Threshold Quantity.

CREATE TABLE CHECKOUT (

 TransactionId  NOT NULL AUTO_INCREMENT PRIMARY KEY,
 UserID INT NOT NULL,
 CartID INT NOT NULL,
 ItemId INT NOT NULL,
 FinalQuantity INT NOT NULL
 FinalPrice FLOAT NOT NULL,
 TOTAL FLOAT NOT NULL
);
