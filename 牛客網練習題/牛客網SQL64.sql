SELECT p.id, p.name,t.content
from person as p
LEFT JOIN task as t
ON p.id = t.person_id
ORDER BY p.id;
