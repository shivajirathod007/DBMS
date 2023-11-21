-- Create a simplified row-level trigger for EMP table to display salary difference
CREATE OR REPLACE TRIGGER SalaryDifferenceTrigger
AFTER INSERT OR UPDATE OR DELETE ON EMP
FOR EACH ROW
BEGIN
 IF INSERTING OR UPDATING THEN
 DBMS_OUTPUT.PUT_LINE('Salary Difference: ' || :NEW.Salary - :OLD.Salary);
 ELSIF DELETING THEN
 DBMS_OUTPUT.PUT_LINE('Salary Deleted: ' || :OLD.Salary);
 END IF;
END;
/
