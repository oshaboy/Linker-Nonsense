      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Cobol.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
        77 LANG_NAME PIC X(20) VALUE Z"Cobol".
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            CALL "call_this" USING LANG_NAME END-CALL.
            STOP RUN.
       END PROGRAM Cobol.
       