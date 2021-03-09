-- 9시부터 20시 사이에 입양이 된 동물들을 각각의 시간대별로 입양이 몇 건이 발생했는지 조회하는 SQL
-- DATETIME을 HOUR 함수로 묶어서 시간을 나타내었다.
-- GROUP BY로 시간대 별로 묶었고, 그룹에 대한 조건으로 HAVING절을 추가했다.

SELECT HOUR(DATETIME) as 'HOUR', COUNT(DATETIME) as 'COUNT'
FROM ANIMAL_OUTS
GROUP BY HOUR(DATETIME)
HAVING HOUR >= 9 and HOUR <=19
ORDER BY HOUR;