select ao.animal_id, ao.name
from animal_outs ao inner join animal_ins ai on ao.animal_id = ai.animal_id
order by (ao.datetime - ai.datetime) desc limit 2;