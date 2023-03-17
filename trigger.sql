-- xoa giao vien:
create trigger Xoa_Giaovien
after delete 
on gvit
for each row
delete from monit where magv = old.magv;
delete from gvit where magv='07G';

set foreign_key_checks=0;


-- update giao vien 
delimiter $$
create trigger update_giaovien before  update
on gvit
for each row 
begin
update monit
set magv = new.magv 
where  magv = old.magv;
end $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tongsotietgvday`(inout nhap_ma_gv varchar(3), inout namhoccantim varchar(4), out tong int)
BEGIN
declare lt,th,kt int;
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
END

