       IDENTIFICATION DIVISION. 
       PROGRAM-ID. CONTROL3.
       AUTHOR. 62160246.

       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01  CITY-CODE   PIC   9  VALUE ZERO.
           88 CITY-IS-DUBLIN    VALUE 1.
           88 CITY-IS-LIMERICK    VALUE 2.
           88 CITY-IS-CORK    VALUE 3.
           88 CITY-IS-GALWAY    VALUE 4.
           88 CITY-IS-SLIGO    VALUE 5.
           88 CITY-IS-WATERFORD    VALUE 6.
           88 UNIVERSITY-CITY    VALUE 1 THRU 4.
           88 CITY-CODE-NOT-VALID    VALUE 0, 7, 8, 9.
       PROCEDURE DIVISION.
       BEGIN.
           DISPLAY "Enter a city code (1-6) - " WITH NO ADVANCING 
           ACCEPT CITY-CODE
           
           IF CITY-CODE-NOT-VALID THEN
              DISPLAY "Invalid city code entered"
           ELSE
              IF CITY-IS-LIMERICK THEN
                 DISPLAY "Hey, we're home."
              END-IF 
              IF CITY-IS-DUBLIN THEN
                 DISPLAY "Hey, we're in the capital."
              END-IF 
              IF UNIVERSITY-CITY THEN
                 DISPLAY "Apply the rent surcharge!" 
              END-IF 
           END-IF 
           SET CITY-CODE-NOT-VALID TO TRUE 
           DISPLAY CITY-CODE 
           GOBACK 
           .