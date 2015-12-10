REM Textemon
REM By Hyperdriveguy
_FULLSCREEN

dmy$ = INKEY$

menu = 0
arrowpos = 1

CLS

PRINT "+-------------------------++"
PRINT "|        New Game         ||"
PRINT "|          Quit           ||"
PRINT "+-------------------------+|"
PRINT " ---------------------------"

LOCATE 2, 5
PRINT "¯"
dmy$ = INKEY$
.1 'menu
DO UNTIL _KEYDOWN(13)
    IF _KEYDOWN(20480) AND _KEYDOWN(18432) THEN SLEEP
    IF _KEYDOWN(18432) AND arrowpos = 2 THEN GOSUB .2 'position 1
    IF _KEYDOWN(20480) AND arrowpos = 1 THEN GOSUB .3 'position 2
LOOP
GOSUB .4 'main game

.2 'position 1
LOCATE 2, 5
PRINT "¯"
LOCATE 4, 5
PRINT " "
arrowpos = 1
GOSUB .1 'menu

.3 'position 2
LOCATE 4, 5
PRINT "¯"
LOCATE 2, 5
PRINT " "
arrowpos = 2
GOSUB .1 'menu

.4 'main game

IF arrowpos = 2 THEN menu = 1
IF menu = 1 THEN END
IF arrowpos = 1 THEN menu = 2

pokemon = 0

dmy$ = INKEY$

COLOR 15
CLS
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
PRINT ,"Press any key to continue..."
SLEEP
CLS
action$ = ""
GOSUB 1 'your room
0 'quit game
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
GOSUB 0 'exit

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
    prev=6
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

7 'Viridian City
CLS
PRINT "There are many construction vehicles around. You can't go here yet."
SLEEP
GOSUB 6

.5 'wild pokemon
pokemon% = INT(RND * 2) + 1 'add one as INT value never reaches 2
IF pokemon% = 1 THEN GOSUB (prev+1)
IF pokemon% = 2 THEN GOSUB .51

.51 'Wild Battle
CLS
PRINT ," ^^^^^^^^^^^^^^^^^ "
PRINT ,"<                 >"
PRINT ,"<     BATTLE!     >"
PRINT ,"<                 >"
PRINT ," ^^^^^^^^^^^^^^^^^ "
SLEEP 1
CLS
PRINT ,"Battle system not implemented yet."
SLEEP 2
CLS
IF prev=6 THEN
    GOSUB 7
