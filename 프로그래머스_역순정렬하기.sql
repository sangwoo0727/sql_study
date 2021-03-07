# ANIMAL_INS 테이블에서 모든 동물의 이름과 보호 시작일을 ANIMAL_ID 역순 순서로 조회하기.
# NAME과 DATETIME 컬럼을 선택하고, ANIMAL_ID를 기준으로 DESC 정렬을 해주면 된다.

SELECT NAME, DATETIME
FROM ANIMAL_INS
ORDER BY ANIMAL_ID DESC;