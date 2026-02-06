create database ghana_HB;
use ghana_HB;

create table regional_tb(regional_id int primary key unique auto_increment,  
                         regional_name varchar(255) not null,
                         regional_capital varchar(255) not null,
                         regional_director varchar(255) not null,
						 total_district int not null
                        );
                        
create table district_tb(district_id int primary key auto_increment not null,
                          district_name varchar(255) not null,
                          district_capital varchar(255) not null,
                          district_director varchar(255) not null,
                          regional_id int,
                          foreign key (regional_id) references regional_tb(regional_id)
                          );
 
 create table hospital_tb(hospital_id int primary key auto_increment,
						  hospital_name varchar(255) not null,
                          hospital_capacity varchar(255) not null,
                          hospital_location varchar(255) not null,
                          total_staff int not null,
                          total_department int not null,   
                          district_id int,
                          foreign key (district_id) references district_tb(district_id)
                          );

insert into regional_tb 
values
(1, "Greater Accra", "Accra","Dr. Victor Asare", 29 );

insert  regional_tb(regional_name, regional_capital, regional_director, total_district)
values
("Ashanti", "Kumasi", "Dr. Emmanuel tenkorang", 43),
("Central", "Cape Coast", "Dr. Akosua Agyeiwaa", 20 ),
("Eastern", "Koforidua", "Dr. Abena Agyapong", 33),
("Volta", "Ho", "Dr. Kwabena Adjei" , 18),
("Western", "Sekondi-Tarkoradi", "Dr. Micheal Asare", 14),
("Northern","Tamale","Dr. Abdul-Samed Adam", 16),	
("Upper East","Bolgatanga","Dr. Ibrahim Fuseini", 15),
("Upper west" ,	"Wa",	"Dr. Patrick K. Baffour", 11),
("Ahafo","Goaso","Dr. Frank Osei", 7),	
("Bono East","Techiman","Dr. Stephen Osei",11),
("Bono","Sunyani","Dr. Kofi Agyapong", 12),	
("Oti","Dambai","Dr. Nana Owusu", 8),
("Savannah","Damongo","Dr. Issahaku Abdul-Mumin", 7),	
("North East","Nalerigu","Dr. Peter Attafuah", 6),
("Western north", "Sefwi Wiaso", "Dr. kwasi Fosu", 9);


insert into district_tb (district_name, district_capital, district_director, regional_id)
values
('Accra Metropolitan', 'Accra', 'Dr. Naa Adjeley Adjetey', 1),
('Tema Metropolitan', 'Tema', 'Dr. Sally-Ann Ofori', 1),
('Kumasi Metropolitan', 'Kumasi', 'Dr. Francis Owusu', 2),
('Obuasi Municipal', 'Obuasi', 'Dr. Alex Sarpong', 2),
('Cape Coast Metropolitan', 'Cape Coast', 'Dr. Akosua Agyeiwaa', 3),
('Agona East', 'Nsaba', 'Dr. Kwaku Sarpong', 3),
('New Juaben North', 'Effiduase', 'Dr. Abena Owusu', 4),
('Akuapim South', 'Aburi', 'Dr. Samuel Agyemang', 4),
('Ho Municipal', 'Ho', 'Dr. Lord Mensah', 5),
('Ketu South', 'Denu', 'Dr. George Amegah', 5);


select * from regional_tb;
select * from district_tb;