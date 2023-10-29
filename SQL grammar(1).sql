--  1. 어느 테이블에서 가져오는지 => 테이블 이름
--  2. 테이블에서 어떤 필드를 가져오는지 => 필드 이름 
--  3. 나머지 순서 조건....

-- SELECT * FROM <테이블>  : 테이블에 뭐가 있는지 보는것
SELECT * FROM users u

SELECT * FROM users u LIMIT 10

SELECT  email, name  FROM users u LIMIT 10

SELECT  name  FROM users u

-- 테이블 행이 몇개 있는지  : 행 개수
SELECT  COUNT(*) FROM users u


-- 성씨별 개수 확인
-- SELECT 필드명1, 필드명2, ... FROM 테이블이름 약자  GROUP BY 필드명
SELECT  name , COUNT(*) AS 이름갯수 FROM users GROUP BY name 

SELECT a.email , COUNT(*)  FROM users a GROUP BY a.email  