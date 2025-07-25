﻿CREATE DATABASE QL_WEBPICO_GROUP4
USE QL_WEBPICO_GROUP4

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NOT NULL UNIQUE,
    Phone NVARCHAR(20) NOT NULL,
    [Address] NVARCHAR(255),
    Account VARCHAR(25),
    [Password] NVARCHAR(255) NOT NULL,
    CreatedAt DATETIME NOT NULL
)

INSERT INTO Customers (CustomerID, CustomerName, Email, Phone, Address, Account, Password, CreatedAt)
VALUES 
(101, N'Tường Vy', 'tuongvy@gmail.com', '0345678910', N'Tp.HCM', 'TUONGVY', 'nguyenmaituongvy01234', '2022-05-12'),
(102, N'Yến Nhi', 'yennhi@gmail.com', '0836362924', N'An Giang', 'VOYENNHI', 'voyennhi98765', '2024-07-08'),
(103, N'Bích Trầm', 'bichtram@gmail.com', '0348475797', N'Kiên Giang', 'TRAMBICHTRINH', 'trinhbichtram2303', '2020-02-23'),
(104, N'Kim Lý', 'kimly@gmail.com', '0378052785', N'Tp.Hà Nội', 'LYSTRUONG', 'truongthikimly060204', '2023-04-29'),
(105, N'Anh Duy','anhduy@gmail.com','0385492550',N'Tp.Tp.HCM','ANHDUY','trananhduy030304','2023-06-29'),
(106, N'Thịnh','thaithinh@gmail.com','0965900177',N'Kiên Giang','THAITHINH','tranthaithinh231203','2024-01-12'),
(107, N'Lộc','loc@gmail.com','0683786452',N'Long An','LOC','loc068','2023-10-29'),
(108, N'Minh Ngọc','minhngoc@gmail.com','0234875395',N'Cà Mau','MINHNGOC','minhngoc05','23-09-2024'),
(109, N'Chí Thanh','chithanh@gmail.com','0984673892',N'An Giang','CHITHANH','chithanh15','13-10-2023'),
(110, N'Thanh Hải','thanhhai@gmail.com','0948112149',N'Tp.HCM','THANHHAI','thanhhai22','22-05-2024'),
(111, N'Thanh Tùng','thanhtung@gmail.com','0938123456',N'Hà Nội','THANHTUNG','tung123','15-08-2023'),
(112, N'Lan Anh','lananh@gmail.com','0967456789',N'Đà Nẵng','LANANH','lananh456','30-09-2023'),
(113, N'Hoàng Minh','hoangminh@gmail.com','0912345678',N'Bình Dương','HOANGMINH','minh789','10-12-2023'),
(114, N'Ngọc Trâm','ngoctram@gmail.com','0987654321',N'Cần Thơ','NGOCTRAM','tram321','05-01-2024'),
(115, N'Quốc Bảo','quocbao@gmail.com','0909090909',N'Nha Trang','QUOCBAO','bao555','18-07-2023')





CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(200) NOT NULL,
    [Description] NVARCHAR(255),
    Price DECIMAL(10, 2) NOT NULL CHECK (Price > 0),
    CategoryID INT NOT NULL,
    BrandID INT NOT NULL,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID),
    FOREIGN KEY (BrandID) REFERENCES Brands(BrandID),
	FOREIGN KEY (LocationID) REFERENCES Location(LocationID),
	FOREIGN KEY (ProgramID) REFERENCES Promotionalprogram(ProgramID)
)

