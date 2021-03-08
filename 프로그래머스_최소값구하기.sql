-- 보호소에 들어온 동물 중 가장 먼저 들어온 동물이 언제 들어왔는지 조회하는 SQL

SELECT min(DATETIME) as '시간'
FROM ANIMAL_INS
ORDER BY DATETIME ASC;