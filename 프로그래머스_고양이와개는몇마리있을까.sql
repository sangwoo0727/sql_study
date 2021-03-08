-- 테이블에서 동물의 종류가 고양이와 개인 동물의 각각 개수를 출력하는 문제이다.
-- 고양이가 먼저 나오도록 출력한다.
-- Where 절을 이용해서 Cat과 Dog만 나오도록 먼저 조건을 걸고,
-- ANIMAL_TYPE으로 GROUP BY를 시킨다.
-- 이후 정렬을 하고 출력하였다.

SELECT ANIMAL_TYPE, COUNT(ANIMAL_TYPE) as count
FROM ANIMAL_INS
WHERE ANIMAL_TYPE = 'Cat' or ANIMAL_TYPE = 'Dog'
GROUP BY ANIMAL_TYPE
ORDER BY ANIMAL_TYPE