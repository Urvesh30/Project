create database RMS;
use RMS;

create table T_Info
(T_ID int primary key, T_Name varchar(40), Source varchar(30), Destination varchar(30), Stops int, Type varchar(20), Operator varchar(40));

insert into T_Info values
(22221, "NZM Rajdhani Express", "CSMT", "NZM", 9, "Rajdhani", "Central Railways"),
(15017, "Kashi Express", "LTT", "GKP", 68, "Express", "North Eastern Railways"),
(17057, "Devagiri Express", "CSMT", "LPI", 29, "Express", "South Central Railways"),
(12050,	"GATIMAAN EXP",	"NZM", "VGLJ", 4, "Superfast", "West Central Railways"),
(13005, "HWH ASR MAIL", "HWH", "ASR", 56, "Express", "Eastern Railways"),
(12417, "Prayagraj Express", "PRYJ", "NDLS", 5, "Express", "North Central Railways"),
(12267, "Hapa Duronto", "MMCT", "HAPA", 5, "Superfast", "Western Railways"),
(12290, "Csmt Duronto", "NGP", "CSMT", 4, "Superfast", "Central Railways"),
(22919, "ADI HUMSAFAR", "MAS", "ADI", 14, "Superfast", "Southern Railways"),
(22177, "MAHANAGARI EXP", "CSMT", "BSB", 29, "Superfast", "North Central Railways"),
(11059, "Chhapra Express", "LTT", "CPR", 24, "Express", "North Central Railways"),
(22170, "RKMP HUMSAFAR", "SRC", "RKMP", 15, "Superfast", "West Central Railways"),
(16022, "Kaveri Express", "MYS", "MAS", 21, "Express", "Southern Railways"),
(22142, "PUNE HUMSAFAR", "NGP", "PUNE", 9, "Superfast", "Central Railways"),
(22645, "AHILYA NAGARI SF Express", "INDB", "BZA", 20, "Express", "Western Railways"),
(12919, "Malwa SF", "INDB", "SVDK", 47, "Express", "Western Railways"),
(12791, "Danapur SF", "SC", "DNR", 28, "Superfast", "South Central Railways"),
(12976, "Jaipur-Mysuru SF Express", "JP", "KSR", 38, "Superfast", "North Western Railways"),
(13045, "MayuRakshi Express", "HWH", "DGHR", 26, "Express", "Eastren Railways"),
(12826, "Jharkhand Sampark Kranti Express", "ANVT", "RNC", 8, "Express", "South Eastern Railways"),
(15227, "MUZAFFARPUR Express", "SMVB", "MFP", 34, "Express", "East Central Railway Zone"),
(16317, "Himsagar Express", "CAPE", "SMVK", 65, "Express", "Southern Railways"),
(15909, "AVADH ASSAM Express", "DBRG", "LGH", 9, "Express", "Northeast Frontier Railways"),
(22812, "Bhubaneshwar RJH Express", "BBS", "NDLS", 13, "Superfast", "East Coast Railways"),
(12801, "Purushottam Express", "PURI", "NDLS", 30, "Superfast", "East Coast Railways"),
(12509, "Kaziranga Superfast Express", "GHY", "SMVB", 39, "Superfast Express", "Northeast Frontier Railways"),
(13131, "Mitali Express", "NJP", "DHCA", 3, "AC Express", "Northeast Frontier Railways"),
(20670, "Vande Bharat", "PUNE", "UBL", 6, "AC Superfast", "South Western Railways"),
(12113, "Garib Rath Express", "PUNE", "NGP", 11, "Garib Rath", "Central Railways"),
(22461, "Shri Shakti AC SF Express", "NDLS", "SMVK", 6, "AC Superfast", "Northern Railways"),
(16031, "Andaman Express", "MAS", "SMVK", 69, "Express", "Southern Railways"),
(12951, "Tejas Rajdhani", "MMCT", "NDLS", 6, "Superfast", "Western Railways"),
(14853, "Marudhar Express", "BCY", "JU", 37, "Express",  "North Western Railways"),
(17659, "Kakatiya Express", "SC", "BDCR", 23, "Express", "South Central Railways"),
(13018, "Ganadevta Express", "AZ", "HWH", 13, "Express", "Eastern Railways"),
(12315, "Ananya Express", "KOAA", "UDZ", 20, "Express", "Eastern Railways"),
(18477, "Kalinga Utkal Express", "PURI", "YNRK", 75, "Express", "East Coast Railways"),
(14620, "Tripura Sundari Express", "FZR", "AGTL", 30, "Express", "Northern Railways"),
(13403, "Vananchal Express", "RNC", "BGP", 25, "Express", "Eastern Railways"),
(12645, "Millennium SF Express", "ERS", "NZM", 26, "Superfast", "Southern Railways"),
(15027, "Maurya Express", "SBP", "GKP", 53, "Express", "North Eastern Railways"),
(14053, "Himachal Express", "DLI", "DLPC", 23, "Express", "Northern Railways"),
(14088, "Runicha Express", "JSM", "DLI", 24, "Express", "Northern Railways"),
(22321, "Hool Express", "HWH", "SURI", 9, "Express", "Eastern Railways"),
(14701, "Amrapur Aravali Express", "SGNR", "BDTS", 52, "Express", "North Western"),
(22184, "Saket SF Express", "AYC", "LTT", 17, "Superfast", "Central Railways"),
(15083, "Utsarg Express", "CPR", "FBD", 33, "Express", "North Eastern Railways"),
(12758, "Kaghaznagar SF Express", "SKZR", "SC", 14, "Superfast", "South Central Railways"),
(11401, "Nandigram Express", "CSMT", "BPQ", 27, "Express", "Central Railways"),
(13009, "Doon Express", "HWH", "YNRK", 67, "Express", "Eastern Railways");

