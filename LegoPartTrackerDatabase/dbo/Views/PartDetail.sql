CREATE VIEW [dbo].[PartDetail] AS
SELECT p.Id
,	p.Color
,	p.ElementId
,	p.CategoryId
,	p.Name
,	p.PartImageUrl
,	p.PartNumber
,	p.PartUrl
,	p.QuantityFound
,	p.QuantityNeeded
,	p.SetNumber
,	p.QuantityFoundDateChanged
,	c.Name 'CategoryName'
,	g.Name 'GroupName'
from [Part] p
left join [Category] c on p.CategoryId = c.Id
left join [PartGroup] pg on p.PartNumber = pg.PartNumber
left join [Group] g on pg.GroupId = g.Id
