-- 코드를 입력하세요
# SELECT REST_NAME, FOOD_TYPE, FAVORITES FROM REST_INFO ORDER BY FOOD_TYPE DESC, FAVORITES DESC

SELECT A.FOOD_TYPE, A.REST_ID, A.REST_NAME, A.FAVORITES
FROM REST_INFO A
WHERE A.FAVORITES = (SELECT MAX(B.FAVORITES)
                     FROM REST_INFO B
                     WHERE A.FOOD_TYPE = B.FOOD_TYPE)
ORDER BY FOOD_TYPE DESC

