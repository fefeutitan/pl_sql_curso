
declare

  procedure pr_inserir (nome tb_pessoa.nm_pessoa%type) is
    begin
      insert
    end;

    function fn_valida_cpf(cpf tb_pessoa.nu_cpf%type) return boolean is
      begin
        if nu_cpf is true then
          return true;
        else
          return false;
        end if;
      end;  
      ex_cpf_invalido exception; 
      v_ok number := 1;
begin
  for st in cr_query loop
    
      if not fn_valida_cpf(st.nu_cpf) then
        --raise ex_cpf_invalido;
        pr_log;
        v_ok :=0;
      end if;
      
      begin
        if v_ok = 1 then
           pr_insert(st.nome);
        end if
      exception
        when others then
          dbms_output.put_line('erro ao inserir, não funfou');
      end;
  end loop;
      
exception 
  when ex_cpf_invalido then
      dbms_output.put_line('cpf invalido')
      
end;


--alter table tb_pessoa add nu_cpf number;
