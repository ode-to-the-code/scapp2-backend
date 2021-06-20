

Incident
Has_many entries
:title - string
:date - dateTime



Entry
belongs_to an exercise
:incident_id - integer
:content - string




maybe a situation can have many entries. Like a user can make a new situation (or incident),
and then make entries associated with that if multiple ones are necessary. Like you went to a party. You can make a new event called Party. At one point, you entered the place and saw some people, got nervous, can do an entry sc form for that. Another for another situation and so on.
