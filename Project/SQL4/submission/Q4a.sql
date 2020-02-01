
-- Your code begins here


DELIMITER $$

CREATE  PRODUCT prc_cust_add(IN P_CODE varchar(10), IN P_DESCRIPT varchar(35), IN V_CODE int)

  BEGIN
      
  INSERT INTO PRODUCT(P_CODE, P_DESCRIPT, P_INDATE. P_QOH, P_MIN, P_PRICE, P_DISCOUNT, V_CODE)
    
  VALUES(P_CODE, P_DESCRIPT, P_INDATE. P_QOH, P_MIN, P_PRICE, P_DISCOUNT, V_CODE);

  
END $$

    CALL prc_cust_add('ACME', 'REAL PRODUCT', 1);
-- Your code ends here

SELECT * FROM PRODUCT;

