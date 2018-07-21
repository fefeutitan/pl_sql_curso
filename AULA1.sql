declare
  vdata date;

begin
  select sysdate into vdata from dual;
  dbms_output.put_line(to_char(vdata, 'dd\mm\yyyy hh24:mi:ss'));

end;



CREATE TABLE UF
(
  CD_UF VARCHAR2(2) NOT NULL,
  DS_UF VARCHAR2(20) NOT NULL
);

ALTER TABLE UF 
  ADD CONSTRAINT PK_UF1 PRIMARY KEY (CD_UF);

/

DROP TABLE CIDADE
(
  CD_CIDADE NUMBER NOT NULL,
  DS_CIDADE VARCHAR2(20) NOT NULL,
  CD_UF VARCHAR2(2) NOT NULL 
);

ALTER TABLE CIDADE 
  ADD CONSTRAINT FK_CIDADE_UF FOREIGN KEY (CD_UF) REFERENCES UF(CD_UF);


SELECT * FROM CIDADE FOR UPDATE

CREATE SEQUENCE SQ_CIDADE;

create or replace trigger TG_CIDADE_B
  before insert
  on cidade 
  for each row
declare
  -- local variables here
begin
  :NEW.CD_CIDADE := SELECT SQ_CIDADE.NEXTVAL FROM DUAL;
end TG_CIDADE_B;
