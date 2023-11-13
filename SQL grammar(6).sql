-- 1. 아픈 동물 찾기
-- 문제설명
-- ANIMAL_INS 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다.
-- ANIMAL_INS 테이블 구조는 다음과 같으며, ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE는
-- 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.
-- 문제
-- 입양 게시판에 동물 정보를 게시하려 합니다. 동물의 생물 종, 이름, 성별 및 중성화 여부를 아이디 순으로 조회하는 SQL문을 작성해주세요.
-- 이때 프로그래밍을 모르는 사람들은 NULL이라는 기호를 모르기 때문에, 이름이 없는 동물의 이름은 "No name"으로 표시해 주세요.
-- 정답
-- SELECT * FROM ANIMAL_INS
-- (틀린 코드)SELECT ANIMAL_TYPE, NAME, SEX_UPON_INTAKE FROM ANIMAL_INS WHERE NAME is  Not name
-- (틀린 코드)SELECT ANIMAL_TYPE, NAME, SEX_UPON_INTAKE FROM ANIMAL_INS WHERE "" is No name
-- (틀린 코드)SELECT * FROM ANIMAL_INS WHERE NAME is NOT NULL and NAME != ''
SELECT ANIMAL_TYPE, IFNULL(NAME, 'No name'), SEX_UPON_INTAKE FROM ANIMAL_INS order by animal_id


-- 2. 강원도에 위치한 생산공장 목록 출력하기
-- 문제설명
-- 다음은 식품공장의 정보를 담은 FOOD_FACTORY 테이블입니다.
-- FOOD_FACTORY 테이블은 다음과 같으며 FACTORY_ID, FACTORY_NAME, ADDRESS, TLNO는 각각 공장 ID, 공장 이름, 주소, 전화번호를 의미합니다.
-- 문제
-- FOOD_FACTORY 테이블에서 강원도에 위치한 식품공장의 공장 ID, 공장 이름, 주소를 조회하는 SQL문을 작성해주세요.
-- 이때 결과는 공장 ID를 기준으로 오름차순 정렬해주세요.
-- 정답
-- SELECT FACTORY_ID, FACTORY_NAME, ADDRESS FROM FOOD_FACTORY
-- SELECT FACTORY_ID, FACTORY_NAME, ADDRESS FROM FOOD_FACTORY where address like '강원도%' ORDER BY FACTORY_ID asc
SELECT FACTORY_ID, FACTORY_NAME, ADDRESS FROM FOOD_FACTORY WHERE LEFT(address,2) = '강원' ORDER BY FACTORY_ID asc


-- 3. 인기있는 아이스크림
-- 문제 설명
-- FIRST_HALF 테이블은 아이스크림 가게의 상반기 주문 정보를 담은 테이블입니다.
-- FIRST_HALF 테이블 구조는 다음과 같으며, SHIPMENT_ID, FLAVOR, TOTAL_ORDER는
-- 각각 아이스크림 공장에서 아이스크림 가게까지의 출하 번호, 아이스크림 맛, 상반기 아이스크림 총주문량을 나타냅니다.
-- 문제
-- 상반기에 판매된 아이스크림의 맛을 총주문량을 기준으로 내림차순 정렬하고 총주문량이 같다면 출하 번호를 기준으로 오름차순 정렬하여 조회하는 SQL 문을 작성해주세요.
-- 정답
-- SELECT * FROM FIRST_HALF
SELECT flavor FROM FIRST_HALF ORDER BY TOTAL_ORDER DESC, SHIPMENT_ID ASC


-- 4. 문제 설명 흉부외과 또는 일반외과 의사 목록 출력하기
-- 다음은 종합병원에 속한 의사 정보를 담은 DOCTOR 테이블입니다.
-- DOCTOR 테이블은 다음과 같으며 DR_NAME, DR_ID, LCNS_NO, HIRE_YMD, MCDP_CD, TLNO는
-- 각각 의사이름, 의사ID, 면허번호, 고용일자, 진료과코드, 전화번호를 나타냅니다.
-- 문제
-- DOCTOR 테이블에서 진료과가 흉부외과(CS)이거나 일반외과(GS)인 의사의 이름, 의사ID, 진료과, 고용일자를 조회하는 SQL문을 작성해주세요.
-- 이때 결과는 고용일자를 기준으로 내림차순 정렬하고, 고용일자가 같다면 이름을 기준으로 오름차순 정렬해주세요.
-- 정답
-- SELECT * FROM DOCTOR
--  WHERE MCDP_CD='CS' and MCDP_CD='GS'
SELECT dr_name, dr_id, mcdp_cd, LEFT(hire_ymd,10) FROM DOCTOR WHERE MCDP_CD = 'CS' OR MCDP_CD ='GS' order by hire_ymd desc, dr_name asc