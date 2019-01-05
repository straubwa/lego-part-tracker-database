CREATE VIEW [dbo].[PartGroupDetail] AS
select p.PartNumber 
,   p.Name
,   min(p.PartImageUrl) 'PartImageUrl'
,   sum(p.QuantityNeeded) 'PartCount'
,   p.CategoryId
,   c.Name 'CategoryName'
,	g.Id 'GroupId'
,	g.Name 'GroupName'
from [Part] p
left join [Category] c on p.CategoryId = c.Id
left join [PartGroup] pg on p.PartNumber = pg.PartNumber
left join [Group] g on pg.GroupId = g.Id
group by p.PartNumber, p.Name, p.CategoryId, c.Name, g.Id, g.Name
