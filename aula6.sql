
begin
  for i in cr_banco loop
    update tb_banco_importacao
       set obs = 'já importado'
     where coluna = i.coluna;
     
    if sql%notfound then
      begin
        insert tabela (coluna) values (i.coluna);
      exception
        when others then --gambiarra
          null;
      end;
    end if;
    commit;
  end loop;
end;
