CREATE OR REPLACE FUNCTION FNC_FIBONACCI(PSTOP BIGINT 
DEFAULT 10) RETURNS SETOF BIGINT AS 
	$$
	WITH RECURSIVE fib(a, b) AS (
	        VALUES (0, 1)
	        UNION ALL
	        SELECT b, (a + b) AS a
	        FROM fib
	        WHERE b < $1
	    )
	SELECT a
	FROM fib;
	$$ LANGUAGE sql;
	select * from fnc_fibonacci(100);
	select * from fnc_fibonacci();
