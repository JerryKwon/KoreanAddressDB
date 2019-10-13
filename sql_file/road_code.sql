CREATE TABLE ROAD_CODE(
    road# varchar2(12) not null,
    road_nm varchar2(200) not null,
    road_nm_rom varchar2(200) not null,
    umd_sri_num varchar2(2) not null,
    city_prov_nm varchar2(40) not null,
    city_prov_nm_rom varchar2(80) not null,
    sgg_nm varchar2(40),
    sgg_nm_rom varchar2(80),
    umd_nm varchar2(40),
    umd_nm_rom varchar2(80),
    umd_type varchar2(1) not null,
    umd# varchar2(3),
    use_whet varchar2(1) not null,
    chg_rsn varchar2(1),
    chg_hist_info varchar2(14),
    post_date varchar2(8),
    expr_date varchar2(8)
)
TABLESPACE ADDR_DATA_SPACE;

CREATE UNIQUE INDEX road_code_PK ON road_code
 ( road#,umd_sri_num )
  TABLESPACE ADDR_INDEX_SPACE

ALTER TABLE road_code ADD CONSTRAINT road_code_PK PRIMARY KEY (road#,umd_sri_num) USING INDEX road_code_PK;

COMMENT ON TABLE ROAD_CODE IS '도로명코드';

COMMENT ON COLUMN ROAD_CODE.road# IS '도로명코드';
COMMENT ON COLUMN ROAD_CODE.road_nm IS '도로명';
COMMENT ON COLUMN ROAD_CODE.road_nm_rom IS '도로명로마자';
COMMENT ON COLUMN ROAD_CODE.umd_sri_num IS '읍면동일련번호';
COMMENT ON COLUMN ROAD_CODE.city_prov_nm IS '시도명';
COMMENT ON COLUMN ROAD_CODE.city_prov_nm_rom IS '시도 로마자';
COMMENT ON COLUMN ROAD_CODE.sgg_nm IS '시군구명';
COMMENT ON COLUMN ROAD_CODE.sgg_nm_rom IS '시군구 로마자';
COMMENT ON COLUMN ROAD_CODE.umd_nm IS '읍면동명';
COMMENT ON COLUMN ROAD_CODE.umd_nm_rom IS '읍면동 로마자';
COMMENT ON COLUMN ROAD_CODE.umd_type IS '읍면동구분';
COMMENT ON COLUMN ROAD_CODE.umd# IS '읍면동코드';
COMMENT ON COLUMN ROAD_CODE.use_whet IS '사용여부';
COMMENT ON COLUMN ROAD_CODE.chg_rsn IS '변경사유';
COMMENT ON COLUMN ROAD_CODE.chg_hist_info IS '변경이력정보';
COMMENT ON COLUMN ROAD_CODE.post_date IS '고시일자';
COMMENT ON COLUMN ROAD_CODE.expr_date IS '말소일자';

SELECT * FROM ALL_TAB_COMMENTS WHERE TABLE_NAME='ROAD_CODE';

SELECT * FROM ALL_COL_COMMENTS WHERE TABLE_NAME='ROAD_CODE';

SELECT * FROM USER_TABLES;

--TRUNCATE TABLE ROAD_CODE;

DROP TABLE ROAD_CODE;

ALTER TABLE ROAD_CODE ADD COMMENT

SELECT * FROM USER_TABLES;

SELECT * FROM v$tablespace;

SELECT * FROM v$datafile;

SELECT * FROM ROAD_CODE;

SELECT COUNT(*) FROM ROAD_CODE;
