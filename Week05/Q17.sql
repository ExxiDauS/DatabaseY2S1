SELECT Tradename, GenericMark FROM medicine
WHERE Tradename LIKE "%2.5$%" ESCAPE '$';