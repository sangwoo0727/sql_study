-- ANIMAL_INS 테이블에서 동물의 아이디와 이름, 보호 시작일을 조회한다.
-- 이름 순, 이름이 같으면 보호를 나중에 시작한 동물 순.

SELECT ANIMAL_ID, NAME, DATETIME
FROM ANIMAL_INS
ORDER BY NAME ASC, DATETIME DESC;