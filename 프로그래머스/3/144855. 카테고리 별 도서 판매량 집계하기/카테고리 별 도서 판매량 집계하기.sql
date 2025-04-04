-- 코드를 입력하세요
SELECT CATEGORY, SUM(BS.SALES) AS TOTAL_SALES
FROM BOOK_SALES BS
    INNER JOIN BOOK B ON BS.BOOK_ID = B.BOOK_ID
WHERE DATE_FORMAT(BS.SALES_DATE, "%m") = 01
GROUP BY CATEGORY
ORDER BY CATEGORY