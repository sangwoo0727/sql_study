-- Person 테이블과 Address 테이블이 있다.
-- Address 테이블은 외래키로 PersonId를 가지고 있다.
-- Write a SQL query for a report that provides the following information for each person in the Person table, regardless if there is an address for each of those people:
-- 각 사람이 주소를 가지고 있는지의 여부에 관계없이 각 사람에 대한 name, city, state를 출력한다.
-- join을 해야되지만, 주소가 없어도 사람 데이터는 보여줘야하므로, Outer join이다.
-- 이때, Person을 왼쪽테이블, Address를 오른쪽 테이블에 두고 LEFT OUTER JOIN을 이용하였다.

SELECT P.FirstName, P.LastName, A.City, A.State
FROM Person P
LEFT JOIN Address A
ON P.PersonId = A.PersonId;