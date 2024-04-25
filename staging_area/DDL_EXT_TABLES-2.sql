--FISRT SOURCE
CREATE SCHEMA IF NOT EXISTS sa_source_1;


CREATE EXTENSION IF NOT EXISTS file_fdw;
CREATE SERVER IF NOT EXISTS SALES_1 FOREIGN DATA WRAPPER file_fdw;

CREATE FOREIGN TABLE IF NOT EXISTS sa_source_1.source_1 (
  DiscountPercentage varchar (4000),
  DiscountName varchar(4000),
  DeliveryCompanyID varchar(4000),
  DeliveryCompany varchar(4000),
  ProductId varchar(4000),
  ProductName varchar(4000),
  StoreType varchar(4000),
  PostalCode varchar(4000),
  StoreCode varchar(4000),
  StoreAddress varchar(4000),
  InvoiceNo varchar(4000),
  DeliveryType varchar(4000),
  DiscountID varchar(4000),
  Description varchar(4000),
  Quantity varchar(4000),
  InvoiceDate varchar(4000),
  UnitPrice varchar(4000),
  CustomerID varchar(4000),
  Country varchar(4000),
  StoreCity varchar(4000),
  StoreRegion varchar(4000),
  CustomerName varchar(4000),
  CustomerSurname varchar(4000),
  CustomerBirthday varchar(4000),
  CustomerGender varchar(4000),
  CustomerPhone varchar(4000),
  CustomerEmail varchar(4000),
  CustomerIncome varchar(4000),
  ProductCategory varchar(4000),
  ProductSubcategory varchar(4000),
  Brand varchar(4000),
  SupplierID varchar(4000),
  Supplier varchar(4000),
  DeliveryID varchar(4000),
  CourierID varchar(4000),
  CourierName varchar(4000),
  CourierPhone varchar(4000),
  DiscountDescription varchar(4000),
  DiscountLimit varchar(4000),
  DiscountAdd varchar(4000),
  InvoiceLine varchar(4000),
  LineCost varchar(4000),
  TotalQuantity varchar(4000),
  TotalAmount varchar(4000),
  TotalAmount_After_Discount varchar(4000)
) SERVER SALES_1
OPTIONS (filename '../source_1.csv', format 'csv', header 'false')
;


