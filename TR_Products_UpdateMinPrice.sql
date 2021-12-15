USE [user15]
GO
/****** Object:  Trigger [dbo].[TR_Product_UpdateMinPrice]    Script Date: 15.12.2021 9:53:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER trigger [dbo].[TR_Product_UpdateMinPrice]
on [dbo].[Products]
after update
as
insert into [dbo].[History]([TypeOfHistory], IDProduct, MinPrice)
select 'Изменение минимаьной стоимости', inserted.ID, inserted.MinPrice
from inserted