INSERT INTO Products (ProductID, ProductName, Description, Price, CategoryID, BrandID,LocationID,ProgramID)
VALUES 
(1, N'Tivi Sony', N'4K-Ultra HD Google TV', 12990000, 1, 1,3,003),
(2, N'Máy Giặt Panasonic', N'LG FV1412S3PA 12 kg', 11190000, 2, 2,5,003),
(3, N'Tủ Lạnh LG', N'LG Inverter 617 lit Multi Door', 33990000, 3, 3,8,005),
(4, N'Laptop Dell', N'Core i5-1235U/8GB/512GB', 14990000, 4, 4,9,001),
(5, N'iPhone 16', N'iPhone 16 (A18/8GB/6.1 inch/128GB)', 22890000, 5, 5,12,004),
(6, N'Điều Hòa Toshiba',N'Inverter 12.000 BTU RAS-H13S4KCV2G-V',10790000,2,6,7,002),
(7, N'Tivi Samsung', N'4K UHD 55 inch UA55RU7400', 13490000, 3, 2,10,003),
(8, N'Máy Giặt Electrolux', N'Cửa Trước 8Kg EWF8025CQWA', 7990000, 4, 5,5,004),
(9, N'Máy Lạnh Panasonic', N'Inverter 9.000 BTU CU/CS-XU9UKH-8', 9690000, 2, 6,6,002),
(10, N'Lò Vi Sóng Sharp', N'23L R-G273VN-B', 1490000, 5, 3,7,005),
(11, N'Quạt Điều Hòa Sunhouse', N'SHD7727', 3200000, 2, 3,1,003),
(12, N'Máy Hút Bụi Philips', N'2000W FC9350/01', 2990000, 1, 4,2,001),
(13, N'Nồi Cơm Điện Toshiba', N'1.8L RC-18NMFVN(WT)', 1890000, 4, 5,4,006),
(14, N'Bếp Từ Kangaroo', N'Đơn KG415i', 990000, 3, 2,8,005),
(15, N'Máy Lọc Nước Karofi', N'8 Lõi Optimus i128', 7390000, 6, 5,15,007),
(16, N'Điều Hòa Daikin', N'Inverter 18.000 BTU FTKA50UAVMV/RKA50UAVMV', 15290000, 2, 6,14,006)


CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName NVARCHAR(100) NOT NULL
	)

INSERT INTO Categories (CategoryID, CategoryName)
VALUES 
(1, N'Electronics'),
(2, N'Home Appliances'),
(3, N'Home Appliances'),
(4, N'Electronics'),
(5, N'Mobiles')




CREATE TABLE Brands (
    BrandID INT PRIMARY KEY,
    BrandName NVARCHAR(100) NOT NULL
)

INSERT INTO Brands (BrandID, BrandName)
VALUES 
(1, N'Sony'),
(2, N'Panasonic'),
(3, N'LG'),
(4, N'Dell'),
(5, N'Apple'),
(6, N'Toshiba'),
(7, N'Sunhouse'),
(8, N'Daikin'),
(9, N'Kangaroo'),
(10, N'Sharp'),
(11, N'Karofi'),
(12, N'Electrolux'),
(13, N'Samsung'),
(14, N'Philips')

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    OrderDate DATETIME NOT NULL,
    ShippingAddress NVARCHAR(255) NOT NULL,
    TotalAmount DECIMAL(10, 2) NOT NULL,
    [Status] NVARCHAR(50) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
)

