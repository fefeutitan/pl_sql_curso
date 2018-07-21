declare 
  type tipo_pessoa_rc is record(c_cd_pessoa tb_pessoa.cd_pessoa%type:=0, c_nm_pessoa tb_pessoa.nm_pessoa%type:=0 );
  type tipo_pessoa is table of tipo_pessoa_rc index by pls_integer;
  --type tipo_pessoa is table of tb_pessoa%rowtype index by pls_integer;
  
  lista_pessoa tipo_pessoa;
  
begin
  select cd_pessoa,nm_pessoa bulk collect into lista_pessoa from tb_pessoa;
  
  for i in 1..lista_pessoa.count loop
    dbms_output.put_line(lista_pessoa(i).c_nm_pessoa);
  end loop;
end;
