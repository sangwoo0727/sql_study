-- 동물보호소에 가장 빨리 들어온 동물의 이름을 출력하는 문제이다.
-- 정렬 후, limit을 이용해서 해결했다.

SELECT NAME
FROM ANIMAL_INS
ORDER BY DATETIME ASC
LIMIT 1;