INSERT INTO Orders (OrderID, CustomerID, OrderDate, ShippingAddress, TotalAmount, Status)
VALUES 
(1, 101, '2024-10-12', N'17, đường Trương Hanh, phường Long Thạnh Mỹ, tp.Thủ Đức, Tp.HCM', 25980000, N'Pending'),
(2, 102, '2024-10-12', N'16, Thanh Lương, TT. Ba Chúc, huyện Tri Trôn, tỉnh An Giang', 68670000, N'Shipped'),
(3, 103, '2024-10-13', N'ấp Cạnh Đền 3, xã Vĩnh Phong, huyện Vĩnh Thuận, tỉnh Kiên Giang', 14990000, N'Cancelled'),
(4, 104, '2024-10-21', N'HS1-19 Hoa Sữa 1, Vinhomes Riverside, Phúc Lợi, Long Biên, Tp. Hà Nội', 33990000, N'Delivered'),
(5, 105, '2024-10-22', N'Số 10, Ngõ 24, Hoàng Quốc Việt, Cầu Giấy, Hà Nội', 15990000, N'Delivered'),
(6, 106, '2024-10-23', N'68 Lê Lợi, Phường Bến Nghé, Quận 1, Tp. Hồ Chí Minh', 45990000, N'Pending'),
(7, 107, '2024-10-24', N'21 Trần Phú, Phường 4, Đà Lạt, Lâm Đồng', 25990000, N'Delivered'),
(8, 108, '2024-10-25', N'3A Nguyễn Văn Cừ, Long Biên, Hà Nội', 19990000, N'Shipping'),
(9, 109, '2024-10-26', N'55 Nguyễn Huệ, Phường Bến Nghé, Quận 1, Tp. Hồ Chí Minh', 37990000, N'Canceled'),
(10, 110, '2024-10-27', N'12 Nguyễn Thị Minh Khai, Phường Bến Thành, Quận 1, Tp. Hồ Chí Minh', 42990000, N'Delivered'),
(11, 111, '2024-10-28', N'45 Phan Đình Phùng, Ba Đình, Hà Nội', 17990000, N'Shipping'),
(12, 112, '2024-10-29', N'22 Trần Hưng Đạo, Hoàn Kiếm, Hà Nội', 22990000, N'Pending'),
(13, 113, '2024-10-30', N'99 Nguyễn Văn Trỗi, Phường 11, Phú Nhuận, Tp. Hồ Chí Minh', 30990000, N'Delivered'),
(14, 114, '2024-10-31', N'68 Đinh Tiên Hoàng, Phường Bến Thành, Quận 1, Tp. Hồ Chí Minh', 27990000, N'Canceled'),
(15, 115, '2024-11-01', N'16 Láng Hạ, Phường Thành Công, Ba Đình, Hà Nội', 49990000, N'Delivered')




CREATE TABLE OrderItems (
    OrderItemID INT PRIMARY KEY,
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL CHECK (Quantity > 0),
    UnitPrice DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
)

INSERT INTO OrderItems (OrderItemID, OrderID, ProductID, Quantity, UnitPrice)
VALUES 
(1, 1, 1, 2, 12990000),
(2, 2, 5, 3, 22890000),
(3, 3, 4, 1, 14990000),
(4, 4, 3, 1, 33990000)

CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    OrderID INT NOT NULL,
    PaymentMethod NVARCHAR(50) NOT NULL,
    PaymentStatus NVARCHAR(50) NOT NULL,
    PaymentAmount DECIMAL(10, 2) NOT NULL,
    PaymentDate DATETIME NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
)

INSERT INTO Payments (PaymentID, OrderID, PaymentMethod, PaymentStatus, PaymentAmount, PaymentDate)
VALUES 
(1, 1, N'Credit Card', N'Completed', 23980000, '2024-10-12 10:30:00'),
(2, 2, N'Cash', N'Completed', 65670000, '2024-10-13 14:15:00'),
(3, 3, N'Bank Transfer', N'Completed', 12990000, '2024-10-12 10:35:00'),
(4, 4, N'Cash', N'Completed', 30990000, '2024-10-13 14:20:00'),
(5, 5, N'Credit Card', N'Completed', 15990000, '2024-10-14 09:30:00'),
(6, 6, N'Bank Transfer', N'Completed', 45990000, '2024-10-15 11:15:00'),
(7, 7, N'Cash', N'Completed', 25990000, '2024-10-16 16:45:00'),
(8, 8, N'Credit Card', N'Completed', 19990000, '2024-10-17 13:25:00'),
(9, 9, N'Cash', N'Completed', 37990000, '2024-10-18 10:10:00'),
(10, 10, N'Bank Transfer', N'Completed', 42990000, '2024-10-19 08:50:00'),
(11, 11, N'Credit Card', N'Completed', 17990000, '2024-10-20 15:05:00'),
(12, 12, N'Cash', N'Completed', 22990000, '2024-10-21 12:40:00'),
(13, 13, N'Bank Transfer', N'Completed', 30990000, '2024-10-22 14:55:00'),
(14, 14, N'Credit Card', N'Completed', 27990000, '2024-10-23 17:20:00'),
(15, 15, N'Cash', N'Completed', 49990000, '2024-10-24 18:30:00')



