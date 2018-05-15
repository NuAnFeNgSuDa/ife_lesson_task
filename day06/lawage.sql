-- Create table
create table slisdata.LAWAGE
(
  indexcalno  VARCHAR2(8) not null,
  agentcode   VARCHAR2(10) not null,
  agentgroup  VARCHAR2(12),
  managecom   VARCHAR2(10),
  getdate     DATE,
  summoney    NUMBER(16,4) default 0,
  lastmoney   NUMBER(16,4) default 0,
  currmoney   NUMBER(16,4) default 0,
  f01         NUMBER(16,4) default 0,
  f02         NUMBER(16,4) default 0,
  f03         NUMBER(16,4) default 0,
  f04         NUMBER(16,4) default 0,
  f05         NUMBER(16,4) default 0,
  f06         NUMBER(16,4) default 0,
  f07         NUMBER(16,4) default 0,
  f08         NUMBER(16,4) default 0,
  f09         NUMBER(16,4) default 0,
  f10         NUMBER(16,4) default 0,
  f11         NUMBER(16,4) default 0,
  f12         NUMBER(16,4) default 0,
  f13         NUMBER(16,4) default 0,
  f14         NUMBER(16,4) default 0,
  f15         NUMBER(16,4) default 0,
  f16         NUMBER(16,4) default 0,
  f17         NUMBER(16,4) default 0,
  f18         NUMBER(16,4) default 0,
  f19         NUMBER(16,4) default 0,
  f20         NUMBER(16,4) default 0,
  f21         NUMBER(16,4) default 0,
  f22         NUMBER(16,4) default 0,
  f23         NUMBER(16,4) default 0,
  f24         NUMBER(16,4) default 0,
  f25         NUMBER(16,4) default 0,
  f26         NUMBER(16,4) default 0,
  f27         NUMBER(16,4) default 0,
  f28         NUMBER(16,4) default 0,
  f29         NUMBER(16,4) default 0,
  f30         NUMBER(16,4) default 0,
  k01         NUMBER(16,4) default 0,
  k02         NUMBER(16,4) default 0,
  k03         NUMBER(16,4) default 0,
  k04         NUMBER(16,4) default 0,
  k05         NUMBER(16,4) default 0,
  k06         NUMBER(16,4) default 0,
  k07         NUMBER(16,4) default 0,
  k08         NUMBER(16,4) default 0,
  k09         NUMBER(16,4) default 0,
  k10         NUMBER(16,4) default 0,
  k11         NUMBER(16,4) default 0,
  k12         NUMBER(16,4) default 0,
  k13         NUMBER(16,4) default 0,
  k14         NUMBER(16,4) default 0,
  k15         NUMBER(16,4) default 0,
  k16         NUMBER(16,4) default 0,
  k17         NUMBER(16,4) default 0,
  k18         NUMBER(16,4) default 0,
  k19         NUMBER(16,4) default 0,
  k20         NUMBER(16,4) default 0,
  confirmdate DATE,
  state       VARCHAR2(10),
  paymode     VARCHAR2(2),
  operator    VARCHAR2(80),
  operator2   VARCHAR2(80),
  makedate    DATE,
  maketime    VARCHAR2(8),
  modifydate  DATE,
  modifytime  VARCHAR2(8),
  branchtype  VARCHAR2(2),
  shouldmoney NUMBER(16,4) default 0,
  branchattr  VARCHAR2(20),
  agentgrade  VARCHAR2(6),
  w01         NUMBER(16,4) default 0,
  w02         NUMBER(16,4) default 0,
  w03         NUMBER(16,4) default 0,
  w04         NUMBER(16,4) default 0,
  w05         NUMBER(16,4) default 0,
  w06         NUMBER(16,4) default 0,
  w07         NUMBER(16,4) default 0,
  w08         NUMBER(16,4) default 0,
  w09         NUMBER(16,4) default 0,
  w10         NUMBER(16,4) default 0,
  branchtype2 VARCHAR2(2),
  w11         VARCHAR2(20) default 0,
  w12         VARCHAR2(20) default 0,
  w13         VARCHAR2(20) default 0,
  w14         VARCHAR2(20) default 0,
  w15         VARCHAR2(20) default 0,
  f31         NUMBER(16,4),
  f32         NUMBER(16,4),
  f33         NUMBER(16,4),
  f34         NUMBER(16,4),
  f35         NUMBER(16,4),
  f36         NUMBER(16,4),
  f37         NUMBER(16,4),
  f38         NUMBER(16,4),
  f39         NUMBER(16,4),
  f40         NUMBER(16,4),
  f41         NUMBER(16,4),
  f42         NUMBER(16,4),
  f43         NUMBER(16,4),
  f44         NUMBER(16,4) default 0,
  f45         NUMBER(16,4) default 0,
  f46         NUMBER(16,4) default 0,
  f47         NUMBER(16,4) default 0,
  f48         NUMBER(12,4),
  f49         NUMBER(12,4),
  f50         NUMBER(12,4),
  f51         NUMBER(12,4),
  f52         NUMBER(12,4),
  f53         NUMBER(12,4),
  f54         NUMBER(12,4),
  f55         NUMBER(12,4),
  f56         NUMBER(12,4),
  f57         NUMBER(12,4)
)
tablespace SLISDATA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Create/Recreate primary, unique and foreign key constraints 
alter table slisdata.LAWAGE
  add constraint PK_LAWAGE primary key (INDEXCALNO, AGENTCODE)
  using index 
  tablespace SLISINDEX
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Create/Recreate indexes 
create index slisdata.IDX_LAWAGE_AGENTCODE on slisdata.LAWAGE (AGENTCODE)
  tablespace SLISINDEX
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index slisdata.IDX_LAWAGE_BRANCHATTR on slisdata.LAWAGE (BRANCHATTR)
  tablespace SLISINDEX
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index slisdata.IDX_LAWAGE_GETDATE on slisdata.LAWAGE (GETDATE)
  tablespace SLISINDEX
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index slisdata.IDX_LAWAGE_IND_MNG on slisdata.LAWAGE (INDEXCALNO, MANAGECOM)
  tablespace SLISINDEX
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index slisdata.IDX_LAWAGE_MANAGECOM on slisdata.LAWAGE (MANAGECOM)
  tablespace SLISINDEX
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index slisdata.IDX_LAW_BRCHTP_AGTGRD_IDXCNO on slisdata.LAWAGE (BRANCHTYPE, AGENTGRADE, INDEXCALNO)
  tablespace SLISDATA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
