-- serial vs sequence

create table t1(
	c1 serial
);

insert into t1 values(default);
select * from t1;

create sequence seq_t2;
create table t2(
	c2 int not null default nextval('seq_t2')
);
alter sequence seq_t2 owned by t2.c2;

insert into t2 values(default);
select * from t2;


-- char, varchar
create table t3(
	c3 char(4)
);

insert into t3 values('ok');
--insert into t3 values('too long');
select c3, char_length(c3) from t3;

create table t4(
	c4 varchar(5)
);

insert into t4 values('ok');
insert into t4 values('good               ');
--insert into t4 values('too long');
insert into t4 values('too long'::varchar(5));

select c4, char_length(c4) from t4;


-- enum type
create type mood as enum('sad', 'ok', 'happy');

create table person(
	name varchar(10),
	current_mood mood
);

insert into person values('you', 'happy');
insert into person values('you', 'sad');
insert into person values('you', '');

select * from person;
select * from person where current_mood > 'ok';


-- json 형식
select '{"result": "success", "data":1 }'::json;

create table t5(
	response json
);

insert into t5 values('{"result": "success", "data":1 }');
insert into t5 values('{"result": "success", "data":2 }');

select * from t5;



