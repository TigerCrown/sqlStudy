-- 1. 가장 비싼 상품 구하기
-- 문제 설명
-- 다음은 어느 의류 쇼핑몰에서 판매 중인 상품들의 정보를 담은 PRODUCT 테이블입니다.
-- PRODUCT 테이블은 아래와 같은 구조로 되어있으며, PRODUCT_ID, PRODUCT_CODE, PRICE는 각각 상품 ID, 상품코드, 판매가를 나타냅니다.
-- 문제
-- PRODUCT 테이블에서 판매 중인 상품 중 가장 높은 판매가를 출력하는 SQL문을 작성해주세요.
-- 이때 컬럼명은 MAX_PRICE로 지정해주세요.
-- 코드를 입력하세요
-- 오답
-- select * from product
-- SELECT price AS max_price from product order by max_price desc
-- select price as max_price from product order by price limit 1
-- 정답
-- select max(price) from product
select max(price) as max_price from product

-- 2. 조건에 맞는 회원수 구하기
-- 문제 설명
-- 다음은 어느 의류 쇼핑몰에 가입한 회원 정보를 담은 USER_INFO 테이블입니다.
-- USER_INFO 테이블은 아래와 같은 구조로 되어있으며 USER_ID, GENDER, AGE, JOINED는 각각 회원 ID, 성별, 나이, 가입일을 나타냅니다.
-- 문제
-- USER_INFO 테이블에서 2021년에 가입한 회원 중 나이가 20세 이상 29세 이하인 회원이 몇 명인지 출력하는 SQL문을 작성해주세요.
-- 코드를 입력하세요
-- SELECT * from user_info
-- select LEFT(JOINED,4), age, count(*) from user_info where LEFT(JOINED,4) = 2021 and age >= 20 and age <= 29
SELECT  COUNT(*) AS USERS FROM USER_INFO WHERE LEFT(JOINED,4) = 2021 AND AGE >= 20 AND AGE <= 29