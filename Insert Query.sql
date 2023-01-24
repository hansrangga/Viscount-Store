USE Viscount_BookStore
GO

INSERT INTO Author
VALUES ('AU001','J. K. Rowling'),
('AU002','C. S. Lewis'),
('AU003','J. R. R. Tolkien')

INSERT INTO Publisher
VALUES ('PB001','Bloomsbury Publishing'),
('PB002','HarperCollins'),
('PB003','Allen & Unwin')

INSERT INTO Book
VALUES ('BK001','PB001','AU001','Harry Potter and the Goblet of Fire','150000'),
('BK002','PB001','AU001','Harry Potter and the Deathly Hallows','170000'),
('BK003','PB002','AU002','The Chronicles of Narnia: Prince Caspian','120000'),
('BK004','PB003','AU003','The Lord of the Rings: The Two Towers','150000'),
('BK005','PB003','AU003','The Hobbit','140000')

INSERT INTO Staff
VALUES ('ST001','Steven','steven.widjaya@bookstore.com','087456382756','1995-10-29'),
('ST002','Benjamin','benj1305@bookstore.com','086583449656','1993-05-13'),
('ST003','Tammy','tammywu5565@bookstore.com','084328576321','1997-01-03'),
('ST004','Megan','meganpark9@bookstore.com','089945637485','1998-01-24'),
('ST005','May','mayharianto@bookstore.com','085621768856','1995-11-06')

INSERT INTO TransactionHeader(TransactionID, BookID, StaffID, TransactionDate)
VALUES ('TH001','BK001','ST001', '2021-03-22'),
('TH002','BK005','ST002','2021-01-02'),
('TH003','BK003','ST004','2021-02-13'),
('TH004','BK002','ST002','2021-01-17'),
('TH005','BK004','ST001','2021-03-07'),
('TH006','BK003','ST003','2021-02-20'),
('TH007','BK004','ST004','2021-01-10'),
('TH008','BK002','ST005','2021-02-26'),
('TH009','BK005','ST005','2021-01-24'),
('TH010','BK001','ST003','2021-01-14')

INSERT INTO Customer
VALUES ('CS001','Bob','bobthebuilder@gmail.com','084536473521','1970-12-23','Jl. Jaksa No. 20'),
('CS002','Felix','felixlee8@gmail.com','086574839201','2000-09-15','Jl. Gajah Mada No.8'),
('CS003','Henry','henryl354@gmail.com','085385610376','1989-10-07','Jl. Jelakeng No. 15'),
('CS004','Peter','peter.chandra@gmail.com','084453671786','1995-12-17','Jl. Hayam Wuruk No. 3'),
('CS005','Johnny','johnny559@gmail.com','085436489706','1998-06-16','Jl. Tanah Agung No. 23')

INSERT INTO TransactionDetail
VALUES ('TH001','CS001','1'),
('TH002','CS001','2'),
('TH003','CS005', '1'),
('TH004','CS002','2'),
('TH005','CS003','1'),
('TH006','CS004','2'),
('TH007','CS002','3'),
('TH008','CS003','1'),
('TH009','CS004','1'),
('TH010','CS005','3')