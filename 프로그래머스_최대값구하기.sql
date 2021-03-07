# ANIMAL_INS 테이블은 DATETIME이라는 컬럼이 있다.
# 이 컬럼은 보호 시작일이고, 문제에서 요구하는 것이 가장 최근에 들어온 동물은 언제 들어왔는지 조회하는 SQL 문을 작성하는 것.
# 예시 출력
# | 시간                 |
# | 2020-03-02 15:38:00 |

SELECT max(DATETIME) as '시간' from ANIMAL_INS;