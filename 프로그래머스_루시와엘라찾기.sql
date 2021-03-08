-- 동물의 이름이 아래의 리스트와 같은 이름인 동물들을 출력한다.
-- = 'Lucy' or 형태로 작성해도 된다.
-- IN을 통해 이름들 중에 이 이름이 있을 경우로 조건을 걸어주었다.
-- 아이디 순으로 정렬했다.

SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE
FROM ANIMAL_INS
WHERE NAME IN('Lucy','Ella','Pickle','Rogan','Sabrina','Mitty')
ORDER BY ANIMAL_ID ASC;