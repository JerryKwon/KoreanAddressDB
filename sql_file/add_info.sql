CREATE TABLE ADD_INFO(
    man_num varchar2(25) not null,
    admn_d_code number(10) ,
    admn_d_nm varchar2(40) ,
    post_num varchar2(5) ,
    post_num_sri_num varchar2(3) ,
    mn_qt_deli_loc_nm varchar2(60) ,
    arch_th_list_bldg_nm varchar2(60),
    sgg_bldg_nm varchar2(60),
    shr_houz_whet number(1),
    chg_rsn_code varchar2(2)
) TABLESPACE ADDR_DATA_SPACE;


CREATE UNIQUE INDEX add_info_PK ON add_info
 ( man_num )
  TABLESPACE ADDR_INDEX_SPACE;

ALTER TABLE add_info ADD CONSTRAINT add_info_PK PRIMARY KEY(man_num) USING INDEX add_info_PK ;

ALTER TABLE add_info ADD CONSTRAINT add_info_FK FOREIGN KEY  (man_num) REFERENCES ADD_INFO(man_num);

COMMENT ON TABLE ADD_INFO IS '부가정보';

COMMENT ON COLUMN ADD_INFO.man_num IS '관리번호';
COMMENT ON COLUMN ADD_INFO.admn_d_code IS '행정동 코드';
COMMENT ON COLUMN ADD_INFO.admn_d_nm IS '행정동명';
COMMENT ON COLUMN ADD_INFO.post_num IS '우편번호';
COMMENT ON COLUMN ADD_INFO.post_num_sri_num IS '우편번호일련번호';
COMMENT ON COLUMN ADD_INFO.mn_qt_deli_loc_nm IS '다량배달처명';
COMMENT ON COLUMN ADD_INFO.arch_th_list_bldg_nm IS '건출물대장 건물명';
COMMENT ON COLUMN ADD_INFO.sgg_bldg_nm IS '시군구 건물명';
COMMENT ON COLUMN ADD_INFO.shr_houz_whet IS '공동주택여부';
COMMENT ON COLUMN ADD_INFO.chg_rsn_code IS '변경사유코드';

DROP TABLE ADD_INFO;

SELECT * FROM ADD_INFO;

SELECT COUNT(*) FROM ADD_INFO;