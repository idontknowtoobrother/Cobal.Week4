       IDENTIFICATION DIVISION.
       PROGRAM-ID.Control5.
       AUTHOR. 62160246.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  VALIDATION-RETURN-CODE  PIC 9 VALUE 9.
           88 DATE-IS-OK           VALUE 0.
           88 DATE-IS-INVALID      VALUE 1 THRU 8.
           88 VALID-CODE-SUPPLIED  VALUE 0 THRU 8.

       01  DATE-ERROR-MESSAGE      PIC X(35) VALUE SPACE .
          88 DATE-NOT-NUMERIC  VALUE "Error - the date must be numeric".
          88 YEAR-IS-ZERO      VALUE "Error - the year cannot be zero".
          88 MONTH-IS-ZERO   VALUE "Error - the month cannot be zero".
          88 DAY-IS-ZERO      VALUE "Error - the day cannot be zero".
          88 YEAR-PASSED  VALUE "Error - the year has already passed".
          88 MONTH-TOO-BIG VALUE "Error - the month is greater than 12".
          88 DAY-TOO-BIG VALUE "Error - the day is greater than 31".
          88 TOOBIG-FORMONTH VALUE "Error - Day too big for this month".
       
       PROCEDURE DIVISION .
       Begin.
           PERFORM VALIDATE-DATE UNTIL VALID-CODE-SUPPLIED
           EVALUATE VALIDATION-RETURN-CODE 
              WHEN 0 SET DATE-IS-OK TO TRUE
              WHEN 1 SET DATE-NOT-NUMERIC TO TRUE
              WHEN 2 SET YEAR-IS-ZERO TO TRUE
              WHEN 3 SET MONTH-IS-ZERO TO TRUE
              WHEN 4 SET DAY-IS-ZERO TO TRUE
              WHEN 5 SET YEAR-PASSED TO TRUE
              WHEN 6 SET MONTH-TOO-BIG TO TRUE
              WHEN 7 SET DAY-TOO-BIG TO TRUE
              WHEN 8 SET TOOBIG-FORMONTH TO TRUE
           END-EVALUATE

           IF DATE-IS-INVALID
              DISPLAY DATE-ERROR-MESSAGE 
           END-IF

           IF DATE-IS-OK 
              DISPLAY "DATE IS OK"
           END-IF
           GOBACK 
           .

       VALIDATE-DATE.
           DISPLAY "ENTER A VALIDATION RETURN CODE (0-8) - " WITH NO 
           ADVANCING .
           ACCEPT VALIDATION-RETURN-CODE 
           .

