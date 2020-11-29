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
ShippersId int NOT NULL Primary Key,  -- Gönderenin ID
ShippersName nvarchar(50) NOT NULL,   -- Gönderenin Ýsmi
Phone nvarchar(50) NOT NULL,   --Gönderenin Telefonu
ShipperAddress	nvarchar(50) NOT NULL,	--Gönderenin Adresi
ShipperCity nvarchar(50) NOT NULL,	--Gönderenin Þehri
ShipperPostalCode	Nvarchar(50),	--Gönderenin Posta Kodu
ShipperCountry	nvarchar(50) NOT NULL,	--Gönderenin Ülkesi
RegistrationDate datetime NOT NULL	--Kayýt Tarihi
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
OrderID	int NOT NULL Primary Key,		 --Sipariþ ID Numarasý
CustomerID	int NOT NULL,		--Müþteri ID Numarasý
PaymentID int NOT NULL,		--Ödeme ID Numarasý
OrderNumber bigint NOT NULL,		--Sipariþ Numarasý
OrderDate Datetime NOT NULL,		--Sipariþ Tarihi
ShipDate Datetime NOT NULL,		--Kargo Tarihi
ShipperID int NOT NULL,		--Kargo ID Numarasý
Freight	money NOT NULL,		--Kargo Ücreti
SalesTax money NOT NULL,		--Satýþ Vergisi
FulFilled bit NOT NULL,		--Sipariþ Tamamlandý mý?
Deleted	bit NOT NULL,		--Silindi mi?
PaymentDate Datetime NOT NULL,		--Ödeme Tarihi
Paid money NOT NULL,		--Fiyatý
TransactStatus nvarchar(50) NOT NULL,	--Kredi Kartý Ýþlem Onayý
ErrLoc nvarchar(50) NOT NULL,	--Kredi Kartý Ýþlem Onayý
ErrMsg nvarchar(250) NOT NULL	--Kredi Kartý Ýþlem Onayý
);


Create table OrderDetail
(
OrderDetailID int NOT NULL Primary Key,		--Sipariþ Detayý ID Numarasý
ProductID int NOT NULL,		--Ürün ID Numarasý
OrderID int NOT NULL,		--Sipariþ ID Numarasý
OrderNumber	Bigint NOT NULL,		--Sipariþ Numarasý
Price int NOT NULL,		--Fiyat
Quantity int NOT NULL,		--Adet
Discount int,		--Ýndirim Yüzdesi
Total int NOT NULL,		--Toplam Fiyat
Size nvarchar(50),	--Boyut
Color nvarchar(50),	--Renk
FulFilled bit NOT NULL,		--Sipariþ Tamamlandý mý?
ShipDate Datetime NOT NULL,		--Kargo Tarihi
BillDate Datetime NOT NULL,		--Fatura Tarihi
);

Create table Products
(
ProductID int NOT NULL Primary Key,  --Ürün ID Numarasý
ProductName	nvarchar(50) NOT NULL,	--Ürün Adý
ProductDescription	nvarchar(50) NOT NULL,	--Ürün Açýklamasý
SupplierID int NOT NULL,		--Satýcý ID Numarasý
CategoryID int NOT NULL,		--Kategori ID Numarasý
QuantityPerUnit	int NOT NULL,		--Miktar
UnitPrice int NOT NULL,		--Fiyat
SizeID	int NOT NULL,		--Boyut ID Numarasý
ColorID	int NOT NULL,		--Renk ID Numarasý
Discount int,		--Ýndirim
Picture	nvarchar(MAX) NOT NULL,	--Resim
DiscountAvailable bit,		--Ýndirim var mý?
CurrentOrder bit NOT NULL		--Ürün Mevcut mu?
);

Create table Categories
(
CategoryID	int	NOT NULL Primary Key,   --Kategori ID Numarasý
CategoryName nvarchar(50) NOT NULL,	--Kategori Ýsmi
Description	nvarchar(MAX) NOT NULL,	--Kategori Açýklamasý
Picture	nvarchar(MAX),	--Kategori Resmi
Active	bit		--Aktif mi deðil mi?
);


Create table Payments
(
PaymentID int NOT NULL Primary Key,		--Ödeme ID Numarasý
PaymentType	nvarchar(50) NOT NULL,	--Ödeme Tipi
Allowed	bit NOT NULL		--Ýzin verilmiþ mi?
);

Create table CreditCards
(
CreditCardID int NOT NULL Primary Key, --Kredi Kartý ID
CustomerId int NOT NULL, --Müþteri ID
CardExpMo int NOT NULL,	--Kart Ay Tarihi
CardExpYr int NOT NULL, --Kart Yýl Tarihi
CreditCardTypeID int	--Kart Numarasý TÝPÝ ID
);

Create table Billings
(
BillingID int NOT NULL Primary Key, --Fatura ID
CustomerId int NOT NULL, --Müþteri ID
BillingAddress nvarchar(50) NOT NULL,	--Fatura Adresi
BillingCity nvarchar(50),	--Fatura Þehri
BillingCountry nvarchar(50),	--Fatura Ülkesi
BillingPostalCode nvarchar(50)	--Fatura Posta Kodu
);





