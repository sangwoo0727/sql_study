# 이름이 없는 동물의 아이디를 아이디 순으로 출력하기
# NULL인지 아닌지는 =이 아니라 is, is not을 사용한다.

SELECT ANIMAL_ID
FROM ANIMAL_INS
WHERE NAME is NULL
ORDER BY ANIMAL_ID ASC;