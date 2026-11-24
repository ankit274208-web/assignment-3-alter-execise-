-- =====================================================================
-- DATABASE CREATION --
-- =====================================================================

Drop database if exists DDL_Commands;
create DATABASE DDL_Commands;
use  DDL_Commands;

-- ======================================================================
-- TABLE 1: MY _TABLE 
-- ======================================================================

CREATE TABLE my_table(
id INT,
name VARCHAR(100) Not NULL,
age int NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ======================================================================
-- INSERT DATA INTO MY_TABLE
-- ======================================================================

INSERT INTO my_table (id, name, age) VALUES
(1, 'Rohit', 25),
(2, 'Sachin', 35),
(3, 'Vikas', 28);

-- ======================================================================
-- TABLE 2 : MY_TABLE2
-- ======================================================================

create table my_table2 (
    id int,
    description varchar (255) not null
);

-- ======================================================================
-- INSERT DATA INTO MY_TABLE2
-- ======================================================================

insert into my_table2 (id, description) values
(1, 'item 1' ),
(2, 'item 2' ),
(3, 'item 3' );

-- ======================================================================
-- DISPLAY TABLE DATA 
-- ======================================================================

select * from my_table;

select * from my_table2;

-- ======================================================================
-- ALTER TABLE COMMANDS 
-- ======================================================================

-- # 1 change column name to full_name

alter table my_table
change column name full_name varchar (100) not null;

-- # 2 modify age data type to bigint

alter table my_table
modify age bigint not null;

-- # 3 add email column 

alter table my_table
add column email varchar(100)not null;

-- # 4 add middle_name after full_name

alter table my_table
add column middle_name varchar (50) after full_name;

-- # 5 add emp_rank as fisrt column 

alter table my_table
add column emp_rank int first;

-- # 6 modify created_at to datetime

alter table my_table
modify created_at datetime;

-- # 7 modify description to text

alter table my_table2 
modify description text;

-- # 8 modify full_name to allow null

alter table my_table
modify column full_name varchar(255) not null;

-- # 9 add primary key 

alter table my_table
add primary key (id);

-- # 10 drop middle_name column 

alter table my_table
drop column middle_name;

-- # 11 rename email to email_add

alter table my_table
rename column email to email_add;

-- # 12 modify age to allow null

alter table my_table 
modify age int null;

-- # 13 add foreign key constraint

alter table my_table2
add constraint fk_id
foreign key (id)
references my_table(id);

-- # 14 drop foreign key constraint

alter table my_table2
drop foreign key fk_id;

-- # 15 modify full_name size to varchar (200)

alter table my_table
modify full_name varchar (200) not null;

-- # 16 drop table my_table2 

drop table my_table2;

-- # 18 drop primary key 

alter table my_table
drop primary key;

-- # 19 drop age column 

alter table my_table 
drop column age;

-- # 20 drop database

drop database ddl_commands;













