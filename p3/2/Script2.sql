SELECT TerritoryDescription AS "Peacock Margaret's territories" FROM EmployeeTerritory 
	INNER JOIN Territory ON EmployeeTerritory.TerritoryId = Territory.Id
	WHERE EmployeeId = (
						SELECT Id FROM Employee
							WHERE LastName = "Peacock" AND FirstName = "Margaret");