options(load=-1,errors=-1)
load data
infile 'C:\Users\kwon2\Desktop\db_source\address\Busan.txt'
infile 'C:\Users\kwon2\Desktop\db_source\address\Chungbuk.txt'
infile 'C:\Users\kwon2\Desktop\db_source\address\Chungnam.txt'
infile 'C:\Users\kwon2\Desktop\db_source\address\Daegu.txt'
infile 'C:\Users\kwon2\Desktop\db_source\address\Daejeon.txt'
infile 'C:\Users\kwon2\Desktop\db_source\address\Gangwon.txt'
infile 'C:\Users\kwon2\Desktop\db_source\address\Gwangju.txt'
infile 'C:\Users\kwon2\Desktop\db_source\address\Incheon.txt'
infile 'C:\Users\kwon2\Desktop\db_source\address\Jeju.txt'
infile 'C:\Users\kwon2\Desktop\db_source\address\Jeonbuk.txt'
infile 'C:\Users\kwon2\Desktop\db_source\address\Jeonnam.txt'
infile 'C:\Users\kwon2\Desktop\db_source\address\Kyeonggi.txt'
infile 'C:\Users\kwon2\Desktop\db_source\address\Kyeongbuk.txt'
infile 'C:\Users\kwon2\Desktop\db_source\address\Kyeongnam.txt'
infile 'C:\Users\kwon2\Desktop\db_source\address\Sejong.txt'
infile 'C:\Users\kwon2\Desktop\db_source\address\Seoul.txt'
infile 'C:\Users\kwon2\Desktop\db_source\address\Ulsan.txt'

append
into table address
fields terminated by '|' optionally enclosed by '"'
trailing nullcols
(
	man_num ,
    road_nm_code ,
    umd_sri_num ,
    base_whet ,
    bldg_pr_num ,
    bldg_sc_num ,
    bas_dist_num ,
    chg_rsn_code ,
    post_date ,
    umd_nm_rom ,
    chg_bf_road_nm_addr ,
    dtal_addr_give_whet 
)