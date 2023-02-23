--- Session 1
BEGIN;
SHOW TRANSACTION ISOLATION LEVEL; 
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
UPDATE pizzeria SET rating = 4 WHERE name = 'Pizza Hut';
COMMIT;
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';

--- Session 2
BEGIN;
SHOW TRANSACTION ISOLATION LEVEL;
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut';
COMMIT;
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';