select * from T_Info;

create table E_Info(E_Id int not null,T_ID int, Version varchar(20), Max_Speed varchar(30),  FOREIGN KEY
(T_ID) REFERENCES T_Info(T_ID));

show tables;
desc T_info;

insert into E_Info values(14527, 22221, "WAP-7", "160kmph");

select * from E_Info;

alter table E_Info
add column Shed varchar(30);

insert into E_Info(E_Id,version, max_speed) values (17885, "WAP-7", "160 kmph");

update E_Info
set
Shed="Kalyan",
Shed="Kalyan";

alter table E_Info
add column Type varchar(30);

insert into E_Info values(24586, 17057, "WDP-4", "150kmph", "Diesel", "Kalyan"),
(35429, 12050, "WAP-5", "200kmph", "Electric", "Kalyan"),
(24116, 12113, "WAP-7", "160kmph", "Electric", "Kalyan"),
(14588, 12267, "WAP-7", "160kmph", "Electric", "Kalyan"),
(27731, 12290, "WAP-7", "160kmph", "Electric", "Kalyan"),
(36145, 12315, "WAP-7", "160kmph", "Electric", "Kalyan"),
(35722, 12417, "WAP-7", "160kmph", "Electric", "Kalyan"),
(24819, 12509, "WAP-7", "160kmph", "Electric", "Kalyan"),
(34965, 12645, "WAP-7", "160kmph", "Electric", "Kalyan"),
(17898, 12758, "WAP-7", "160kmph", "Electric", "Kalyan"),
(28439, 12791, "WAP-7", "160kmph", "Electric", "Kalyan"),
(19271, 12801, "WAP-7", "160kmph", "Electric", "Kalyan"),
(27681, 12826, "WAP-7", "160kmph", "Electric", "Kalyan"),
(37496, 12919, "WAP-7", "160kmph", "Electric", "Kalyan");

select * from E_Info;

update E_Info
set
T_id=11059
where E_Id=17885;