CREATE TABLE Reviews (
    ReviewID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    ProductID INT NOT NULL,
    Rating INT NOT NULL CHECK (Rating BETWEEN 1 AND 5),
    ReviewText NVARCHAR(255),
    ReviewDate DATETIME NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
)

INSERT INTO Reviews (ReviewID, CustomerID, ProductID, Rating, ReviewText, ReviewDate)
VALUES 
(1, 101, 1, 5, N'Sản phẩm tuyệt vời', '2024-10-12'),
(2, 102, 5, 4, N'Tốt, nhưng pin có thể tốt hơn', '2024-10-13'),
(3, 103, 4, 4, N'Chất lượng trung bình', '2024-10-14'),
(4, 104, 5, 5, N'Tuyệt vời', '2024-10-15'),
(5, 105, 6, 6, N'Rất hài lòng', '2024-10-16'),
(6, 106, 7, 7, N'Hài lòng', '2024-10-17'),
(7, 107, 8, 8, N'Không hài lòng', '2024-10-18'),
(8, 108, 9, 9, N'Tốt', '2024-10-19'),
(9, 109, 10, 10, N'Tuyệt vời', '2024-10-20'),
(10, 110, 11, 11, N'Thất vọng', '2024-10-21'),
(11, 111, 12, 12, N'Tạm ổn', '2024-10-22'),
(12, 112, 13, 13, N'Xuất sắc', '2024-10-23'),
(13, 113, 14, 14, N'Trung bình', '2024-10-24'),
(14, 114, 15, 15, N'Chưa tốt', '2024-10-25'),
(15, 115, 16, 16, N'Rất tốt', '2024-10-26')




CREATE TABLE PromotionalPrograms (
    ProgramID INT PRIMARY KEY,
    ProgramName NVARCHAR(100) NOT NULL,
    StartDate DATETIME NOT NULL,
    EndDate DATETIME NOT NULL,
    DiscountRate DECIMAL(5, 2) NOT NULL,
    [Description] NVARCHAR(255),
    VoucherCode NVARCHAR(50),
    ProductID INT,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
)

INSERT INTO PromotionalPrograms (ProgramID, ProgramName, StartDate, EndDate, DiscountRate, Description, VoucherCode, ProductID)
VALUES 
(001, N'Giảm giá mùa hè', '2024-06-01', '2024-06-15', 20, N'Ưu đãi 20% tất cả sản phẩm hè', 'SUMMER2024', 1),
(002, N'Khuyến mãi cuối năm', '2024-12-01', '2024-12-15', 30, N'Ưu đãi 30% cho các sản phẩm chọn lọc', 'YEAREND2024', 5),
(003, N'Black Friday', '2024-03-29', '2024-04-12', 10, N'Ưu đãi Black Friday giảm giá 10% trên toàn bộ cửa hàng', 'SHOPPINGDAY', 4),
(004, N'Back to School', '2024-08-15', '2024-08-31', 20, N'Chương trình Back to School giảm giá 20% cho dụng cụ học tập', 'BACKTOSCHOOL', 6),
(005, N'Giáng Sinh Vui Vẻ', '2024-12-15', '2024-12-31', 25, N'Ưu đãi Giáng Sinh giảm giá 25% cho tất cả sản phẩm', 'CHRISTMAS25', 2),
(006, N'Tết Nguyên Đán', '2025-01-10', '2025-01-24', 30, N'Khuyến mãi Tết Nguyên Đán giảm giá 30% các mặt hàng gia dụng', 'TET2025', 8),
(007, N'Flash Sale', '2024-11-10', '2024-11-12', 50, N'Chương trình Flash Sale giảm giá đến 50% cho các sản phẩm chọn lọc', 'FLASH50', 9)



CREATE TABLE OrderTracking (
    TrackingID INT PRIMARY KEY,
    OrderID INT,
    [Status] VARCHAR(50),
    EstimatedDeliveryDate DATE,
    ActualDeliveryDate DATE,
    TrackingDetails VARCHAR(255),
	ShippingCompanyID INT,
	FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
	FOREIGN KEY (ShippingCompanyID) REFERENCES ShippingCompany(ShippingCompanyID)

)

