-- 테이블에서 이름이 같은 동물의 이름과 그 이름의 개수를 출력하는 문제이다.
-- 단 중복되는 이름들에 대해서만 출력한다.
-- NAME으로 그룹을 묶어준 후, Having절을 이용하여 그룹에 대한 조건을 부여했다.
-- 마지막으로 이름순으로 출력하도록 Order 절을 추가했다.

SELECT NAME, COUNT(NAME) AS COUNT
FROM ANIMAL_INS
GROUP BY NAME
HAVING COUNT(NAME)>1
ORDER BY NAME