create database manasa_s_insurance;
use manasa_s_insurance;

create table person
(
driver_id varchar(10),

name varchar(20),
address varchar(30),
primary key(driver_id)
);
create table car
(
reg_num int,
model varchar(30),
year varchar(30),
primary key(reg_num)
);
create table owns
(
driver_id varchar(10),
reg_num varchar(20),
primary key(driver_id, reg_num),
foreign key(driver_id) references person(driver_id),
foreign key(reg_num) references car(reg_num)
);0
create table accident 
(
report_num int(10),
accident_data int(10),
location varchar(10),
primary key(report_num)
);
create table participated
(
driver_id varchar(10),
reg_num int(10),
report_num int(10),
damage_amount varchar(10)
);

insert into person values('a02','manasa','bangalore');
insert into person values('a03','namya','goa');
insert into person values('a04','aditi','chennai');
insert into person values('a05','ria','mysore');

insert into car values('b02','mercedes','2001');
insert into car values('b03','audi','2002');
insert into car values('b04','bmw','2003');
insert into car values('b05','honda','2004');

insert into own values('a02','b02');
insert into own values('a03','b03');
insert into own values('a04','b04');
insert into own values('a05','b05');

insert into accident values('11','2003-01-01','mysore road');
insert into accident values('12','2003-01-02','tumkur');
insert into accident values('13','2003-01-03','bangalore');
insert into accident values('14','2003-01-04','goa');

insert into participated values('a02','b02','10','10,000');
insert into participated values('a03','b03','20','20,000');
insert into participated values('a04','b04','30','30,000');
insert into participated values('a05','b05','40','40,000');

select

