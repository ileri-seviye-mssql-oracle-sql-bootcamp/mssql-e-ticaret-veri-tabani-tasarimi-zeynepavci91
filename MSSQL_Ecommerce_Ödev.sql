create table Customers
(
CustomerId int NOT NULL Primary Key,
Customer_name nvarchar(50) NOT NULL,
Address1 nvarchar(100) NOT NULL,
Address2 nvarchar(100),
City nvarchar(50) NOT NULL,
Postcode nvarchar(50),
Email nvarchar(50) NOT NULL,
Password nvarchar(50) NOT NULL
);

Create table Shippers
(
ShippersId int NOT NULL Primary Key,  -- G�nderenin ID
ShippersName nvarchar(50) NOT NULL,   -- G�nderenin �smi
Phone nvarchar(50) NOT NULL,   --G�nderenin Telefonu
ShipperAddress	nvarchar(50) NOT NULL,	--G�nderenin Adresi
ShipperCity nvarchar(50) NOT NULL,	--G�nderenin �ehri
ShipperPostalCode	Nvarchar(50),	--G�nderenin Posta Kodu
ShipperCountry	nvarchar(50) NOT NULL,	--G�nderenin �lkesi
RegistrationDate datetime NOT NULL	--Kay�t Tarihi
);

Create table Suppliers
( 
SupplierID	int NOT NULL Primary Key,
CompanyName	nvarchar(50) NOT NULL,	
ContactFirstName nvarchar(50) NOT NULL,
ContactLastName nvarchar(50) NOT NULL,	
Address nvarchar(50) NOT NULL,	
City Nvarchar(50) NOT NULL,	
PostCode nvarchar(50) NOT NULL,	
Country	Nvarchar(50),	
Phone nvarchar(50) NOT NULL,	
Fax	nvarchar(50) NOT NULL,	
Email nvarchar(50) NOT NULL,	
Website nvarchar(50) NOT NULL,	
DiscountType nvarchar(50),
DiscountRate int,
DiscountAvailable bit,	
CustomerID	int,	
Logo nvarchar(MAX),	
Note nvarchar(MAX)	
);

Create table Orders
(
OrderID	int NOT NULL Primary Key,		 --Sipari� ID Numaras�
CustomerID	int NOT NULL,		--M��teri ID Numaras�
PaymentID int NOT NULL,		--�deme ID Numaras�
OrderNumber bigint NOT NULL,		--Sipari� Numaras�
OrderDate Datetime NOT NULL,		--Sipari� Tarihi
ShipDate Datetime NOT NULL,		--Kargo Tarihi
ShipperID int NOT NULL,		--Kargo ID Numaras�
Freight	money NOT NULL,		--Kargo �creti
SalesTax money NOT NULL,		--Sat�� Vergisi
FulFilled bit NOT NULL,		--Sipari� Tamamland� m�?
Deleted	bit NOT NULL,		--Silindi mi?
PaymentDate Datetime NOT NULL,		--�deme Tarihi
Paid money NOT NULL,		--Fiyat�
TransactStatus nvarchar(50) NOT NULL,	--Kredi Kart� ��lem Onay�
ErrLoc nvarchar(50) NOT NULL,	--Kredi Kart� ��lem Onay�
ErrMsg nvarchar(250) NOT NULL	--Kredi Kart� ��lem Onay�
);


Create table OrderDetail
(
OrderDetailID int NOT NULL Primary Key,		--Sipari� Detay� ID Numaras�
ProductID int NOT NULL,		--�r�n ID Numaras�
OrderID int NOT NULL,		--Sipari� ID Numaras�
OrderNumber	Bigint NOT NULL,		--Sipari� Numaras�
Price int NOT NULL,		--Fiyat
Quantity int NOT NULL,		--Adet
Discount int,		--�ndirim Y�zdesi
Total int NOT NULL,		--Toplam Fiyat
Size nvarchar(50),	--Boyut
Color nvarchar(50),	--Renk
FulFilled bit NOT NULL,		--Sipari� Tamamland� m�?
ShipDate Datetime NOT NULL,		--Kargo Tarihi
BillDate Datetime NOT NULL,		--Fatura Tarihi
);

Create table Products
(
ProductID int NOT NULL Primary Key,  --�r�n ID Numaras�
ProductName	nvarchar(50) NOT NULL,	--�r�n Ad�
ProductDescription	nvarchar(50) NOT NULL,	--�r�n A��klamas�
SupplierID int NOT NULL,		--Sat�c� ID Numaras�
CategoryID int NOT NULL,		--Kategori ID Numaras�
QuantityPerUnit	int NOT NULL,		--Miktar
UnitPrice int NOT NULL,		--Fiyat
SizeID	int NOT NULL,		--Boyut ID Numaras�
ColorID	int NOT NULL,		--Renk ID Numaras�
Discount int,		--�ndirim
Picture	nvarchar(MAX) NOT NULL,	--Resim
DiscountAvailable bit,		--�ndirim var m�?
CurrentOrder bit NOT NULL		--�r�n Mevcut mu?
);

Create table Categories
(
CategoryID	int	NOT NULL Primary Key,   --Kategori ID Numaras�
CategoryName nvarchar(50) NOT NULL,	--Kategori �smi
Description	nvarchar(MAX) NOT NULL,	--Kategori A��klamas�
Picture	nvarchar(MAX),	--Kategori Resmi
Active	bit		--Aktif mi de�il mi?
);


Create table Payments
(
PaymentID int NOT NULL Primary Key,		--�deme ID Numaras�
PaymentType	nvarchar(50) NOT NULL,	--�deme Tipi
Allowed	bit NOT NULL		--�zin verilmi� mi?
);

Create table CreditCards
(
CreditCardID int NOT NULL Primary Key, --Kredi Kart� ID
CustomerId int NOT NULL, --M��teri ID
CardExpMo int NOT NULL,	--Kart Ay Tarihi
CardExpYr int NOT NULL, --Kart Y�l Tarihi
CreditCardTypeID int	--Kart Numaras� T�P� ID
);

Create table Billings
(
BillingID int NOT NULL Primary Key, --Fatura ID
CustomerId int NOT NULL, --M��teri ID
BillingAddress nvarchar(50) NOT NULL,	--Fatura Adresi
BillingCity nvarchar(50),	--Fatura �ehri
BillingCountry nvarchar(50),	--Fatura �lkesi
BillingPostalCode nvarchar(50)	--Fatura Posta Kodu
);





