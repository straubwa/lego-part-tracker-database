CREATE VIEW [dbo].[SetDetails] AS
select s.SetNumber, s.Name, s.SetImageUrl, s.Theme, s.ThemeId, sum(p.QuantityNeeded) 'PartsNeeded', sum(p.QuantityFound) 'PartsFound'
from Sets s
inner join Parts p on s.SetNumber = p.SetNumber
group by s.SetNumber, s.Name, s.SetImageUrl, s.Theme, s.ThemeId
