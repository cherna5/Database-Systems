SOURCE populateSale.sql
DROP PROCEDURE if EXISTS prc_cust_add;

-- Your code begins here
DELIMITER $$

CREATE  PROCEDURE prc_cust_add( in CUS_LNAME varchar(15),in CUS_FNAME varchar(15),  in CUS_INITIAL varchar(1)) 

  BEGIN
  
  DECLARE MAX_CUS_CODE INTEGER;
  SELECT MAX(CUS_CODE) INTO MAX_CUS_CODE FROM CUSTOMER;
      
  INSERT INTO CUSTOMER(CUS_CODE, CUS_LNAME, CUS_FNAME, CUS_INITIAL, CUS_AREACODE,CUS_PHONE, CUS_BALANCE)
    
  VALUES(MAX_CUS_CODE+1, CUS_LNAME, CUS_FNAME, CUS_INITIAL, NULL, NULL, 0);


END $$

-- Your code ends here
DELIMITER ;

select  routine_name  from information_schema.routines where routine_schema='Sales' and routine_name='prc_cust_add' order by routine_name;





