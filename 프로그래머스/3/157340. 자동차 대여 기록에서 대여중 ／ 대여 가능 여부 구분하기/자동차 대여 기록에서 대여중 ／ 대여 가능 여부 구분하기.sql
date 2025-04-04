-- 코드를 입력하세요


SELECT CAR_ID, 
        CASE 
            WHEN CAR_ID IN (select CAR_ID
                            from CAR_RENTAL_COMPANY_RENTAL_HISTORY
                            where start_date <= '2022-10-16' and end_date >= '2022-10-16') THEN '대여중'
            ELSE '대여 가능'
        END AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
ORDER BY CAR_ID DESC
