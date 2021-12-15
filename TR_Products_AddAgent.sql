use user15
go
create trigger TR_Product_AddProduct
on [dbo].[Products]
after insert
as
insert into [dbo].[History]([TypeOfHistory], IDProduct)
select 'Добавление нового продукта', inserted.ID
from inserted