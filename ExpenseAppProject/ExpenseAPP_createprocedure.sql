CREATE PROC sp_find_expenses_by_category
	@categoryname NVARCHAR(50)
AS
SELECT T.AccountID,T.Description,T.Amount, T.Date,C.Name,C.Description
  FROM [ExpenseApplication].[dbo].[Transaction] T
  JOIN [ExpenseApplication].[dbo].[Category] C
  ON T.CategoryID = C.Id
  WHERE c.Description = @categoryname
GO

SELECT * FROM Category

EXEC sp_find_expenses_by_category @categoryname = 'Electric Materials'


CREATE PROCEDURE sp_find_trasactions_by_user
	@FirstName NVARCHAR(25),
	@LastName NVARCHAR (25)
AS
SELECT T.AccountID, T.Amount,T.[Date],T.[Description], T.UserID,U.FirstName,U.LastName,U.[Address],U.Phone
	FROM [ExpenseApplication].[dbo].[Transaction] T
	JOIN [ExpenseApplication].[dbo].[User] U
	ON t.UserID = U.UserID
	WHERE u.FirstName = @FirstName
	AND u.LastName = @LastName
GO
 
EXEC sp_find_trasactions_by_user @FirstName = 'ELaisha', @LastName = 'Santana'