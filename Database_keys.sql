
create table instructor
	(ID varchar,
	 first_name varchar not null,
   MI varchar,
   last_name varchar not null,
	 primary key (ID),
   unique (first_name, last_name),
   unique (MI)
	);

create table course
	(ID	varchar,
   name varchar not null,
	 instructor_id	varchar not null,
	 sec varchar,
	 semester	varchar,
	 year	numeric,
	 primary key (ID, sec, semester, year),
	 foreign key (instructor_id) references instructor (ID),
   unique (name)
	);


insert into instructor values ('1000', 'Daniel', 'Jeff', 'Hamrick');
insert into instructor values ('1001', 'Terence', null, 'Parr');
insert into instructor values ('1002', 'Micheal', 'jeff', 'Hamrick');  -- Not allowed

insert into course values ('MSDS680', 'Stats','1000', '1', 'summer', 2021);

insert into course values ('MSDS691', 'Data Acquisition','1001', '1', 'Fall', 2021);
insert into course values ('MSDS691', 'Data Acquisition','1001', '2', 'Fall', 2021);

insert into course values ('MSDS600', 'Communication','1002', '1', 'Fall', 2021); -- Error
