-- CART_PRODUCTS 테이블에서 CART_ID에 해당하는 NAME들 중 'Yogurt'와 'Milk'가 모두 포함된 CART_ID를 출력하는 문제

-- 중첩 쿼리문 방식
-- CART_ID가 Milk를 가지고 있는 CART_ID에 속하고, 그때 NAME이 'Yogurt'인 데이터를 SELECT하면 완성된다.
-- 데이터를 검색해보니, 같은 CART_ID가 Milk나 Yogurt를 2개이상씩 가지고 있는 데이터들이 있어서, DISTINCT를 사용했다.
-- GROUP BY를 써줘도 됨.

SELECT DISTINCT CART_ID
FROM CART_PRODUCTS
WHERE CART_ID IN (
	SELECT CART_ID
    FROM CART_PRODUCTS
    WHERE NAME = 'Milk'
) AND NAME = 'Yogurt'
ORDER BY CART_ID ASC;

-- Self Join 방식
-- 자기자신과 JOIN을 해서, 결과를 만들어낸다.
-- 그 후, 조건으로 C1.NAME이 'milk' C2.NAME이 'Yogurt'인 데이터를 찾으면 된다.

SELECT C1.CART_ID
FROM CART_PRODUCTS C1, CART_PRODUCTS C2
WHERE C1.CART_ID = C2.CART_ID
AND (C1.NAME = 'Milk' AND C2.NAME = 'Yogurt')
GROUP BY C1.CART_ID
ORDER BY CART_ID ASC;