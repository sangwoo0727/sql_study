-- 이름이 있는 동물아이디를 아이디 순으로 출력하는 문제이다.
-- NULL인지 아닌지 확인을 위해 is, is not을 사용한다.

SELECT ANIMAL_ID
FROM ANIMAL_INS
WHERE NAME is not NULL
ORDER BY ANIMAL_ID ASC;