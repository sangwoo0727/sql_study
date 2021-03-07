# ANIMAL_INS 테이블에서 모든 정보를 ANIMAL_ID순으로 조회하는 SQL 문을 작성하시오.
# * 를 통해 모든 column을 가져오고, ANIMAL_ID를 asc 정렬해주면 된다.
# 물론 asc는 default이므로 생략 가능.

SELECT *
FROM ANIMAL_INS
ORDER BY ANIMAL_ID ASC;