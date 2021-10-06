drop table if exists course;
drop table if exists instructor;

create table instructor
(
	ID varchar,
	first_name varchar not null,
	last_name varchar not null,
	phone_number varchar,
	email varchar,
	primary key (ID),
	unique (first_name, last_name),
	unique (phone_number),
	unique (email)
);
​
create table course
(
	ID varchar,
	name varchar not null,
	sec varchar,
	semester varchar,
	year numeric,
	instructor_id varchar not null,
	primary key (ID, sec, semester, year),
	foreign key (instructor_id) references instructor (ID) on update cascade on delete cascade
);
	
​
insert into instructor values ('01','Jeff','Hamrick','000-0001','jeff@usfca.edu');
insert into instructor values ('02', 'Terence','Parr','000-0002','terrence@usfca.edu');

--------------error, primary key should be unique (same id as previous)-------------------------
insert into instructor values ('01', 'Michael','Ruddy','000-0003','michael@usfca.edu');
------------------------------------------------------------------------------------------------

-------------- error, unqiue key should be unique (same email as previous)----------------------
insert into instructor values ('03', 'Michael','Ruddy','000-0003','jeff@usfca.edu');
------------------------------------------------------------------------------------------------

insert into instructor values ('03', 'Michael','Ruddy','000-0003','michael@usfca.edu');


insert into course values ('msds504','Stats','1','Summer',2021,'01');
insert into course values ('msds692','Data Acquisition','1','Fall',2021,'02');
insert into course values ('msds692','Data Acquisition','2','Fall',2021,'02');
insert into course values ('msds610','Communication','1','Fall',2021,'03');

-------------- error, instructor table does not have ID'04' right now--------------------------- 
insert into course values ('msds691', 'Database', '2', 'Fall', 2021, '04'); 