update E_Info
set Type="Electric"
where E_Id=14527;

update E_Info
set Type="Electric"
where E_Id=17885;

select * from E_Info;
select * from T_Info;

insert into E_Info values(42101, 12951, "WAP-7", "160kmph", "Electric", "Kalyan"),
(37844, 12976, "WAP-7", "160kmph", "Electric", "Kalyan"),
(38856, 13005, "WAP-7", "160kmph", "Electric", "Kalyan"),
(45102, 13009, "WAP-7", "160kmph", "Electric", "Kalyan"),
(25478, 13018, "WAP-7", "160kmph", "Electric", "Kalyan"),
(27712, 13045, "WAP-7", "160kmph", "Electric", "Kalyan"),
(15774, 13131, "WAP-7", "160kmph", "Electric", "Kalyan"),
(45200, 13403,"WAP-7", "160kmph", "Electric", "Kalyan"),
(19777, 14053, "WAP-7", "160kmph", "Electric", "Kalyan"),
(47236, 14088, "WAP-7", "160kmph", "Electric", "Kalyan"),
(38697, 14620, "WAP-7", "160kmph", "Electric", "Kalyan"),
(25478, 14701, "WAP-7", "160kmph", "Electric", "Kalyan"),
(43101, 14853, "WAP-7", "160kmph", "Electric", "Kalyan"),
(18759, 15017, "WAP-7", "160kmph", "Electric", "Kalyan"),
(24455, 15027, "WAP-7", "160kmph", "Electric", "Kalyan"),
(35466, 15083, "WAP-7", "160kmph", "Electric", "Kalyan");


create table S_Info(S_Id int not null, T_Id int, S_Category varchar(20), Status varchar(30), foreign key (T_Id) references T_Info(T_Id));
show tables;
drop table S_Info;

create table S_Info(S_Id int not null, S_Category varchar(20), Status varchar(30));

--- Altering S_Info columns
alter table S_Info
change column S_Id S_Name varchar(50);

alter table S_Info
change column Status Platforms int;

select * from E_Info;
select * from T_Info;
desc S_Info;
desc E_Info;

insert into S_Info values
("Kalyan", "A", 8),
("Chhatrapati Shivaji Maharaj Terminus", "A1", 18),
("Ahmedabad", "A1", 6),
("Chhapra", "A", 5),
("Ayodhya", "A", 4),
("Nagpur", "A1", 7),
("Secundrabad", "A1", 6),
("Hazur Saheb Nanded", "A", 7),
("Gorakhpur", "A", 8),
("New Delhi", "A1", 12),
("Rani Kamlapati", "A1", 7),
("Indore", "A1", 8),
("KSR Bengaluru", "A1", 8),
("MGR Chennai", "A1", 7),
("Lokmanya Tilak Terminus", "A", 7),
("Madgoan", "A", 5),
("Patna", "A1", 6),
("Amritsar", "A1", 8),
("Shri Vaishno Devi Katra", "A", 6),
("Aurangabad", "A1", 5),
("Varanasi", "A", 8),
("Howrah", "A1", 23),
("Guwahati", "A1", 8),
("Bandra Terminus", "A1", 6),
("Mumbai Central", "A", 6),
("Veerangana Lakshmibai Jhansi", "A", 5),
("Hazrat Nizamuddin", "A1", 10),
("YogNagri Rishikesh", "A", 5),
("Bhuvaneshwar", "A1", 6);

select * from S_Info;
select * from E_Info;
select * from T_Info;

--- Updating the E_Info Table
update E_Info 
set Version = "WAP-4"
where T_Id like "13%" ;

update E_Info
set Type_ = "Electric",
Shed = "Tughlakabad"
where Version = "WAP-7";

update E_Info
set 
Shed = "Itarsi"
where E_Id like "3%";

select * from E_Info;

