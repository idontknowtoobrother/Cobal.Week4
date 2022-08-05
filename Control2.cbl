       IDENTIFICATION DIVISION. 
       PROGRAM-ID. CONTROL2.
       AUTHOR. 62160246

       ENVIRONMENT DIVISION. 
       CONFIGURATION SECTION.
       SPECIAL-NAMES. 
           CLASS HEX-NUMBER IS "0" THRU "9", "A" THRU "F"
           CLASS  REAL-NAME IS "A" THRU "Z", "a" THRU "z", "'", SPACE.

       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01  NUM-IN   PIC X(4).
       01  NAME-IN  PIC X(15).

       PROCEDURE DIVISION.
       BEGIN.
           DISPLAY "Enter a Hex number = " WITH NO ADVANCING 
           ACCEPT NUM-IN 
           IF NUM-IN IS HEX-NUMBER THEN
              DISPLAY NUM-IN " is a Hex number"
           ELSE
              DISPLAY NUM-IN " is not a Hex number"
           END-IF

           DISPLAY "Enter a Real Name = " WITH NO ADVANCING 
           ACCEPT NAME-IN 
           IF NAME-IN IS REAL-NAME THEN
              DISPLAY NAME-IN " is a Real Name"
           ELSE
              DISPLAY NAME-IN " is not a Real Name"
           END-IF

            DISPLAY "Enter a Name = " WITH NO ADVANCING 
           ACCEPT NAME-IN 
           IF NAME-IN IS ALPHABETIC THEN
              DISPLAY NAME-IN " is a Name"
           ELSE
              DISPLAY NAME-IN " is not a Name"
           END-IF
           .