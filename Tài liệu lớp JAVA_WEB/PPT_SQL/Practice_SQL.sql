--câu 2:
select * from dm_nguoi_dung
where upper(TEN_NGUOI_DUNG) like upper('n%');

--câu 3: 
select 
	t1.*
from dm_nguoi_dung as t1
where NGAY_NHAP  
	= (select min(NGAY_NHAP) from dm_nguoi_dung)
;

select 
	min(NGAY_NHAP) as ngay_nhap_nho_nhat
from dm_nguoi_dung as ghghg
;

--câu 4: 
select  
 dnd.MA_PHONG_BAN,
 count(*) as SO_LUONG_NGUOI_DUNG
from dm_nguoi_dung as dnd 
group by dnd.MA_PHONG_BAN 
order by count(*) desc
;

--câu 5:
select   
 t.gioi_tinh, sum(t.so_luong) as so_luong
from
(
	select 
		case 
			when dnd.GIOI_TINH = 0 then 'Nam'
			when dnd.GIOI_TINH = 1 then 'Nữ'
			else 'Chưa xác định'
		end as GIOI_TINH,
		count(*) SO_LUONG
	from dm_nguoi_dung as dnd 
	group by GIOI_TINH 
) as t
group by t.so_luong
;

update dm_nguoi_dung set gioi_tinh=0
where gioi_tinh = 1
limit 5;
update dm_nguoi_dung set gioi_tinh= 1
where gioi_tinh is null 
limit 7;

--câu 6:
select 
	dnd.*
from dm_nguoi_dung as dnd 
where length(MAT_KHAU) <=3;

--câu 7:
select 
 yctk.ID_LOAI_YEU_CAU,
 dlyc.TEN_LOAI_YEU_CAU,
 count(*) as SO_LUONG
from yeu_cau_trinh_ky as yctk 
	inner join dm_loai_yeu_cau as dlyc  
		on yctk.ID_LOAI_YEU_CAU  = dlyc.ID
group by 
	yctk.ID_LOAI_YEU_CAU, 
	dlyc.TEN_LOAI_YEU_CAU
;

--Câu 8:
select 
	yctk.TRANG_THAI_YEU_CAU,
	dttyc.TEN_KET_QUA_XU_LY,
	count(*) as SO_LUONG
from yeu_cau_trinh_ky as yctk 
		inner join dm_trang_thai_yeu_cau as dttyc
		on yctk.TRANG_THAI_YEU_CAU  = dttyc.ID 
group by yctk.TRANG_THAI_YEU_CAU,
	  dttyc.TEN_KET_QUA_XU_LY
	  ;
--Câu 9:
select 
	row_number() over (order by yctk.ID) as "STT",
	yctk.ID as "Số yêu cầu",
	yctk.MA_NGUOI_NHAP as "Người yêu cầu",
	to_char(yctk.NGAY_NHAP,'dd/MM/yyyy') as "Ngày yêu cầu",
	yctk.TEN_DU_AN as "Tiêu đề",
	yctk.TOM_TAT_NOI_DUNG as "Tóm tắt nội dung",
	dttyc.TEN_KET_QUA_XU_LY as "Trạng thái"
	
from yeu_cau_trinh_ky as yctk 
	 inner join dm_trang_thai_yeu_cau as dttyc 
	 	on yctk.TRANG_THAI_YEU_CAU  = dttyc.ID
;












