INSERT INTO gvit (MaGV, TenGV, Gioitinh,SDT, DiaChi) 
VALUES 	('01GV', 'Vo Thi Thuy Ha', 'Nu', '0702307667', 'Quang Binh'),
		('02GV', 'Dang Trung', 'Nam', '0702307', 'Quang Nam'),
		('03GV', 'Bui Thanh Toan', 'Nam', '0147258369', 'Da Nang'),
		('04GV', 'Truong Thu Hang', 'Nu', '0258369147', 'Da Nang'),
		('05GV', 'Phan Tran Thi Anh Thu', 'Nu', '0369258147', 'Binh Thuan'),
		('06GV', 'Tran Manh An ', 'Nam', '0123369258', 'Hue');
INSERT INTO khoiit (MaKhoi,tenKhoiIt) 
VALUES 	('K01', 'Cac mon chung'),
		('K02', 'Cac mon chuyen nganh');
        
INSERT INTO monit (MaMon,TenMon,MaKhoi,SoTC,MaGV) 
VALUES 	('MH01', 'Giao duc chinh tri', 'K01', '3', '01GV'),
		('MH02', 'Phap Luat', 'K01', '2', '04GV'),
		('MH03', 'Giao duc the chat', 'K01', '2', '06GV'),
		('MH04', 'Dai so tuyen tinh', 'K02', '3', '03GV'),
		('MH05', 'Cau truc may tinh', 'K02', '2', '03GV'),
		('MH06', 'Ky Thuat lap trinh', 'K02', '4', '05GV'),
		('MH07', 'lap trinh huong doi tuong', 'K02', '3', '02GV');
        
INSERT INTO chitietmit (MaCTMH,MaMon,soTietLT,soTietTH,tietkt,namhoc,hocky)
VALUES 	('01', 'MH01', '41', '29', '5','2022','HKI'),
		('02', 'MH02', '18', '10', '2','2022','HKII'),
		('03', 'MH03', '5', '51', '4','2022','HKII'),
		('04', 'MH04', '51', '23', '1','2022','HKI'),
		('05', 'MH05', '15', '29', '1','2021','HKII'),
		('06', 'MH06', '34', '54', '2','2021','HKI'),
		('07', 'MH07', '26', '45', '4','2021','HKII');
        
INSERT INTO lophoc (Malop, TenLop) 
VALUES 	('01L', 'PNV1'),
		('02L', 'PNV2'),
		('03L', 'PNV3'),
		('04L', 'PNV4');
        
INSERT INTOphonghoc (Maphong,Tenphong) 
VALUES 	('01P', 'Lap1'),
		('02P', 'lap2'),
		('03P', 'Lap3');

INSERT INTO ctphonghoc(mactph,Maphong,Malop, MaMon,matg,ngay) 
VALUES 	('1CT','01P', '01L', 'MH01', 'TGS1', '2022-10-22'),
		('2CT','02P', '02L', 'MH02', 'TGS2', '2022-10-22'),
		('3CT','03P', '03L', 'MH03', 'TGS3', '2022-10-22');
        
        
INSERT INTO thoigian (matg,TGBDHOC,TGKTHOC,sotiet) 
VALUES 	('TGS1', '08:00:00', '10:00:00', '2'),
		('TGS2', '10:00:00', '12:00:00', '2'),
		('TGS3', '08:00:00', '11:00:00', '3'),
		('TGC1', '13:30:00', '15:30:00', '2'),
		('TGC2', '15:30:00', '17:30:00', '2'),
		('TGC3', '13:30:00', '17:30:00', '4');
INSERT INTO `khối_lượng_giảng_dạyit`.`namhoc` (`manamhoc`, `namhoc`) 
VALUES 	('nh1', '2019'),
		('nh2', '2020'),
		('nh3', '2021'),
		('nh4', '2022');


        


        




