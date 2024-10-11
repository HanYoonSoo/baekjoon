-- 코드를 입력하세요
SELECT UGU.USER_ID, UGU.NICKNAME, SUM(UGB.PRICE) AS TOTAL_SALES
FROM USED_GOODS_USER UGU INNER JOIN USED_GOODS_BOARD UGB ON UGU.USER_ID = UGB.WRITER_ID
WHERE UGB.STATUS = 'DONE' 
GROUP BY UGB.WRITER_ID
HAVING TOTAL_SALES >= 700000
ORDER BY TOTAL_SALES;

# SELECT WRITER_ID 
#                       FROM USED_GOODS_BOARD 
#                       WHERE STATUS = 'DONE' 
#                       GROUP BY WRITER_ID
#                       HAVING SUM(PRICE) >= 700000