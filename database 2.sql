create database government1;
use government1;

create table executive1(exe_id int primary key,
                       arm_name varchar(100) not null,
                       key_function varchar(100) not null,
                       appointment_date date not null,
                       position_of_arm varchar(100) not null
                       );

create table legislature1(leg_id int primary key,
                       arm_name varchar(100) not null,
                       key_fuction varchar(100) not null,
                       appointment_date date not null,
                       position_of_arm varchar(100) not null
                       );
                       
create table judiciary1(jud_id int primary key,
                       arm_name varchar(100) not null,
                       key_function varchar(255) not null,
                       appointment_date date not null,
                       position_of_arm varchar(100) not null
                       );
                                    
select * from executive1;
select * from legislature1;
select * from judiciary1;