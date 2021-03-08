-- 동물 테이블에서, 모든 동물에 대해 종, 이름, 중성화 여부를 출력한다.
-- 단, 이름이 NULL인 경우는 No name으로 바꿔서 출력한다.
-- 아이디 순으로 출력한다.
-- IFNULL을 사용해서 NULL인 경우는 'No name'이 출력되게 하였다.

SELECT ANIMAL_TYPE, IFNULL(NAME,'No name') as NAME, SEX_UPON_INTAKE
FROM ANIMAL_INS
ORDER BY ANIMAL_ID ASC;