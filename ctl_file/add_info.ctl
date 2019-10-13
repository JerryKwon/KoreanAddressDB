options(load=-1,errors=-1)
load data
infile 'C:\Users\kwon2\Desktop\db_source\add_info\Busan.txt'
infile 'C:\Users\kwon2\Desktop\db_source\add_info\Chungbuk.txt'
infile 'C:\Users\kwon2\Desktop\db_source\add_info\Chungnam.txt'
infile 'C:\Users\kwon2\Desktop\db_source\add_info\Daegu.txt'
infile 'C:\Users\kwon2\Desktop\db_source\add_info\Daejeon.txt'
infile 'C:\Users\kwon2\Desktop\db_source\add_info\Gangwon.txt'
infile 'C:\Users\kwon2\Desktop\db_source\add_info\Gwangju.txt'
infile 'C:\Users\kwon2\Desktop\db_source\add_info\Incheon.txt'
infile 'C:\Users\kwon2\Desktop\db_source\add_info\Jeju.txt'
infile 'C:\Users\kwon2\Desktop\db_source\add_info\Jeonbuk.txt'
infile 'C:\Users\kwon2\Desktop\db_source\add_info\Jeonnam.txt'
infile 'C:\Users\kwon2\Desktop\db_source\add_info\Kyeonggi.txt'
infile 'C:\Users\kwon2\Desktop\db_source\add_info\Kyeongbuk.txt'
infile 'C:\Users\kwon2\Desktop\db_source\add_info\Kyeongnam.txt'
infile 'C:\Users\kwon2\Desktop\db_source\add_info\Sejong.txt'
infile 'C:\Users\kwon2\Desktop\db_source\add_info\Seoul.txt'
infile 'C:\Users\kwon2\Desktop\db_source\add_info\Ulsan.txt'

append
into table add_info
fields terminated by '|' optionally enclosed by '"'
trailing nullcols
(
	man_num ,
    admn_d_code ,
    admn_d_nm ,
    post_num ,
    post_num_sri_num ,
    mn_qt_deli_loc_nm ,
    arch_th_list_bldg_nm ,
    sgg_bldg_nm ,
    shr_houz_whet,
    chg_rsn_code 
)