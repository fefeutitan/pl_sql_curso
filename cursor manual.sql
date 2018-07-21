declare

  cursor cr_cidade is
    select * from cidade;

  st_cidade cr_cidade%rowtype;

begin

  open cr_cidade; 
  loop 
    fetch cr_cidade into st_cidade;
  exit when cr_cidade%notfound;
dbms_output.put_line(st_cidade.cd_cidade || st_cidade.ds_cidade);
end loop;

close cr_cidade;

end;
