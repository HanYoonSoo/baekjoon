-- 코드를 입력하세요
SELECT history_id, car_id, date_format(start_date, '%Y-%m-%d') 'START_DATE', 
date_format(end_date, '%Y-%m-%d') 'END_DATE',
(case when datediff(end_date, start_date) < 29 then '단기 대여' else '장기 대여' end) 'RENT_TYPE'
from car_rental_company_rental_history where start_date like '2022-09-%' order by history_id desc;