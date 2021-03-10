-- AI 동물보호소, AO 입양보낸 동물의 정보
-- 입양을 간 동물 중 보호기간이 가장 길었던 동물 두마리의 아이디와 이름을 조회하는 SQL 작성
-- 입양을 간 동물은 AI와 AO에 모두 존재하는 데이터이고, 보호기간은 AO의 datetime - AI의 datetime이 된다.
-- 즉, 양쪽 테이블에 모두 존재하는 데이터 대상이므로 INNER JOIN을 해주고,
-- 정렬 기준으로 AO.DATETIME - AI.DATETIME을 내림차순으로 줬다.
-- 두마리 출력이므로 LIMIT을 이용하여 출력해주었다. 

SELECT AI.ANIMAL_ID, AI.NAME
FROM ANIMAL_OUTS AO
INNER JOIN ANIMAL_INS AI
ON AI.ANIMAL_ID = AO.ANIMAL_ID
ORDER BY (AO.DATETIME-AI.DATETIME) DESC LIMIT 2;