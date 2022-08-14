/* Reflection

Name : Dan Coffey

Student Number:  08559350

Part A - Mark (5 /5)
-----------------------------

Comments - 1/1
indente/formatted - 1/1 
naming - 1/1
includsion of Readme - 1/1 
includsion of Reflection - 1/1


Having reviewed my work according to the  rubric above, in relation to naming,
commenting, indentation, and submitting my readme and reflection I have completed all of
these fully. I am recording 5/5.

Part B - Mark (2 /2)
-----------------------------

Sizing.


I have sized the display window correctly on line 20, so I am recording 2/2.

Part C - Mark (10 /10)
-----------------------------
lines 33-80 inclusive - draw() 
lines 18-31 inclusive - setup()


Setup and draw are fully working for me, so I am recording 10/10.

Part D - Mark (10 /10)
-----------------------------
Use of if statements:

lines 48-50 contain a Nested If Statement contolling direction and speed of PacMan and Ms. PacMan's food when the left mouse button is pressed

lines 52-74 shows an If Statement where if x position of PacMan and Ms PacMan's food meets certain parameters, they are fed/a certain code is executed.
Otherwise, PacMan/Ms. PacMan is not being fed, and a different block of code is executed.

lines 76-80 contains an If Statement stating that if PacMan/Ms. PacMan's food gets to a certain point, food to reappear wtihin coordinates of a certain block of code.

lines 106-116 contain an If Statement within a For Loop. The If Statement states that if PacMan/Ms. PacMan's food hits certain co-ordinates, the top half of the tunnel changes colour to a constant random mix.
Otherise the top half of the tunnel remains blue.

lines 125-137 contain an If Statement within a While Loop. The If Statement states that if PacMan/Ms. PacMan's food hits certain co-ordinates, the bottom half of the tunnel changes colour to a constant random mix.
Otherise the bottom half of the tunnel remains blue.

lines 214-223 contain a Nested If Statement within a mouseDragged method, where the first condition is: Ms. PacMan is drawn if the mouse is dragged within certain co-ordinates.
Second condition is, if X position of Ms PacMan's food is within certain co-ordinates, a certain block of code is executed.

lines 233-236 contain an If Statement, where if a mouse button is clicked and the mouse button is the RIGHT button, the sketch gets saved as a .PNG image file.


I have used multiple if statements, with multiple branches. I also used nested if statements, and if statements within loops. So I am recording 10/10.

Part E - Mark (15 /20)
-----------------------------
Use of loops:

for loops used on:
lines 104-116 contain a For Loop, with an If Statement contained within. The Loop was used to create lines for the top half of the tunnel.
lines 202-207 contain a For Loop. The Loop was used to create the basis for Ms.PacMan's bow by drawing to ellipses.



use of while loops on:
lines 121-137 contain a While Loop, with an If Statement contained within. The Loop was used to create lines for the bottom half of the tunnel.
lines 142-150 contain a While Loop. The Loop was used to create a pattern of diagonal transparent lines within the tunnel space.


I have used multiple For and While loops for my assignment. However, I did not use a Nested Loop. So I am recording 15/20.

Part F - Mark (20 /20)
-----------------------------
Use of at least one bespoke method 

lines 82-85, I defined one of multiple methods with a return value(getUsername()). I used a String method with no parameters that returned the value of the input String in the Option Pane, and implemented this method on lines 24 and 30.
The value that was returned here was also used to create 3 more return methods (defined in lines 87-100 inclusive, and implemented in lines 25-27 inclusive).

lines 102-117 and lines 119-138, I defined 2 overloaded methods (2 methods with the same name but different parameter count). Both methods are named 'Tunnel', one that takes no parameters, and one that takes 1 parameter (the stroke weight).
Both are methods used to create the top half, and the bottom half of the tunnel respectively. Both methods are utilising Loops (one method has a For Loop, the other has a While Loop). tunnel() was implemented on line 42. tunnel(int tunnelDensity)
was implemented on line 43.

lines 152-164, I defined a method with no parameters used to draw the PacMan character. This method was implemented on line 46.

lines 197-210, I defined a method with 3 parameters used to draw a hair bow for Ms. PacMan. The parameters defined are for RGB Colour values. This method was implemented on line 187, within another bespoke method (drawMsPacman()).


I have used many bespoke methods, in addtion to the 4 mentioned above. Methods with no parameters, methods with parameters, overloaded methods with parameters, and methods with return values. So I am recording 20/20.

Part G - Mark (10 /10)
-----------------------------
Use of Processing methods 

line 56, I have used an arc() method. This was used to create PacMan/Ms. PacMan's mouth using Arc and Radians to create the angle of mouth.

line 107, I have used a random() method. This was used within the RGB parameters of the stroke colour for the top half of the tunnel (and also subsequently the bottom half of the tunnel on line 126).

line 109, I have used a line() method. This was a line used in creating the top half of the tunnel.

line 156, I have used a circle() method. This was a circle used in creating PacMan's body.


I used many Processing methods, in additon to the methods described above.
I have called more than 3 Processing methods, so I am recording 10/10.

Part H - Mark (8 /10)
-----------------------------
Use of Mouse methods 

line 48, I have used a mousePressed method, contained in a Nested If Statement. The purpose being, to control the direction and speed of PacMan and Ms. PacMan's food when the left mouse button is pressed.

lines 212-223, I haved used a mouseDragged method. The purpose of this method being, to change PacMan to Ms.PacMan, when the mouse is dragged on PacMan.

lines 226-229, ihave used a mouseClicked method. The purpose of this method being, to save the project as a .PNG image file when the right mouse button is clicked.


I have used 3 Mouse methods meaningfully in my project. So, I am recording 8/10.

Part I - Mark (10 /10)
-----------------------------
Use of String methods 

line 60, I have used the .substring String method, to derive and assign a new String variable used in line 63.

line 63, I have utilised a newly-formed substring, and used the .toUpperCase() method on it, to show this text in all Upper Case in the display.

line 89, I have used the .toLowerCase() method, to convert a previously returned String to all Lower Case, and display in the dialog box.

line 99, I have used the .length() method to display the amount of characters contained within the previosuly returned string, in the dialog box.


I have used more than 3 String methods meaningfully in my project. So, I am recording 10/10.

Part J - Mark (3 /3)
-----------------------------
Use of .PNG methods 

lines 226-229, a mouseClicked method saves the display in a PNG file on a right mouse click. The method within this mouseClicked method is defined in lines 231-237.
The the display sucessfully saves a .PNG image file upon using a right click. So I am recording 3/3.
*/