INSERT INTO OrderTracking (TrackingID, OrderID, [Status], EstimatedDeliveryDate, ActualDeliveryDate, TrackingDetails, ShippingCompany) VALUES
(1, 1, 'Đang xử lý', '2024-10-30', NULL, 'Đã được xác nhận',01),
(2, 2, 'Đã gửi', '2023-10-28', NULL, 'Đang giao đến địa chỉ của bạn',02),
(3, 3, 'Đang giao', '2024-06-24', '2024-06-23', 'Đang bị hủy theo yêu cầu khách hàng',03),
(4, 4, 'Đã hủy', '2023-12-28', NULL, 'Đã được xác nhận',04),
(5, 5, 'Đã hoàn thành', '2023-12-29', NULL, 'Giao dịch thành công',05),
(6, 6, 'Đang xử lý', '2023-12-30', NULL, 'Chờ xác nhận thanh toán',03),
(7, 7, 'Đã hủy', '2023-12-31', NULL, 'Khách hàng đã yêu cầu hủy',04),
(8, 8, 'Đã hoàn thành', '2024-01-01', NULL, 'Giao dịch đã được hoàn tất',02),
(9, 9, 'Đang xử lý', '2024-01-02', NULL, 'Đang chờ xác nhận',01),
(10, 10, 'Đã hủy', '2024-01-03', NULL, 'Hủy do lỗi sản phẩm',03),
(11, 11, 'Đã hoàn thành', '2024-01-04', NULL, 'Giao hàng thành công',04),
(12, 12, 'Đang xử lý', '2024-01-05', NULL, 'Chờ xác nhận từ nhà cung cấp',05),
(13, 13, 'Đã hủy', '2024-01-06', NULL, 'Khách đã thay đổi ý định',02),
(14, 14, 'Đã hoàn thành', '2024-01-07', NULL, 'Giao dịch được xác nhận',01),
(15, 15, 'Đang xử lý', '2024-01-08', NULL, 'Đang xử lý thông tin vận chuyển',02)




CREATE TABLE ShippingCompanies (
    ShippingCompanyID INT PRIMARY KEY,
	TrackingID INT,
    CompanyName VARCHAR(100),
    ContactNumber VARCHAR(15),
    Email VARCHAR(100),
    [Address] VARCHAR(255)
	FOREIGN KEY (TrackingID) REFERENCES OrderTracking(TrackingID)
)

INSERT INTO ShippingCompanies (ShippingCompanyID,TrackingID, CompanyName, ContactNumber, Email, Address) VALUES
(01,1,'Giao hàng tiết kiệm', '19006622', 'support@ghtk.vn', '222 Đường 19, Phường Bình Trị Đông B, Bình Tân, TP.HCM'),
(02,2,'VN Post', '19008099', 'support@vnp.vn', 'Số 15 Đường số 8, Phường Bình Hưng Hòa B, Bình Tân, TP.HCM'),
(03,3,'Giao hàng nhanh', '1900636112', 'contact@ghn.vn', '98 Đường 18, Phường 8, Quận 4, TP.HCM'),
(04,4,'J&T Express', '19001515', 'support@jtexpress.vn', '24 Phạm Hùng, Quận 8, TP.HCM'),
(05,5,'Shopee Express', '19001234', 'support@shopee.vn', '100 Đường 12, Phường 5, Quận 6, TP.HCM')



CREATE TABLE ShoppingCart (
    CartID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    CreatedDate DATETIME NOT NULL,
    IsCheckedOut BIT NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
)

INSERT INTO ShoppingCart (CartID, CustomerID, CreatedDate, IsCheckedOut)
VALUES 
(1, 101, '2024-09-05', 1),
(2, 102, '2024-10-05', 1),
(3, 103, '2024-10-04', 0),
(4, 104, '2024-10-05', 1),
(5, 105, '2024-10-06', 1),
(6, 106, '2024-10-07', 0),
(7, 107, '2024-10-08', 0),
(8, 108, '2024-10-09', 1),
(9, 109, '2024-10-10', 1),
(10, 110, '2024-10-11', 0),
(11, 111, '2024-10-12', 1),
(12, 112, '2024-10-13', 1),
(13, 113, '2024-10-14', 0),
(14, 114, '2024-10-15', 0	),
(15, 115, '2024-10-16', 1)



