-- ANIMAL_INS 테이블에서 이름이 있는 동물들의 이름의 개수를 출력한다.
-- 중복되는 이름은 하나로 친다.
-- count로 개수를 세고, distinct로 겹치는 부분을 판단하였다.

SELECT count(distinct(NAME)) AS 'count'
FROM ANIMAL_INS
WHERE NAME is not NULL;