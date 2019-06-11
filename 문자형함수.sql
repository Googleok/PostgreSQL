-- 문자형 함수

select upper('Seoul');

select upper(first_name) from employees;
select lower('Seoul');
select substring('Happy Day', 3, 2);

select concat(first_name, ' ', last_name) AS 이름,
	   gender AS 성별,
       hire_date AS 입사일
       from employees 
       where substring(to_char(hire_date, 'yyyy-mm-dd'), 1, 4) = '1989';

select lpad('123456', 10, '-'), rpad('123456', 10, '-');

select emp_no, lpad(cast(salary as char), 10, '*')
	from salaries
    where to_char(from_date, 'yyyy-mm-dd') like '2001-%'
		and salary < 70000;

select concat('-----', ltrim(' hello '), '-----'),
	   concat('-----', rtrim(' hello '), '-----'),
       concat('-----', trim(' hello '), '-----'),
       concat('-----', trim(both 'x' from 'xxxxxxxxhelloxxxxxxxx'), '-----');
       
       