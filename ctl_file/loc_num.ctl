options(load=-1,errors=-1)
load data
infile 'C:\Users\kwon2\Desktop\db_source\loc_num\Busan.txt'
infile 'C:\Users\kwon2\Desktop\db_source\loc_num\Chungbuk.txt'
infile 'C:\Users\kwon2\Desktop\db_source\loc_num\Chungnam.txt'
infile 'C:\Users\kwon2\Desktop\db_source\loc_num\Daegu.txt'
infile 'C:\Users\kwon2\Desktop\db_source\loc_num\Daejeon.txt'
infile 'C:\Users\kwon2\Desktop\db_source\loc_num\Gangwon.txt'
infile 'C:\Users\kwon2\Desktop\db_source\loc_num\Gwangju.txt'
infile 'C:\Users\kwon2\Desktop\db_source\loc_num\Incheon.txt'
infile 'C:\Users\kwon2\Desktop\db_source\loc_num\Jeju.txt'
infile 'C:\Users\kwon2\Desktop\db_source\loc_num\Jeonbuk.txt'
infile 'C:\Users\kwon2\Desktop\db_source\loc_num\Jeonnam.txt'
infile 'C:\Users\kwon2\Desktop\db_source\loc_num\Kyeonggi.txt'
infile 'C:\Users\kwon2\Desktop\db_source\loc_num\Kyeongbuk.txt'
infile 'C:\Users\kwon2\Desktop\db_source\loc_num\Kyeongnam.txt'
infile 'C:\Users\kwon2\Desktop\db_source\loc_num\Sejong.txt'
infile 'C:\Users\kwon2\Desktop\db_source\loc_num\Seoul.txt'
infile 'C:\Users\kwon2\Desktop\db_source\loc_num\Ulsan.txt'

append
into table loc_num
fields terminated by '|' optionally enclosed by '"'
trailing nullcols
(
	man_num ,
    sri_num ,
    law_d_code ,
    city_prov_nm ,
    sgg_nm ,
    law_umd_nm ,
    law_vil_nm ,
    mt_whet ,
    loc_pr_num ,
    loc_sc_num ,
    rep_whet ,
    chg_rsn_code 
)