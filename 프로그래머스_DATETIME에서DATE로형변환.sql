-- 각 동물의 아이디와 이름, 들어온 날짜를 조회한다.
-- 이때 날짜는 DATETIME을 DATE 형식으로 바꿔서 출력해야 한다.
-- DATE_FORMAT(날짜, 형식)은 날짜를 지정한 형식으로 출력하는 함수이다.


SELECT ANIMAL_ID, NAME, date_format(DATETIME,'%Y-%m-%d') as '날짜'
FROM ANIMAL_INS
ORDER BY ANIMAL_ID ASC;