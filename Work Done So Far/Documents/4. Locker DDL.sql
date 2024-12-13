/*
create table deliveryBox(
	lockerID serial primary key,
	address varchar(255)
);

create table nearByLocations(
	locationID serial primary key,
	lockerID int,
	nearByLockerID int,
	constraint fk_lockerID foreign key (lockerID) references deliveryBox(lockerID) on delete cascade,
	constraint fk_nearByLockerID foreign key (nearByLockerID) references deliveryBox(lockerID) on delete cascade
);
drop table nearByLocations

create table compartmentState(
	compStateID serial primary key,
	compState varchar(255)
);

create table compartmentCategory(
	compCategoryID serial primary key,
	compCategory varchar(255)
);

create table compartment(
	compID Serial primary key,
	lockerID int,
	compStateID int,
	compCategoryID int,
	isLocked boolean,
	otp varchar(255),
	constraint fk_lockerID foreign key (lockerID) references deliveryBox(lockerID) on delete cascade,
	constraint fk_compStateID foreign key (compStateID) references compartmentState(compStateID) on delete cascade,
	constraint fk_compCategoryID foreign key (compCategoryID) references compartmentCategory(compCategoryID) on delete cascade
);



insert into deliveryBox(address) values('Faisal Town A Block');
insert into deliveryBox(address) values('Faisal Town B Block');
insert into deliveryBox(address) values('Faisal Town C Block');
insert into deliveryBox(address) values('Faisal Town D Block');
insert into deliveryBox(address) values('Faisal Town E Block');
insert into deliveryBox(address) values('Faisal Town F Block');

insert into nearByLocations(lockerID, nearByLockerID) values(1, 3);
insert into nearByLocations(lockerID, nearByLockerID) values(2, 4);
insert into nearByLocations(lockerID, nearByLockerID) values(3, 5);
insert into nearByLocations(lockerID, nearByLockerID) values(4, 6);

insert into compartmentState(compState) values('Reserved');
insert into compartmentState(compState) values('Empty');
insert into compartmentState(compState) values('Acquired');


insert into compartmentCategory(compCategory) values('Small');
insert into compartmentCategory(compCategory) values('Medium');
insert into compartmentCategory(compCategory) values('Large');

insert into compartment(lockerID, compStateID, compCategoryID, isLocked, otp) values(1, 2, 1, true, '0');
insert into compartment(lockerID, compStateID, compCategoryID, isLocked, otp) values(1, 2, 1, true, '0');
insert into compartment(lockerID, compStateID, compCategoryID, isLocked, otp) values(1, 2, 1, true, '0');
insert into compartment(lockerID, compStateID, compCategoryID, isLocked, otp) values(1, 2, 2, true, '0');
insert into compartment(lockerID, compStateID, compCategoryID, isLocked, otp) values(1, 2, 2, true, '0');
insert into compartment(lockerID, compStateID, compCategoryID, isLocked, otp) values(1, 2, 3, true, '0');

*/
select * from deliveryBox;
select * from nearByLocations;
select * from compartment;






















