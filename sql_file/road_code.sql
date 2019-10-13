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

COMMENT ON TABLE ROAD_CODE IS '���θ��ڵ�';

COMMENT ON COLUMN ROAD_CODE.road# IS '���θ��ڵ�';
COMMENT ON COLUMN ROAD_CODE.road_nm IS '���θ�';
COMMENT ON COLUMN ROAD_CODE.road_nm_rom IS '���θ�θ���';
COMMENT ON COLUMN ROAD_CODE.umd_sri_num IS '���鵿�Ϸù�ȣ';
COMMENT ON COLUMN ROAD_CODE.city_prov_nm IS '�õ���';
COMMENT ON COLUMN ROAD_CODE.city_prov_nm_rom IS '�õ� �θ���';
COMMENT ON COLUMN ROAD_CODE.sgg_nm IS '�ñ�����';
COMMENT ON COLUMN ROAD_CODE.sgg_nm_rom IS '�ñ��� �θ���';
COMMENT ON COLUMN ROAD_CODE.umd_nm IS '���鵿��';
COMMENT ON COLUMN ROAD_CODE.umd_nm_rom IS '���鵿 �θ���';
COMMENT ON COLUMN ROAD_CODE.umd_type IS '���鵿����';
COMMENT ON COLUMN ROAD_CODE.umd# IS '���鵿�ڵ�';
COMMENT ON COLUMN ROAD_CODE.use_whet IS '��뿩��';
COMMENT ON COLUMN ROAD_CODE.chg_rsn IS '�������';
COMMENT ON COLUMN ROAD_CODE.chg_hist_info IS '�����̷�����';
COMMENT ON COLUMN ROAD_CODE.post_date IS '�������';
COMMENT ON COLUMN ROAD_CODE.expr_date IS '��������';

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
