
DROP PROCEDURE if EXISTS prc_new_product;

-- Your code begins here
DELIMITER $$


-- Your code ends here
DELIMITER ;


select  routine_name  from information_schema.routines where routine_schema='Sales' and routine_name='prc_new_product' order by routine_name;















