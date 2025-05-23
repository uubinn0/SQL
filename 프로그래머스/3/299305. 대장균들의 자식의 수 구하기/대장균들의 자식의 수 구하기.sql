-- 코드를 작성해주세요
SELECT A.ID, COUNT(B.PARENT_ID) AS CHILD_COUNT
FROM ECOLI_DATA A
    LEFT JOIN ECOLI_DATA B ON A.ID = B.PARENT_ID
GROUP BY A.ID
ORDER BY ID

# SELECT E.ID, IFNULL(A.CHILD_COUNT, 0) AS CHILD_COUNT
# FROM ECOLI_DATA E
#     LEFT JOIN 
#         (SELECT PARENT_ID, COUNT(PARENT_ID) AS CHILD_COUNT
#         FROM ECOLI_DATA
#         GROUP BY PARENT_ID) A
#     ON E.ID = A.PARENT_ID
# ORDER BY ID
