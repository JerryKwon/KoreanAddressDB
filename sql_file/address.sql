CREATE TABLE ADDRESS(
    man_num varchar2(25) not null,
    road_nm_code varchar2(12) not null,
    umd_sri_num varchar2(2) not null,
    base_whet varchar2(1) ,
    bldg_pr_num number(5) ,
    bldg_sc_num number(5) ,
    bas_dist_num varchar2(20),
    chg_rsn_code varchar2(2),
    post_date varchar2(8),
    umd_nm_rom varchar2(200),
    chg_bf_road_nm_addr varchar2(500),
    dtal_addr_give_whet varchar2(1)
) TABLESPACE ADDR_DATA_SPACE;

CREATE UNIQUE INDEX address_PK ON address
 ( man_num )
  TABLESPACE ADDR_INDEX_SPACE

ALTER TABLE address ADD CONSTRAINT address_PK PRIMARY KEY(man_num) USING INDEX address_PK ;

ALTER TABLE address ADD CONSTRAINT address_FK FOREIGN KEY  (road_nm_code,umd_sri_num) REFERENCES ROAD_NM_CODE(ROAD_NM_CODE,UMD_SRI_NUM);

COMMENT ON TABLE ADDRESS IS '�ּ�����';

COMMENT ON COLUMN ADDRESS.man_num IS '������ȣ';
COMMENT ON COLUMN ADDRESS.road_nm_code IS '���θ��ڵ�';
COMMENT ON COLUMN ADDRESS.umd_sri_num IS '���鵿�Ϸù�ȣ';
COMMENT ON COLUMN ADDRESS.base_whet IS '���Ͽ���';
COMMENT ON COLUMN ADDRESS.bldg_pr_num IS '�ǹ�����';
COMMENT ON COLUMN ADDRESS.bldg_sc_num IS '�ǹ��ι�';
COMMENT ON COLUMN ADDRESS.bas_dist_num IS '���ʱ�����ȣ';
COMMENT ON COLUMN ADDRESS.chg_rsn_code IS '��������ڵ�';
COMMENT ON COLUMN ADDRESS.post_date IS '�������';
COMMENT ON COLUMN ADDRESS.chg_df_road_nm_addr IS '���������θ��ּ�';
COMMENT ON COLUMN ADDRESS.dtal_addr_giv_whet IS '���ּҺο�����';

SELECT * FROM ALL_TAB_COMMENTS WHERE TABLE_NAME='ADDRESS';

SELECT * FROM ALL_COL_COMMENTS WHERE TABLE_NAME='ADDRESS';


DROP TABLE ADDRESS;

SELECT * FROM ADDRESS;

SELECT *
FROM(
SELECT road#,umd_sri_num FROM ADDRESS
MINUS
SELECT road#,umd_sri_num FROM ROAD_CODE);


SELECT COUNT(*) FROM ADDRESS;