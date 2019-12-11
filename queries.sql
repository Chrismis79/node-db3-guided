select (E.firstName + '' + E.lastName) as SoldBy, O.id, O.customerId, O.ShipCountry, C.CompanyName as OrderdBy from [order] as O
JOIN employee as E on O.EmployeeId =E.id
JOIN customer as C on O.CustomerId = c.id;

select o.id as OrderName, p.ProductName, od.Quantity, p.UnitPrice, * from [order] as O
JOIN orderdetail as od
   on o.id = od.OrderId
   JOIN product as p
   on od.productId = p.id;

-- add the columns for a total price
select o.id as OrderName, p.ProductName, od.Quantity, p.UnitPrice, (od.Quantity * p.UnitPrice) as LineTotal from [order] as O
JOIN orderdetail as od
   on o.id = od.OrderId
JOIN product as p
   on od.productId = p.id

-- adds the supplier table---4tables joined!
select o.id as OrderName, p.ProductName, od.Quantity, p.UnitPrice, (od.Quantity * p.UnitPrice) as LineTotal, s.CompanyName as SoldBy from [order] as O
JOIN orderdetail as od
   on o.id = od.OrderId
JOIN product as p
   on od.productId = p.id
JOIN Supplier as s
   on s.id = p.SupplierId

-- a join is the same as an inner join --only returns when matches both tables.
select * from customer as c
join [order] as o on c.id = o.customerId;