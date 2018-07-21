begin  
     for c in (select p.rowid, p.* from tb_pessoa p) loop 
       update tb_pessoa p set p.dt_nasc = p.dt_nasc + 1
   where p.rowid = c.rowid;
   commit;
end loop;

end;


select * from tb_pessoa;
