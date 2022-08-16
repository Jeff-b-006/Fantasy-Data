Select * From (
	SELECT
		[Player],
		[Age],
		[Adj_Total]
	FROM dbo.[Yearly Data]
) TotalChart
PIVOT(
	SUM([Adj_Total])
	For [Age]
	in (
		[21],[22],[23],[24],[25],[26],[27],[28],[29],[30],[31],[32],[33],[34],[35],[36],[37],[38],[39],[40],[41],[42],[43]
		)
)
As PivotTable
