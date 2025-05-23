-- 코드를 작성해주세요
WITH YEAR_MAX AS (
    SELECT
        YEAR(DIFFERENTIATION_DATE) AS YEAR, 
        MAX(SIZE_OF_COLONY) AS MAX_SIZE
    FROM ECOLI_DATA
    GROUP BY YEAR(DIFFERENTIATION_DATE)
)

SELECT
    YEAR(DIFFERENTIATION_DATE) AS YEAR,
    Y.MAX_SIZE - E.SIZE_OF_COLONY AS YEAR_DEV,
    ID
FROM ECOLI_DATA E
    LEFT JOIN YEAR_MAX Y ON YEAR(E.DIFFERENTIATION_DATE) = Y.YEAR
ORDER BY YEAR ASC, YEAR_DEV ASC