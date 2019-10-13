options(load=-1,errors=-1)
load data
infile 'C:\Users\kwon2\Desktop\db_source\road_nm_code\road_nm_code.txt'
append
into table ROAD_NM_CODE
fields terminated by '|' optionally enclosed by '"'
trailing nullcols
(
	road_nm_code,
	road_nm,
    road_nm_rom,
    umd_sri_num,
    city_prov_nm,
    city_prov_nm_rom,
    sgg_nm,
    sgg_nm_rom,
    umd_nm,
    umd_nm_rom,
    umd_type,
    umd_code,
    use_whet,
    chg_rsn,
    chg_hist_info,
    post_date,
    expr_date
)