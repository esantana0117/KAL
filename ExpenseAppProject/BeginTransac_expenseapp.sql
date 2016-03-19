USE ExpenseApplication

BEGIN TRANSACTION
	BEGIN TRY
	INSERT INTO [User](FirstName,LastName,Phone,[Address])
	VALUES
		('Ely', 'Santana', '425-456-7898', '123 Street Bothell WA 98012')
	COMMIT TRANSACTION
		END TRY
	BEGIN CATCH
	ROLLBACK TRANSACTION
		END CATCH

	SELECT * FROM [User]

	BEGIN TRANSACTION
	BEGIN TRY
	INSERT INTO Receipt (ReceiptURL)
	VALUES
		('http://dropbox.comstore_A/receipt1')

	INSERT INTO [Category] (Name, [Description])
	VALUES
		('PL', 'Painting Labor'), --this will be category ID 1
		('CM', 'Constructions Materials'), --this will be category ID 2
		('EL', 'Electric Materials') -- this will be category ID 3

	INSERT INTO Account (AccountID, RoutingNumber, InstitutionName)
	VALUES
		(1,345345346, 'WoodstockBank') 

	INSERT INTO [Transaction] (Id, AccountID, Amount, [Description],CategoryID, UserID, [Date], Receipt)
	VALUES
	(1,1,100.50, 'Electric Cables Purchases', 3,1,2016-02-05,1)

	COMMIT TRANSACTION
		END TRY
	BEGIN CATCH
	ROLLBACK TRANSACTION
		END CATCH

	SELECT * FROM Category

	Select * FROM Account

	SELECT * FROM [Transaction]