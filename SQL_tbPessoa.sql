create table tb_pessoa (
  cd_pessoa number,
  nm_pessoa varchar2(100),
  tp_pessoa varchar2(1),
  dt_nasc date      
);

alter table tb_pessoa add constraint pk_tb_pessoa primary key (cd_pessoa);

create sequence sq_pessoa;

\

create or replace trigger TG_PESSOA_B
before insert on tb_pessoa
for each row
  begin
         if inserting then
           :new.cd_pessoa := sq_tb_pessoa.nextval;
           end if;
    end TG_PESSOA_B;
