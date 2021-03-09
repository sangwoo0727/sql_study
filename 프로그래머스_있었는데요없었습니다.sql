-- ANIMAL_INS는 보호소에 들어온 동물의 정보를 담고있다.
-- ANIMAL_OUTS는 보호소에서 입양보낸 동물의 정보를 담고있다.
-- 이때 입양일이 잘못 입력된 동물들이 존재한다.
-- 보호 시작일보다 입양일이 더 빠르게 데이터로 저장된 동물의 아이디와 이름을 조회하는 SQL문 작성

-- 우선, 두 테이블은 ANIMAL_ID 로 관계를 맺고 있다.
-- INNER JOIN을 통하여 두 테이블에서 조인될 조건이 만족하는 행에 대해서만 반환을 했고
-- 조건으로 ANIMAL_INS의 datetime이 ANIMAL_OUTS의 datetime보다 큰 경우만 주었다.

SELECT AI.ANIMAL_ID, AI.NAME
FROM ANIMAL_OUTS as AO
INNER JOIN ANIMAL_INS as AI
ON AI.ANIMAL_ID = AO.ANIMAL_ID
WHERE AI.DATETIME > AO.DATETIME
ORDER BY AI.DATETIME ASC;