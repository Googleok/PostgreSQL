-- 날짜형 함수
select current_date;
select current_time, current_date;
select now(), current_timestamp;

select now(),pg_sleep(2), now();
-- sysdate 는 시차가 생긴다.
select clock_timestamp(), pg_sleep(2), clock_timestamp();

select to_date('2019-06-11', 'yyyy-mm-dd');
select to_timestamp('2015-04-29 01:32:11.321', 'YYYY-MM-DD HH24:MI:SS.MS'); 

--SELECT concat(first_name, ' ', last_name) AS name,               
--       PERIOD_DIFF( DATE_FORMAT(current_date, '%Y%m'),  
--                   DATE_FORMAT(hire_date, '%Y%m') )
--FROM   employees; 

select date_part('year', current_date);

select (date_part('year', now()) - date_part('year', hire_date))*12+
       (date_part('month', now()) - date_part('month', hire_date))
	from employees;

select now(), now() + interval '12 hour';
select now(), now() - interval '12 hour';

select now(), cast(now() as date);
select '1'::integer + 1;
select '2019-12-31'::date;
