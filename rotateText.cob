identification division.
program-id. rotateText.
data division.
working-storage section.
01 StringsSetup.
	02 ValOne pic X(10).
	02 ValTwo pic X(10).
	02 ValThree pic X(10).
01 CorrectInput pic X(1).
procedure division.
begin.
display "Please input the three strings you wish to have rotated."
accept ValOne
accept ValTwo
accept ValThree
display "The three values you put in were:"
display ValOne
display ValTwo
display ValThree
display ValOne[1]

stop run.
