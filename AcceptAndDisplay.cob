IDENTIFICATION DIVISION.
PROGRAM-ID.  AcceptAndDisplay.
AUTHOR.  Michael Coughlan.
*> Uses the ACCEPT and DISPLAY verbs to accept a student record 
*> from the user and display some of the fields.  Also shows how
*> the ACCEPT may be used to get the system date and time.

*> The YYYYMMDD in "ACCEPT  CurrentDate FROM DATE YYYYMMDD." 
*> is a format command that ensures that the date contains a 
*> 4 digit year.  If not used, the year supplied by the system
*> will only contain two digits which may cause a problem 
*> in the year 2000.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 StudentDetails.
   02  StudentId       PIC 9(7).
   02  StudentName.
       03 Surname      PIC X(8).
       03 Initials     PIC XX.
   02  CourseCode      PIC X(4).
   02  Gender          PIC X.

*> YYMMDD
01 CurrentDate.
   02  CurrentYear     PIC 9(4).
   02  CurrentMonth    PIC 99.
   02  CurrentDay      PIC 99.

*> YYDDD
01 DayOfYear.
   02  FILLER          PIC 9(4).
   02  YearDay         PIC 9(3).


*> HHMMSSss   s = S/100
01 CurrentTime.
   02  CurrentHour     PIC 99.
   02  CurrentMinute   PIC 99.
   02  FILLER          PIC 9(4).


PROCEDURE DIVISION.
Begin.
   DISPLAY "Enter student details using template below".
   DISPLAY "Enter - ID,Surname,Initials,CourseCode,Gender"
   DISPLAY "SSSSSSSNNNNNNNNIICCCCG".
   ACCEPT  StudentDetails.
   ACCEPT  CurrentDate FROM DATE YYYYMMDD.
   ACCEPT  DayOfYear FROM DAY YYYYDDD.
   ACCEPT  CurrentTime FROM TIME.
   DISPLAY "Name is ", Initials SPACE Surname.
   DISPLAY "Date is " CurrentDay SPACE CurrentMonth 
           SPACE CurrentYear.
   DISPLAY "Today is day " YearDay " of the year".
   DISPLAY "The time is " CurrentHour ":" CurrentMinute.
   STOP RUN.