# ANIMAL_INS 테이블에서 상태가 아픈 동물의 아이디와 이름을 조회하는 SQL문 작성
# 결과는 아이디 순으로
# ANIMAL_ID와 NAME을 ANIMAL_INS 테이블에서 조회하는데,
# INTAKE_CONDITION이 'Sick'인 조건을 건다.
# 그리고 ANIMAL_ID 순으로 정렬을 하여 결과를 출력한다.

SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE INTAKE_CONDITION = 'Sick'
ORDER BY ANIMAL_ID ASC;