CREATE TABLE LOC_NUM(
    man_num varchar2(25) not null,
    sri_num number(3) not null,
    law_d_code varchar2(10) ,
    city_prov_nm varchar2(40) ,
    sgg_nm varchar2(40) ,
    law_umd_nm varchar2(40) ,
    law_vil_nm varchar2(40),
    mt_whet varchar2(1),
    loc_pr_num number(4),
    loc_sc_num number(4),
    rep_whet varchar2(1),
    chg_rsn_code varchar2(2)
) TABLESPACE ADDR_DATA_SPACE;

CREATE UNIQUE INDEX loc_num_PK ON loc_num
 ( man_num,sri_num )
  TABLESPACE ADDR_INDEX_SPACE

ALTER TABLE loc_num ADD CONSTRAINT loc_num_PK PRIMARY KEY(man_num,sri_num) USING INDEX loc_num_PK ;

ALTER TABLE loc_num ADD CONSTRAINT loc_num_FK FOREIGN KEY  (man_num) REFERENCES ADDRESS(man_num);

COMMENT ON TABLE LOC_NUM IS '지번정보';

COMMENT ON COLUMN LOC_NUM.man_num IS '관리번호';
COMMENT ON COLUMN LOC_NUM.sri_num IS '일련번호';
COMMENT ON COLUMN LOC_NUM.law_d_code IS '법정동코드';
COMMENT ON COLUMN LOC_NUM.city_prov_nm IS '시도명';
COMMENT ON COLUMN LOC_NUM.sgg_nm IS '시군구명';
COMMENT ON COLUMN LOC_NUM.law_umd_nm IS '법정읍면동명';
COMMENT ON COLUMN LOC_NUM.law_vil_nm IS '법정리명';
COMMENT ON COLUMN LOC_NUM.mt_whet IS '산여부';
COMMENT ON COLUMN LOC_NUM.loc_pr_num IS '지번본번(번지)';
COMMENT ON COLUMN LOC_NUM.loc_sc_num IS '지번부번(호)';
COMMENT ON COLUMN LOC_NUM.rep_whet IS '대표여부';
COMMENT ON COLUMN LOC_NUM.chg_rsn_code IS '변경사유코드';

SELECT COUNT(*) FROM LOC_NUM;