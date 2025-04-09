-- 코드를 입력하세요
SELECT I.REST_ID, I.REST_NAME, I.FOOD_TYPE, I.FAVORITES, I.ADDRESS, ROUND(AVG(R.REVIEW_SCORE), 2) AS SCORE
FROM REST_INFO I
    INNER JOIN REST_REVIEW R ON I.REST_ID = R.REST_ID
WHERE I.ADDRESS LIKE '서울%'
GROUP BY I.REST_ID, I.REST_NAME, I.FOOD_TYPE, I.FAVORITES, I.ADDRESS
ORDER BY SCORE DESC, I.FAVORITES DESC


# SELECT rest_review.REST_ID, REST_NAME, FOOD_TYPE, FAVORITES, ADDRESS, round( avg(review_score), 2) as SCORE
# from rest_info inner join rest_review on rest_info.rest_id = rest_review.rest_id
# where address like "%서울%"
# group by rest_review.rest_id
# order by avg(review_score) desc, favorites desc;