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

COMMENT ON TABLE LOC_NUM IS '��������';

COMMENT ON COLUMN LOC_NUM.man_num IS '������ȣ';
COMMENT ON COLUMN LOC_NUM.sri_num IS '�Ϸù�ȣ';
COMMENT ON COLUMN LOC_NUM.law_d_code IS '�������ڵ�';
COMMENT ON COLUMN LOC_NUM.city_prov_nm IS '�õ���';
COMMENT ON COLUMN LOC_NUM.sgg_nm IS '�ñ�����';
COMMENT ON COLUMN LOC_NUM.law_umd_nm IS '�������鵿��';
COMMENT ON COLUMN LOC_NUM.law_vil_nm IS '��������';
COMMENT ON COLUMN LOC_NUM.mt_whet IS '�꿩��';
COMMENT ON COLUMN LOC_NUM.loc_pr_num IS '��������(����)';
COMMENT ON COLUMN LOC_NUM.loc_sc_num IS '�����ι�(ȣ)';
COMMENT ON COLUMN LOC_NUM.rep_whet IS '��ǥ����';
COMMENT ON COLUMN LOC_NUM.chg_rsn_code IS '��������ڵ�';

SELECT COUNT(*) FROM LOC_NUM;