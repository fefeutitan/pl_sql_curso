DECLARE
  CURSOR CR_CIDADE IS
    SELECT * FROM CIDADE ORDER BY DS_CIDADE;

BEGIN
  FOR ST_CIDADE IN 1 .. 10 LOOP
    IF MOD(ST_CIDADE, 2) != 0 THEN
      DBMS_OUTPUT.put_line(ST_CIDADE);
    END IF;
  END LOOP;
  
  FOR ST_CIDADE IN CR_CIDADE LOOP
    DBMS_OUTPUT.put_line(ST_CIDADE.DS_CIDADE);
  END LOOP;
END;