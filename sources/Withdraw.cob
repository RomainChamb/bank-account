000000 IDENTIFICATION DIVISION.
000000 PROGRAM-ID. Withdraw.
000000 
000000 DATA DIVISION.
000000 WORKING-STORAGE SECTION.
000000 01 AMOUNT PIC 9(5).
000000 
000000 LINKAGE SECTION.
000000 01 ACCOUNT PIC 9(5).
000000 
000000 PROCEDURE DIVISION USING ACCOUNT.
000000     DISPLAY "Amount to withdraw: ".
000000     ACCEPT AMOUNT.
000000     IF AMOUNT <= ACCOUNT THEN
000000         SUBTRACT AMOUNT FROM ACCOUNT
000000         DISPLAY "Withdraw done. New balance: " ACCOUNT
000000     ELSE
000000         DISPLAY "Insufficient Balance."
000000     END-IF.
000000     GOBACK.
