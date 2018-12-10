CREATE VIEW [dbo].[SetDetail] AS
SELECT s.SetNumber
,	s.Name
,	s.SetImageUrl
,	s.Theme
,	s.ThemeId
,	sum(p.QuantityNeeded) 'PartsNeeded'
,	sum(p.QuantityFound) 'PartsFound'
from [Set] s
inner join [Part] p on s.SetNumber = p.SetNumber
group by s.SetNumber, s.Name, s.SetImageUrl, s.Theme, s.ThemeId
