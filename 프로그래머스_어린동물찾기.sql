# ANIMAL_INS 테이블에서 젊은 동물의 아이디와 이름을 아이디 순으로 조회하기.
# INTAKE_CONDITION not in('Aged') 를 사용해도 된다.

SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE INTAKE_CONDITION != 'Aged'
ORDER BY ANIMAL_ID ASC;