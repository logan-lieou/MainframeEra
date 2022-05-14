       IDENTIFICATION DIVISION.
       PROGRAM-ID. BSearch.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUMS-AREA VALUE "01040612184356".
           03 NUMS PIC 9(2)
                   OCCURS 7 TIMES
                   ASCENDING KEY NUMS
                   INDEXED BY NUMS-IDX.
       PROCEDURE DIVISION.
           SEARCH ALL NUMS
              WHEN NUMS (NUMS-IDX) = 4
                 DISPLAY "Found 4 at " NUMS-IDX
           END-SEARCH.
       END PROGRAM BSearch.