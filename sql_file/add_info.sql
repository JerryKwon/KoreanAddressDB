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

COMMENT ON TABLE ADD_INFO IS '�ΰ�����';

COMMENT ON COLUMN ADD_INFO.man_num IS '������ȣ';
COMMENT ON COLUMN ADD_INFO.admn_d_code IS '������ �ڵ�';
COMMENT ON COLUMN ADD_INFO.admn_d_nm IS '��������';
COMMENT ON COLUMN ADD_INFO.post_num IS '�����ȣ';
COMMENT ON COLUMN ADD_INFO.post_num_sri_num IS '�����ȣ�Ϸù�ȣ';
COMMENT ON COLUMN ADD_INFO.mn_qt_deli_loc_nm IS '�ٷ����ó��';
COMMENT ON COLUMN ADD_INFO.arch_th_list_bldg_nm IS '���⹰���� �ǹ���';
COMMENT ON COLUMN ADD_INFO.sgg_bldg_nm IS '�ñ��� �ǹ���';
COMMENT ON COLUMN ADD_INFO.shr_houz_whet IS '�������ÿ���';
COMMENT ON COLUMN ADD_INFO.chg_rsn_code IS '��������ڵ�';

DROP TABLE ADD_INFO;

SELECT * FROM ADD_INFO;

SELECT COUNT(*) FROM ADD_INFO;