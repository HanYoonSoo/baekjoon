-- 코드를 작성해주세요
SELECT COUNT(ID) AS FISH_COUNT, MONTH(TIME) AS MONTH
FROM FISH_INFO
GROUP BY MONTH(TIME)
HAVING COUNT(ID) > 0
ORDER BY MONTH(TIME);