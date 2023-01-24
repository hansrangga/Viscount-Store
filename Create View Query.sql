USE Viscount_BookStore
GO

--View: show every transaction on January 2021 along with book name
CREATE VIEW [Transaction on January 2021] AS
SELECT
	th.TransactionID as [ID Transaction],
	b.BookName as [Book Name],
	convert(varchar, th.TransactionDate, 106) as [Transaction Date]
FROM TransactionHeader as th
	JOIN Book as b on b.BookID = th.BookID
where YEAR(th.TransactionDate) = 2021 and MONTH(th.TransactionDate) = 1
GO
SELECT * FROM [Transaction on January 2021]

--View: show frequently purchased books from lowest to highest
CREATE VIEW [Frequently Purchased Books] AS
SELECT
	b.BookName as [Book Name],
	sum(td.Quantity) as [Total Sold]
FROM Book as b
	JOIN TransactionHeader as th on th.BookID = B.BookID
	JOIN TransactionDetail as td on td.TransactionID = th.TransactionID
GROUP BY b.BookName
GO
SELECT * FROM [Frequently Purchased Books]
ORDER BY [Frequently Purchased Books].[Total Sold] asc

--View: show a list of book along with author by descending order
CREATE VIEW [List of Book with Author] AS
SELECT
	b.BookName as [Book Name],
	a.AuthorName as [Author Name]
FROM Book as b
	JOIN Author as a on a.AuthorID = b.AuthorID
GO
SELECT * FROM [List of Book with Author]
ORDER BY [List of Book with Author].[Author Name] DESC