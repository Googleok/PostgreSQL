-- select 기본

select *
	from departments;
	
select first_name,
	   gender,
       hire_date
       from employees;
       
select concat(first_name, ' ', last_name) as "이름",
	   gender as "성별",
       hire_date as "입사일"
       from employees;
       
select distinct title from titles;
     
select emp_no, salary
	from salaries
    where to_char(from_date, 'yyyy-mm-dd') like '2001%'
    order by salary desc;
    
select concat(first_name, ' ', last_name) AS "이름",
	   gender AS "성별",
       hire_date AS "입사일"
       from employees 
       where hire_date <= '1991-01-01';

select concat(first_name, ' ', last_name) AS "이름",
	   gender AS "성별",
       hire_date AS "입사일"
       from employees 
       where hire_date <= '1991-01-01'
       and gender = 'f';

SELECT concat( first_name, ' ', last_name ) AS 이름,
         hire_date AS 입사일
    FROM employees
   WHERE gender='F'
     AND hire_date < '1989-01-01'             
      
select emp_no, dept_no
	from dept_emp
    where dept_no in ('d005', 'd009');