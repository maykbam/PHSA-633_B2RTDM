--liquibase formatted.sql
--changeset michael.cawayan:MONITOR.GET_IF143_ID contextFilter:PH endDelimiter:/ runOnChange:true

create or replace FUNCTION MONITOR.GET_IF143_ID
    RETURN NUMBER
    IS
        v_id NUMBER;
    BEGIN
        SELECT  IF143_ID_SEQ.NEXTVAL
                INTO v_id
          FROM  DUAL;
        RETURN v_id;
END;
/
GRANT EXECUTE ON "MONITOR"."GET_IF143_ID" TO "HCI_RO_MONITOR"
/
GRANT EXECUTE ON "MONITOR"."GET_IF143_ID" TO "MA_TEMP"
/
GRANT EXECUTE ON "MONITOR"."GET_IF143_ID" TO "HCI_APP_SELECT"
/
GRANT EXECUTE ON "MONITOR"."GET_IF143_ID" TO "APPSUPPORT"
/