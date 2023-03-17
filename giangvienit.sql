-- 1 Xây dựng phần mềm quản lý khối lượng giảng dạy của giảng viên khoa cntt- trường cao đẳng nghề Đà Nẵng. 

create database khối_lượng_giảng_dạyIT;
use khối_lượng_giảng_dạyIT;

create table GVIT(
MaGV varchar(3) primary key,
TenGV varchar(15),
Gioitinh varchar(1),
SDT int(10),
DiaChi varchar(100)
);

create table khoiit(
MaKhoi varchar(5) primary key,
tenKhoiIt varchar(50)
);

create table MonIT(
MaMon varchar(7) primary key,
TenMon varchar(50),
MaKhoi varchar(5),
foreign key (makhoi) references khoiit(makhoi),
SoTC varchar(1),
MaGV varchar(3),
foreign key (magv) references gvit(magv)
);

create table chitietMIT(
MaCTMH varchar(2) primary key,
MaMon varchar(7),
foreign key (mamon) references monit(mamon),
soTietLT numeric(4),
soTietTH numeric(4),
tietkt numeric(4),
namhoc varchar(4),
hocky varchar(4)
);
create table lophoc(
Malop varchar(7) primary key,
TenLop varchar(20)
);

create table phonghoc(
Maphong varchar(5) primary key,
Tenphong varchar(20)

);

create table CTphonghoc(
mactph varchar(3) primary key,
Maphong varchar(5),
foreign key (maphong) references phonghoc(maphong),
Malop varchar(7),
foreign key(malop) references lophoc(malop),
MaMon varchar(7),
foreign key(mamon) references monit(mamon),
matg varchar(4),
foreign key (matg) references thoigian(matg),
ngay date
);

create table thoigian(
matg varchar(4) primary key,
TGBDHOC time,
TGKTHOC	 time,
sotiet int(11)
);
