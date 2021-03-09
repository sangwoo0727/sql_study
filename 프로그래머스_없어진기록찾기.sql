-- 문제가 다소 긴데, 정리를 하자면 ANIMAL_OUTS테이블의 ANIMAL_ID는 외래키로 ANIMAL_INS의 데이터를 참조한다.
-- ANIMAL_INS의 데이터가 일부 유실되어서, ANIMAL_OUTS에는 있지만, ANIMAL_INS에는 없는 데이터를 찾는 문제.
-- ANIMAL_OUTS가 왼쪽 테이블, ANIMAL_INS가 오른쪽 테이블이라고 하면, 
-- LEFT OUTER JOIN을 사용하면, 왼쪽 테이블의 모든 데이터, 오른쪽 테이블의 일치하는 데이터를 반환하므로,
-- 문제에서 원하는 조건에 맞춰 작성할 수 있게 된다.

SELECT ANIMAL_OUTS.ANIMAL_ID, ANIMAL_OUTS.NAME
FROM ANIMAL_OUTS
LEFT OUTER JOIN ANIMAL_INS
ON ANIMAL_INS.ANIMAL_ID = ANIMAL_OUTS.ANIMAL_ID
WHERE ANIMAL_INS.ANIMAL_ID is NULL;