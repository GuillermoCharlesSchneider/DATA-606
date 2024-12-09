select  
UE.unionEventID,
UE.v3accountid,
UE.campaignTypeID,
UE.districtID,
D.districtName,
UE.subdivisionid,
di.divisionName,
UE.v3fieldrepname,
UE.createdBy,
UE.eventname,
UE.address1,
UE.city,
s.statename,
UE.zipcode,
UE.turnoutcount,
UE.datecreated,
a.employerID,
e.employerName,
a.memberCount,
a.ADFcount
from unionevents UE 
LEFT JOIN states s on UE.stateid = s.stateid
LEFT JOIN accounts a on UE.v3accountid = a.V3accountID
LEFT JOIN districts d on UE.districtID = d.districtID
LEFT JOIN divisions di on UE.subdivisionID = di.divisionID
LEFT JOIN employers e on a.employerID = e.employerid
where unionEventTypeID = 22
AND UE.statusID = 1
AND campaignTypeID = 25
AND UE.datecreated >= '2022-11-18'
and UE.v3accountid IS NOT NULL
AND d.districtID = 5




LEFT JOIN locations L ON a.locationID = L.locationID
LEFT JOIN locationsGridsTiers LGT ON L.v3locationID = LGT.v3locationID
LEFT JOIN tiers T ON T.tierID = LGT.tierID