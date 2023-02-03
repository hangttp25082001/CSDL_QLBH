create database QLBH

use QLBH

create table Khachhang
(
	makhach varchar(10) primary key not null,
	hoten varchar(100) not null,
	dienthoai varchar(10) check (dienthoai like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	socmt varchar(12) check (socmt like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
);

create table Hanghoa
(
	mahang varchar(10) primary key not null,
	mota varchar(100) not null,
	trigia float not null,
	sotientrabandau float not null,
	makhach varchar(10) references Khachhang(makhach),
	tientramoithang float not null
);

create table Phieuthu
(
	sophieu varchar(10) primary key not null,
	mahang varchar(10) references Hanghoa(mahang) not null,
	makhach varchar(10) references Khachhang(makhach) not null,
	ngay smalldatetime not null,
	sotien float not null,
	loaiphieu varchar(1) check (loaiphieu like 'T' or loaiphieu like 'G')
);

insert into Khachhang(makhach,hoten,dienthoai,socmt)
values('kh01','Nguyen Van A','0357056089','012336542896')
insert into Khachhang(makhach,hoten,dienthoai,socmt)
values('kh02','Tran Dinh B','0241058596','045603210896')
insert into Khachhang(makhach,hoten,dienthoai,socmt)
values('kh03','Phan Thi C','0756058047','052132501254')
insert into Khachhang(makhach,hoten,dienthoai,socmt)
values('kh04','Cao Trung D','0456023048','035408960254')
insert into Khachhang(makhach,hoten,dienthoai,socmt)
values('kh05','Phi Nghia E','0354089656','035408960574')
create table DangNhap
(
TenDN varchar(50) primary key not null,
MatKhau varchar(100) null);

insert into DangNhap values ('abcd','1234')
insert into DangNhap values ('xyzt','2312')