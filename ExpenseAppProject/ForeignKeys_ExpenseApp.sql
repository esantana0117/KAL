ALTER TABLE [Transaction]
ADD CONSTRAINT fk_category 
FOREIGN KEY (CategoryID)
REFERENCES Category(Id)


ALTER TABLE [Transaction]
ADD CONSTRAINT fk_UserID
FOREIGN KEY (UserID)
REFERENCES [User](UserId)

ALTER TABLE [Transaction]
ADD CONSTRAINT fk_AcoountId
FOREIGN KEY (AccountID)
REFERENCES Account(AcoountID)

ALTER TABLE [Transaction]
ADD CONSTRAINT fk_ReceiptID
FOREIGN KEY (Receipt)
REFERENCES Receipt(ReceiptID)


