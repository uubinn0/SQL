-- 코드를 입력하세요
# SELECT P.PRODUCT_CODE, OFS.SALES_AMOUNT * P.PRICE AS SALES
SELECT P.PRODUCT_CODE, SUM(OFS.SALES_AMOUNT * P.PRICE) AS SALES
FROM PRODUCT P
    INNER JOIN OFFLINE_SALE OFS ON P.PRODUCT_ID = OFS.PRODUCT_ID
GROUP BY P.PRODUCT_CODE
ORDER BY SALES DESC, P.PRODUCT_CODE