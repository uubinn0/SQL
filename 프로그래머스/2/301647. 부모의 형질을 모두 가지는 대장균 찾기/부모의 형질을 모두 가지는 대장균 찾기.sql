-- 코드를 작성해주세요
# 자식 테이블 기준으로 부모 테이블 붙이기
# 자식 형질을 기준으로 부모의 형질을 찾아 옆에 붙이기
SELECT
    C.ID, 
    C.GENOTYPE AS GENOTYPE,
    P.GENOTYPE AS PARENT_GENOTYPE
FROM ECOLI_DATA C
    LEFT JOIN ECOLI_DATA P
    ON C.PARENT_ID = P.ID
WHERE
    C.GENOTYPE & P.GENOTYPE = P.GENOTYPE
ORDER BY 
    ID ASC