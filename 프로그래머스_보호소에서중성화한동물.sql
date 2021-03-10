-- AI 테이블은 보호소에 들어온 동물 정보 테이블
-- AO 테이블은 보호소에 있던 동물 중 입양된 동물 정보 테이블
-- 보호소에 들어올 당시에는 중성화되지 않았지만 나갈때는 중성화되어있는 동물을 출력하는 SQL
-- INNER JOIN으로 입양된 동물 목록을 구하고, 그 중 보호소에 들어갔을 땐, 중성화가 안되어있었지만, 이후 중성화가 된 동물을 WHERE 조건을 이용해서 구한다.

SELECT AI.ANIMAL_ID, AI.ANIMAL_TYPE, AI.NAME
FROM ANIMAL_INS AI
INNER JOIN ANIMAL_OUTS AO
ON AI.ANIMAL_ID = AO.ANIMAL_ID
WHERE AI.SEX_UPON_INTAKE != AO.SEX_UPON_OUTCOME
AND AI.SEX_UPON_INTAKE LIKE 'I%'
ORDER BY AI.ANIMAL_ID ASC;