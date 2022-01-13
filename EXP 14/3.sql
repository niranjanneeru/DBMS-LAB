create or replace trigger credit_checker
    before insert
    on COURSE
    for each row
    when ( new.CREDITS < 3 )
declare
    XCEP EXCEPTION ;
    PRAGMA EXCEPTION_INIT ( XCEP, -20001 );
begin
    DBMS_OUTPUT.PUT_LINE('CREDITS LESS THAN 3 CANT BE INSERTED');
    raise XCEP;
end;

-- INSERT INTO COURSE values( 'BIO-10', 'Intro. to Biolog', 'Biology',2);