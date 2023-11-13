-- WHERE 조건 AND  조건 AND .....
-- 조건 필드에 대한 처리  예: 이름은 NULL 이 아니다 => 필드명 IS NOT NULL ,  
-- 조건 : 예: name = "이" => 필드명 = 숫자 혹은 '문자' 

-- step 1 : 테이블 조회
SELECT * FROM checkins c 

-- step2 : WHERE 조건을 확인 OR 는 같은 필드값으로 조건을 걸어 동시에 2가지이상인 값을 가져올때 
SELECT * FROM checkins c WHERE likes = 3 OR  likes = 2 
-- WHRER ... AND... 이중필터를 해준다.
SELECT * FROM checkins c WHERE likes = 3 AND  week = 1 

-- step3 : group by 든가 order by 를 사용하여 한번 더 데이터를 필터해준다. 
-- group by 중복되지 않은 데이터를 하나씩만 가져오기
SELECT * FROM checkins c WHERE likes = 3 group by week

-- distinct() 중복값 제거
SELECT DISTINCT(week) FROM checkins c WHERE likes = 3 

-- order by 정렬하기
SELECT * FROM checkins c WHERE likes = 3 AND week = 1 order by comment  DESC 

-- order by 중복 정렬시 먼저 순서대로 정렬됨
SELECT week , comment , likes  FROM checkins c WHERE likes = 0 order by week ASC , comment DESC  

SELECT week , comment , likes  FROM checkins c order by week ASC ,likes ASC,  comment ASC 

-- 먼전 필요한 필드명을 가져온다. 
-- (선택)그다음 필드명을 as로 다시 이름(약자)을 지어주겠다 => 필드명을 예쁜걸로 보기좋게 표현하겠다. as로 정의한 이름은 뒤에서도 사용이 가능하다.
SELECT checkin_id, updated_at  , course_id as 과목아이디  FROM checkins c WHERE likes = 3 AND week = 1 order by 과목아이디  DESC 

-- 문제 설명 ANIMAL_INS 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. ANIMAL_INS 테이블 구조는 다음과 같으며,
-- ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE는
-- 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.
-- 문제)동물 보호소에 들어온 모든 동물의 아이디와 이름, 보호 시작일을 이름 순으로 조회하는 SQL문을 작성해주세요.
-- 단, 이름이 같은 동물 중에서는 보호를 나중에 시작한 동물을 먼저 보여줘야 합니다.
SELECT ANIMAL_ID, NAME, DATETIME FROM ANIMAL_INS ORDER BY NAME ASC, DATETIME deSC  