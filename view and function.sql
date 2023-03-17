#hien thi giao vien day hoc dua tren bang chi tiet phong hoc
create view hienthi as
select tenphong,tenlop,tenGV,tenmon,tgbdhoc,tgkthoc,sotiet from phonghoc,gvit,lophoc,monit,ctphonghoc,thoigian where phonghoc.maphong=ctphonghoc.maphong
and lophoc.malop=ctphonghoc.malop and monit.mamon=ctphonghoc.mamon and monit.magv=gvit.magv and thoigian.matg=ctphonghoc.matg;

# hien thi thong tin giao vien day bao nhieu tiet
create view hienthisotietcuamonhoc as
select tengv,tenmon,tenkhoiit,sotietlt,sotietth,tietkt,namhoc,hocky from monit,gvit,chitietmit,khoiit where 
gvit.magv=monit.magv and chitietmit.mamon=monit.mamon and khoiit.makhoi=monit.makhoi;

# sotietltcuagiaovien
delimiter %%
CREATE FUNCTION `timsotietltcuagiaovien` (nhap_ma_gv varchar(3))
RETURNS INTEGER
BEGIN
declare a int;
set a= (select sum(sotietlt) as 'tong_sotietlt' 
from hienthisotietcuamonhoc,gvit 
where gvit.tengv=hienthisotietcuamonhoc.tengv and nhap_ma_gv=gvit.magv group by magv);
RETURN a ;
END;

delimiter %%
CREATE FUNCTION `timsotietthcuagiaovien` (nhap_ma_gv varchar(3))
RETURNS INTEGER
BEGIN
declare a int;
set a= (select sum(sotietth) as 'tong_sotietlt' 
from hienthisotietcuamonhoc,gvit 
where gvit.tengv=hienthisotietcuamonhoc.tengv and nhap_ma_gv=gvit.magv group by magv);
RETURN a ;
END;

delimiter ^^
CREATE FUNCTION `timsotietktcuagiaovien` (nhap_ma_gv varchar(3))
RETURNS INTEGER
BEGIN
declare b int;
set b= (select sum(tietkt) as'tong_sotiekt'
from hienthisotietcuamonhoc,gvit 
where gvit.tengv=hienthisotietcuamonhoc.tengv and nhap_ma_gv=gvit.magv group by magv);
RETURN b ;
END;

delimiter ^^
CREATE FUNCTION `tongsotietgvday` (nhap_ma_gv varchar(3),)
RETURNS INTEGER
BEGIN
declare lt,th,kt,tong int;
set kt= (select sum(tietkt) 
from hienthisotietcuamonhoc,gvit 
where gvit.tengv=hienthisotietcuamonhoc.tengv and nhap_ma_gv=gvit.magv group by magv);
set th= (select sum(sotietth) 
from hienthisotietcuamonhoc,gvit 
where gvit.tengv=hienthisotietcuamonhoc.tengv and nhap_ma_gv=gvit.magv group by magv);
set lt= (select sum(sotietlt)  
from hienthisotietcuamonhoc,gvit 
where gvit.tengv=hienthisotietcuamonhoc.tengv and nhap_ma_gv=gvit.magv group by magv);
set tong=kt+lt+th;
RETURN tong ;
END;
#sotietthcuagiaovien
drop view hienthisotietcuamonhoc;
drop view hienthi;


