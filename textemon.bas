REM Textemon
REM By Hyperdriveguy
_FULLSCREEN

pokemon = 0

COLOR 15
PRINT "Prof. Oak: What is your name?"
INPUT "Name"; name$
IF name$ = "" THEN name$ = "???"
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
    IF p1 = 0 THEN PRINT "Mom: "; name$; "! Professor Oak wanted to see you. Head to his lab."
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
    PRINT , "| garys house | home | lab | route 1 | exit"
    INPUT "Enter Choice"; action$
    COLOR 15
    IF action$ = "home" THEN GOSUB 2
    IF action$ = "garys house" THEN GOSUB 4
    IF action$ = "lab" THEN GOSUB 5
    IF action$ = "route 1" THEN GOSUB 6
LOOP
GOSUB 0 'Exit

4 'gary's house
PRINT "No one is home..."
SLEEP
RETURN

5 'Oak's Lab
IF p1 = 0 THEN GOSUB 5.1 'first pokemon
IF NOT p1 = 0 THEN GOSUB 5.2 'normal lab


5.1 'first pokemon
CLS
PRINT "Prof. Oak: There you are "; name$; "!"
SLEEP
CLS
PRINT "Prof. Oak: I need to  give you something."
SLEEP
CLS
PRINT name$; " recived Pikachu!"
p1 = 25
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
    PRINT "Sign:"
    PRINT "Wild Pokemon may appear in the tall grass.";
    COLOR 10
    PRINT , "| back to town  |  enter tall grass |  exit"
    INPUT "Enter Choice"; action$
    IF action$ = "back to town" THEN GOSUB 3
    IF action$ = "enter tall grass" THEN GOSUB 7
LOOP
GOSUB 0 'exit

8 'Viridian City
CLS
PRINT "There are many construction vehicles around. You can't go here yet."
SLEEP
GOSUB 6
7 'wild pokemon
pokemon% = INT(RND * 2) + 1 'add one as INT value never reaches 2
IF pokemon% = 1 THEN GOSUB 8
IF pokemon% = 2 THEN GOSUB 7.1

7.1 'Wild Battle
CLS
PRINT "You Won the battle!"
SLEEP
GOSUB 8
