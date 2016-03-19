USE ExpenseApplication

CREATE VIEW vw_transactionwithreceiptaddress
AS 
SELECT TR.AccountID, TR.Amount,TR.CategoryID,TR.UserID,TR.[Date],RP.ReceiptURL
FROM [Transaction] AS TR
JOIN Receipt AS RP
ON TR.Receipt = RP.ReceiptID
WHERE RP.ReceiptURL IS NOT NULL

SELECT * FROM vw_transactionwithreceiptaddress