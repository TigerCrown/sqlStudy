SELECT * FROM orders o 

SELECT user_id, email, course_id, course_title from orders o 

-- 중복값 제거(GROUP BY, DISTINCT)
SELECT course_title, COUNT(*) AS 갯수 from orders o GROUP BY course_title 

SELECT course_title from orders o GROUP BY course_title 

SELECT course_title  FROM orders o GROUP BY course_title 

SELECT DISTINCT(course_title)  FROM orders o 

-- 정렬하기
SELECT * FROM payments p  -- 1. 테이블에서 확인하기

SELECT * FROM payments p ORDER BY `date` ASC  -- 2. date 기준으로 오름차순으로 정렬하기  

SELECT * FROM payments p ORDER BY `date` DESC  -- 3. date 기준으로 내림차순으로 정렬하기 

SELECT * FROM ANIMAL_INS

SELECT ANIMAL_ID FROM ANIMAL_INS WHERE NAME is NOT NULL and NAME != '' ORDER BY ANIMAL_ID DESC  