CREATE TABLE ShoppingCartItems (
    CartItemID INT PRIMARY KEY,
    CartID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL CHECK (Quantity > 0),
    FOREIGN KEY (CartID) REFERENCES ShoppingCart(CartID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
)

INSERT INTO ShoppingCartItems (CartItemID, CartID, ProductID, Quantity)
VALUES 
(1, 1, 1, 2),
(2, 2, 5, 1),
(3, 3, 4, 3),
(4, 4, 5, 3),
(5, 5, 6, 2),
(6, 6, 7, 1),
(7, 7, 8, 4),
(8, 8, 9, 2),
(9, 9, 10, 3),
(10, 10, 11, 1),
(11, 11, 12, 5),
(12, 12, 13, 0),
(13, 13, 14, 3),
(14, 14, 15, 2),
(15, 15, 16, 4)


CREATE TABLE Location (
    LocationID INT PRIMARY KEY,
    LocationName NVARCHAR(100) NOT NULL,
    ProductID INT,
    StockQuantity INT NOT NULL CHECK (StockQuantity >= 0),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
)

INSERT INTO Location (LocationID, LocationName, ProductID, StockQuantity)
VALUES 
(1, N'Hà Nội', 1, 7),
(2, N'TP.Hồ Chí Minh', 5, 2),
(3, N'Cần Thơ', 4, 4),
(4, N'Đà Nẵng', 2, 3),
(5, N'Hải Phòng', 6, 5),
(6, N'Hà Nội', 3, 1),
(7, N'Nha Trang', 4, 2),
(8, N'TP.Hồ Chí Minh', 3, 3),
(9, N'Đồng Nai', 5, 4),
(10, N'Bình Dương', 6, 2),
(11, N'TP.Hồ Chí Minh', 2, 1),
(12, N'Kiên Giang', 4, 5),
(13, N'TP.Hồ Chí Minh', 3, 3),
(14, N'Tây Ninh', 2, 4),
(15, N'Hà Nội', 5, 3)



CREATE TABLE CustomerSupport (
    SupportID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    SupportDate DATETIME NOT NULL,
    SupportType NVARCHAR(50) NOT NULL,
    IssueDescription NVARCHAR(255),
    SupportStatus NVARCHAR(50) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
)

INSERT INTO CustomerSupport (SupportID, CustomerID, SupportDate, SupportType, IssueDescription, SupportStatus)
VALUES 
(1, 101, '2024-10-20', N'Email', N'Không thể đăng nhập vào hệ thống', N'Open'),
(2, 102, '2024-10-17', N'Phone', N'Sai sót trong khoản phí ở hóa đơn cuối cùng', N'Closed'),
(3, 103, '2024-10-25', N'Chat', N'Hệ thống thường xuyên bị sập',N'Pending'),
(4, 104, '2024-10-22', N'Email', N'Thông tin tài khoản không chính xác', N'Open'),
(5, 105, '2024-10-21', N'Phone', N'Yêu cầu hoàn tiền cho đơn hàng', N'Closed'),
(6, 106, '2024-10-19', N'Chat', N'Không nhận được mã xác nhận', N'Pending'),
(7, 107, '2024-10-23', N'Email', N'Thay đổi địa chỉ giao hàng', N'Open'),
(8, 108, '2024-10-24', N'Phone', N'Khách hàng không hài lòng với dịch vụ', N'Closed'),
(9, 109, '2024-10-26', N'Chat', N'Trợ giúp về đơn hàng bị chậm', N'Pending'),
(10, 110, '2024-10-28', N'Email', N'Sai thông tin cá nhân', N'Open'),
(11, 111, '2024-10-27', N'Phone', N'Thắc mắc về sản phẩm', N'Closed'),
(12, 112, '2024-10-29', N'Chat', N'Thông tin khuyến mãi không rõ ràng', N'Pending'),
(13, 113, '2024-10-30', N'Email', N'Không nhận được hóa đơn điện tử', N'Open'),
(14, 114, '2024-10-31', N'Phone', N'Yêu cầu hỗ trợ kỹ thuật', N'Closed'),
(15, 115, '2024-11-01', N'Chat', N'Vấn đề với sản phẩm lỗi', N'Pending')



CREATE TABLE Warranty (
    WarrantyID INT PRIMARY KEY,
    ProductID INT NOT NULL,
    WarrantyPeriod INT NOT NULL,
    WarrantyStartDate DATETIME NOT NULL,
    WarrantyEndDate DATETIME NOT NULL,
    WarrantyStatus NVARCHAR(50) NOT NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
)
INSERT INTO Warranty(WarrantyID, ProductID, WarrantyPeriod, WarrantyStartDate, WarrantyEndDate, WarrantyStatus)
VALUES 
(0240, 1, 36 , '2024-10-12', '2027-10-12', N'Active'),
(0241, 5, 12 , '2024-10-15', '2025-10-15', N'Expired'),
(0242, 4, 24 , '2024-10-18', '2026-10-18', N'Claimed'),
(0243, 2, 18 , '2024-10-20', '2025-10-20', N'Active'),
(0244, 3, 15 , '2024-10-22', '2026-10-22', N'Expired'),
(0245, 1, 30 , '2024-10-25', '2027-10-25', N'Claimed'),
(0246, 5, 20 , '2024-10-28', '2026-10-28', N'Active'),
(0247, 2, 10 , '2024-11-01', '2025-11-01', N'Expired'),
(0248, 4, 14 , '2024-11-05', '2026-11-05', N'Claimed'),
(0249, 3, 22 , '2024-11-10', '2025-11-10', N'Active'),
(0250, 1, 16 , '2024-11-12', '2025-11-12', N'Expired'),
(0251, 5, 28 , '2024-11-15', '2027-11-15', N'Claimed'),
(0252, 2, 12 , '2024-11-20', '2025-11-20', N'Active'),
(0253, 3, 19 , '2024-11-25', '2026-11-25', N'Expired'),
(0254, 4, 21 , '2024-11-30', '2026-11-30', N'Claimed')



CREATE TABLE Returns (
    ReturnID INT PRIMARY KEY,
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    ReturnReason NVARCHAR(255) NOT NULL,
    ReturnDate DATETIME NOT NULL,
    ReturnStatus NVARCHAR(50) NOT NULL,
    RefundAmount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
)
INSERT INTO Returns (ReturnID, OrderID, ProductID, ReturnReason, ReturnDate, ReturnStatus, RefundAmount)
VALUES 
(01, 1, 1, N'Sản phẩm lỗi', '2024-10-24', N'Đã phê duyệt', 25980000),
(02, 2, 3, N'Không đúng mô tả', '2024-10-30', N'Đang chờ xử lý', 68670000),
(03, 4, 5, N'Hư hỏng trên đường vận chuyển', '2024-11-05', N'Đã phê duyệt', 33990000),
(04, 1, 9, N'Sản phẩm không đúng kích thước', '2024-11-10', N'Đã phê duyệt', 19850000),
(05, 2, 4, N'Thời gian giao hàng chậm', '2024-11-12', N'Đang chờ xử lý', 45000000)




SELECT * FROM Customers
SELECT * FROM OrderTracking
SELECT * FROM ShippingCompanies
SELECT * FROM Warranty
SELECT * FROM Brands
SELECT * FROM Location
SELECT * FROM OrderItems
SELECT * FROM Orders
SELECT * FROM Products
SELECT * FROM Payments
SELECT * FROM PromotionalPrograms
SELECT * FROM Categories
SELECT * FROM CustomerSupport
SELECT * FROM ShoppingCartItems
SELECT * FROM ShippingCompanies
SELECT * FROM ShoppingCart
SELECT * FROM Reviews





