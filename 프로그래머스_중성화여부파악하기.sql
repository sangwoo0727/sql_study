-- 동물이 중성화되어있는지 아닌지 파악.
-- 중성화된 동물은 SEX_UPON_INTAKE 컬럼에 'Neutered'나 'Spayed'라는 단어가 들어간다.
-- 아이디, 이름, 중성화 여부를 표시하는데, 중성화되어있다면 O, 아니면 X를 표시한다.
-- 첫번째 쿼리문은 CASE문을 사용하였다.
-- WHEN에 조건, THEN은 참일 경우 출력 내용, ELSE는 거짓일 경우 출력 내용, 마지막에 END로 닫는다.
-- 두번째 쿼리문은 IF를 사용했다.

SELECT ANIMAL_ID, NAME,
CASE
WHEN SEX_UPON_INTAKE LIKE '%Neutered%' or SEX_UPON_INTAKE LIKE '%Spayed%'
THEN 'O'
ELSE 'X'
END as '중성화'
FROM ANIMAL_INS
ORDER BY ANIMAL_ID ASC;

SELECT ANIMAL_ID, NAME,
IF(SEX_UPON_INTAKE LIKE '%Netered%' or SEX_UPON_INTAKE LIKE '%Spayed%', 'O', 'X') as '중성화'
FROM ANIMAL_INS
ORDER BY ANIMAL_ID ASC;