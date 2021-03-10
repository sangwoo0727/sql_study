-- ANIMAL_INS 동물 보호소에 들어온 동물 데이터
-- ANIMAL_OUTS 입양 보낸 동물 데이터
-- 아직 입양 못간 동물중 가장 오래 보호소에 있었던 동물 3마리의 이름과 보호 시작일 조회하는 SQL 작성
-- 왼쪽 테이블 ANIMAL_OUTS(AO)로 설정, 오른족 테이블 ANIMAL_INS(AI)로 설정
-- right join을 하면, AO와 AI가 매핑되는 데이터 뿐만 아니라 매핑 되지 않은 AI 데이터 모두 나오게 된다.
-- 즉 매핑되지 않은 AI 데이터가 문제에서 의도한 입양을 못간 동물이 된다.
-- 조건으로 AO의 ANIMAL_ID가 NULL인 데이터를 찾아, 날짜 기준 오름차순으로 정렬하여 위에서 3개를 출력하였다. 

SELECT AI.NAME, AI.DATETIME
FROM ANIMAL_OUTS AO
RIGHT JOIN ANIMAL_INS AI
ON AO.ANIMAL_ID = AI.ANIMAL_ID
WHERE AO.ANIMAL_ID is NULL
ORDER BY AI.DATETIME ASC LIMIT 3;