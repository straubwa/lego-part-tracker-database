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
,	c.Name 'Category'
,	cg.Name 'CategoryGroup'
from [Part] p
left join [Category] c on p.CategoryId = c.Id
left join [CategoryGroup] cg on c.CategoryGroupId = cg.Id