-- 코드를 입력하세요
SELECT CAR_TYPE, COUNT(CAR_TYPE) AS CARS
FROM CAR_RENTAL_COMPANY_CAR
# WHERE OPTIONS LIKE "%가죽시트%" OR "%통풍시트%" OR "%열선시트%"
WHERE OPTIONS LIKE "%시트%"
GROUP BY CAR_TYPE
ORDER BY CAR_TYPE