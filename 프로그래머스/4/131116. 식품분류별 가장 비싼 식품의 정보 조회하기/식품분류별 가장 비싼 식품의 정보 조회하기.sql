-- 코드를 입력하세요
WITH CATEGORY_MAX AS (
    SELECT CATEGORY, MAX(PRICE) AS MAX_PRICE
    FROM FOOD_PRODUCT
    GROUP BY CATEGORY
)
SELECT P.CATEGORY, M.MAX_PRICE,	P.PRODUCT_NAME
FROM FOOD_PRODUCT AS P
JOIN CATEGORY_MAX AS M 
ON P.CATEGORY = M.CATEGORY AND P.PRICE = M.MAX_PRICE
WHERE P.CATEGORY IN ('과자', '국', '김치', '식용유')
ORDER BY MAX_PRICE DESC;