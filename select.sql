-- select �⺻

select *
	from departments;
	
select first_name,
	   gender,
       hire_date
       from employees;
       
select concat(first_name, ' ', last_name) as "�̸�",
	   gender as "����",
       hire_date as "�Ի���"
       from employees;
       
select distinct title from titles;
     
select emp_no, salary
	from salaries
    where to_char(from_date, 'yyyy-mm-dd') like '2001%'
    order by salary desc;
    
select concat(first_name, ' ', last_name) AS "�̸�",
	   gender AS "����",
       hire_date AS "�Ի���"
       from employees 
       where hire_date <= '1991-01-01';

select concat(first_name, ' ', last_name) AS "�̸�",
	   gender AS "����",
       hire_date AS "�Ի���"
       from employees 
       where hire_date <= '1991-01-01'
       and gender = 'f';

SELECT concat( first_name, ' ', last_name ) AS �̸�,
         hire_date AS �Ի���
    FROM employees
   WHERE gender='F'
     AND hire_date < '1989-01-01'             
      
select emp_no, dept_no
	from dept_emp
    where dept_no in ('d005', 'd009');