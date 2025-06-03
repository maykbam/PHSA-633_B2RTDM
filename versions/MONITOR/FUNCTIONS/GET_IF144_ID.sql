--liquibase formatted.sql
--changeset michael.cawayan:MONITOR.IF144_ID_SEQ contextFilter:PH endDelimiter:/ runOnChange:true

create or replace FUNCTION MONITOR.GET_IF144_ID
    RETURN NUMBER
    IS
        v_id NUMBER;
    BEGIN
        SELECT  IF144_ID_SEQ.NEXTVAL
                INTO v_id
          FROM  DUAL;
        RETURN v_id;
END;
/