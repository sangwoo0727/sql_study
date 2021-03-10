-- 입양 시각 구하기 (2)
-- 보호소에서 시간대별로 입양이 일어난 횟수를 출력하는 문제이다.
-- 테이블에 없는 시간대여도 출력해주는게 관건인 문제
-- mariadb에서 프로시저 생성을 하며 변수를 선언해줬던 방식이 생각이 났다.
-- @HOUR라는 변수를 -1 부터 선언을 해준다.
-- @HOUR를 하나씩 보고, 서브쿼리를 통해, 해당 HOUR에 해당하는 데이터를 count해준다.

SET @HOUR := -1;

SELECT @HOUR:=@HOUR+1 as HOUR,
(SELECT count(*) FROM ANIMAL_OUTS WHERE HOUR(DATETIME) = @HOUR) as COUNT
FROM ANIMAL_OUTS
WHERE @HOUR < 23
ORDER BY HOUR;