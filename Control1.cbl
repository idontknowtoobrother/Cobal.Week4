       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONTROL1.
       AUTHOR. 62160246

       DATA DIVISION. 
       WORKING-STORAGE SECTION.
       01  NUM1  PIC 9(3) VALUE 9.
       01  NUM2  PIC 9(3) VALUE 15.
       01  NUM3  PIC 9(3).

       PROCEDURE DIVISION.
       BEGIN.
           IF NUM1 < 10 THEN
              DISPLAY  "NUM < 10"
           END-IF 

           IF NUM1 LESS THAN 10
              DISPLAY "NUM < 10"
           END-IF 

           IF NUM1 GREATER THAN OR EQUAL TO NUM2 THEN
              MOVE NUM1 TO NUM2
           END-IF 
           DISPLAY NUM2
           IF NUM1 < (NUM2 +(NUM3/2)) THEN
              MOVE ZEROES  TO NUM1
           END-IF 
           DISPLAY NUM1 
           .

