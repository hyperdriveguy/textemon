REM Textemon
REM By Hyperdriveguy
_FULLSCREEN

pokemon = 0

COLOR 15
PRINT "Prof. Oak: What is your name?"
INPUT "Name"; name$
CLS
PRINT "Ah! So, your name is "; name$; "!"
PRINT
PRINT "Press any key to continue..."
SLEEP
CLS
PRINT name$; ". You are about to embark on a journey in the world of Pokmon!"
PRINT "There will be many trials along the way, but you must press on."
PRINT "Trainers will challenge you, both with good and bad intent."
PRINT
PRINT "Press any key to continue..."
SLEEP
CLS
PRINT "But to become the champion, you must learn how."
PRINT "If you do your best, people will one day shout:"
PRINT
PRINT "Press any key to continue..."
SLEEP
CLS
PRINT name$; ", the champion, the best of them all!"
PRINT "Go forward!"
PRINT
PRINT "Press any key to continue..."
SLEEP
CLS
action$ = ""
GOSUB 1 'your room
0 'exit
END

1 'your room
DO UNTIL action$ = "exit"
    CLS
    COLOR 15
    PRINT "You are in your room.";
    COLOR 10
    PRINT , "stairs", "exit"
    INPUT "Enter Choice"; action$
    IF action$ = "stairs" THEN GOSUB 2
LOOP
RETURN 'exit

2 'main floor of your house
DO UNTIL action$ = "exit"
    CLS
    COLOR 15
    IF pokemon = 0 THEN PRINT "Mom: "; name$; "! Professor Oak wanted to see you. Head to his lab."
    PRINT "You are on the main floor of your house.";
    COLOR 10
    PRINT , "stairs   door   exit"
    INPUT "Enter Choice"; action$
    IF action$ = "stairs" THEN GOSUB 1
    IF action$ = "door" THEN GOSUB 3
LOOP
GOSUB 0 'exit

3 'Pallet Town
DO UNTIL action$ = "exit"
    CLS
    COLOR 15
    PRINT "You are in Pallet Town.";
    COLOR 10
    PRINT , "garys_house   home   lab   route_1   exit"
    INPUT "Enter Choice"; action$
    IF action$ = "home" THEN GOSUB 2
    IF action$ = "garys_house" THEN GOSUB 4
    IF action$ = "lab" THEN GOSUB 5
    IF action$ = "route_1" THEN GOSUB 6
LOOP
GOSUB 0 'Exit

4 'gary's house
PRINT "No one is home..."
SLEEP
RETURN

5 'Oak's Lab
IF pokemon = 0 THEN GOSUB 5.1 'first pokemon
IF NOT pokemon = 0 THEN GOSUB 5.2 'normal lab


5.1 'first pokemon
PRINT "Prof. Oak: There you are "; name$; "!"
SLEEP
CLS
PRINT "Prof. Oak: I need to  give you something."
SLEEP
CLS
PRINT name$; " recived Pikachu!"
pokemon = 1
party1 = 25
SLEEP
CLS
PRINT "Prof. Oak: Now you can go to route 1, "; name$; "!"
pokemon = 1
GOSUB 5.3

5.2 'normal lab entrance
PRINT "Professor Oak: "; name$; "! Why aren't you adventuring? Don't dilly-dally!"
SLEEP
CLS

5.3
DO UNTIL action$ = "exit"
    CLS
    COLOR 15
    PRINT "You are in Oak's Lab.";
    COLOR 10
    PRINT , "door   exit"
    INPUT "Enter Choice"; action$
    IF action$ = "door" THEN GOSUB 3
LOOP
GOSUB 0 'exit

6 'route 1
DO UNTIL action$ = "exit"
    CLS
    COLOR 15
    PRINT "Gandolf: YOU SHALL NOT PASS!"
    PRINT "(Area under development)";
    COLOR 10
    PRINT , "back   exit"
    INPUT "Enter Choice"; action$
    IF action$ = "back" THEN GOSUB 3
LOOP
GOSUB 0 'exit
