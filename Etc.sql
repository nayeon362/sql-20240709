USE practice_sql;

-- 조건문 
-- CASE : 특정 값을 비교하여 일치하는 작업을 수행
-- CASE 컬럼 
-- WHEN 비교값1 THEN 비교값1과 컬럼이 일치할때 결과
-- WHEN 비교값2 THEN 비교값2와 컬럼이 일치할때 결과
-- ELSE 비교값1과 비교값2가 모두 컬럼과 일치하지 않을때 결과
-- END

-- CASE
-- WHEN 조건1 THEN 조건1이 참일때 결과
-- WHEN 조건2 THEN 조건2가 참일때 결과
-- ELSE 조건1과 조건2가 모두 거짓일때 결과

SELECT date, (
    CASE 
        WHEN amount > 100000 THEN '고액'
        ELSE '소액'
     END   
) '금액'       
FROM sale;

-- IF 함수 : 매개변수로 전달한 표현식에 따라 결과를 반환하는 함수
-- IF (조건, 참일때결과, 거짓일때결과)
SELECT date, IF(amount > 100000, '고맥', '소액')
FROM sale;

-- IFNULL 함수 : 첫번째 매개변수의 값이 NULL인지에 따라 결과를 반환하는 함수
-- IFNULL (값, 값이 NULL일때 반환할 결과)
SELECT 사번, 사원이름, IFNULL(부서명, '없음')
FROM employee_view;