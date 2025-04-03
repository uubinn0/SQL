-- 코드를 입력하세요
# SELECT CAR_ID, ROUND(AVG(DATEDIFF(END_DATE, START_DATE) + 1),1) AS AVERAGE_DURATION
# FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
# GROUP BY CAR_ID
# HAVING AVERAGE_DURATION >= 7
# ORDER BY AVERAGE_DURATION DESC, CAR_ID

select car_id, round(avg(datediff(end_date,start_date) + 1),1) as average_duration
from CAR_RENTAL_COMPANY_RENTAL_HISTORY 
group by car_id
having average_duration >= 7
order by average_duration desc, car_id desc