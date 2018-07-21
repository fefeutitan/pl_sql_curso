-- Create table
create table TB_CIDADE
(
  cd_cidade   NUMBER not null,
  nm_cidade   VARCHAR2(20) not null,
  cd_estado   VARCHAR2(2) not null,
  nm_operador VARCHAR2(20),
  dt_operador DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
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
alter table TB_CIDADE
  add constraint PK_CIDADE primary key (CD_CIDADE)
  using index 
  tablespace SYSTEM
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
alter table TB_CIDADE
  add constraint FK_CIDADE_ESTADO foreign key (CD_ESTADO)
  references TB_ESTADO (CD_ESTADO);
