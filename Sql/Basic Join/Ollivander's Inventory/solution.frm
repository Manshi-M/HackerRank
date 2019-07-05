select w.id, wp.age, s.min_coins_needed, s.power
from (select code, power, min(coins_needed) as min_coins_needed
  from wands
  group by power, code) as s 
left join wands w
  on w.coins_needed = s.min_coins_needed and w.code = s.code and w.power = s.power
left join wands_property as wp 
  on w.code = wp.code 
where wp.is_evil = 0
order by s.power desc, wp.age desc; 