update E_Info
set 
Shed = "Jhansi"
where Version = "WAP-4";

update E_Info
set Type_ = "Diesel",
Shed = "Howrah",
Max_Speed = "150kmph",
Version = "WAP-7"
where E_Id like "4%";

update E_Info
set MAX_SPEED = "140kmph"
where Version = "WAP-4";

update E_Info
set 
Shed = "Kalyan"
where E_Id like "1%" and Type_ = "Electric";

--- select all the Trains operated by Western Railways
select T_name, Type from T_Info
where Operator ="Western Railways";

---  select all trains operated by eastern Railways and are of type Express
select T_Id,T_name,Type from T_Info
where 
Operator ="Eastern Railways" and 
Type ="Express";




--- Changing column name in E_Info table
alter table E_Info
change column Shed Type_ varchar(30);

alter table E_Info
change column Type Shed varchar(30);

--- Using Order by Class to arrange table data in ascending order of no. of stops
select T_Id, T_Name, Stops from T_Info
order by Stops ASC;

--- Selecting Top 5 Stations with most stops
select * from T_Info 
order by stops desc limit 5;

--- Displaying all the Operators
select distinct operator as  ALL_Operators from T_Info;

select count(operator) as No_0f_Operators from T_Info;

update T_Info
set Operator ="Eastern Railways"
where Operator ="Eastren Railways";

select * from T_Info;

update T_Info 
set operator ="North Western Railways"
where Operator ="North Western";

update T_Info 
set operator ="East Central Railways"
where Operator ="East Central Railway Zone";

update E_Info
set 
Type_ = "Diesel",
Version = "WDP-4",
Max_Speed = "150kmph"
where 
Shed = "Tughlakabad";

update E_Info 
set 
Type_ = "Diesel"
where 
Max_Speed = "150kmph";

select * from E_Info;
select * from S_Info;

alter table S_Info
add column Code varchar(20);

select distinct shed as No_of_Sheds from E_Info;

--- Count of No of Stations
	

insert into S_Info(Code) values
("KYN"), ("CSMT"), ("ADI"), ("CPR"), ("AYC"), ("NGP"), ("SC"), ("NED"), ("GKP"), 
("NDLS"), ("RKMP"), ("INDB"), ("SBC"), ("MAS"), ("LTT"), ("MAO"), ("PNBE"),
("ASR"), ("SMVD Katra"), ("AWB"), ("BSB"), ("HWH"), ("GHY"),
("BDTS"), ("MMCT"), ("VGLJ"), ("NZM"), ("YNRK"), ("BBS");

alter table S_Info
drop column code;

desc T_Info;
desc E_Info;
desc S_Info;

Delete from S_Info
where S_Name is null;

select * from S_Info;

select T_Info.T_Id, T_Name, Source, Destination, Type, Operator, E_Id, Version, Type_, Shed from T_Info
inner join
E_Info
on T_Info.T_Id=E_Info.T_ID;

select T_Info.T_Id, T_Name, Type, Operator, E_Id, Version, Shed from T_Info
left join
E_Info
on T_Info.T_Id=E_Info.T_ID;

select E_Info.E_Id, Version, S_Name, S_Category
from
E_Info 
right join 
S_Info
on E_Info.E_Id=S_Info.E_Id;

alter table E_Info
add constraint primary key(E_Id);

select * from E_Info
where E_Id like "2%";

delete from E_Info
where E_Id = 25478 and Shed = "Tughlakabad";

alter table S_Info
add column T_Id int;

alter table S_Info
add constraint Foreign key(T_Id) references T_Info(T_Id);

select T_Info.T_Id, E_Info.E_Id, Type, Max_Speed, S_Name
from T_Info 
left join 
E_Info
on T_Info.T_Id=E_Info.T_ID
left join 
S_Info
on E_Info.E_Id=S_Info.E_ID;

select T_Name, Type, Type_ 
from T_Info cross join E_Info;