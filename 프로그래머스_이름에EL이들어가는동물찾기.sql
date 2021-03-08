-- 동물 중 강아지이고, 이름 중에서 el이 들어간 동물의 아이디와 이름을 출력한다.
-- UPPER를 굳이 쓰지 않아도 되지만, 명시적으로 작성하였다.
-- %EL% 으로 문자열 검색에서 EL이 들어간 단어를 찾도록 하였고, 타입이 Dog인 애를 출력했다

SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE UPPER(NAME) LIKE '%EL%' and ANIMAL_TYPE = 'Dog'
ORDER BY NAME;