/*
Name :  Dan Coffey

Student Number:  08559350
*/

//Imports
import javax.swing.*;  //To facilitate Option Pane

//Global Varibales

int body = 376;  //Variable declared for diameter of PacMan and Ms PacMan's body
int foodDiameter = 65;  //Diameter of PacMan and Ms PacMan's food
float xFood = 1280 - (foodDiameter / 2); //X-position of PacMan and Ms PacMan's food
String grub = "Feed me yum!";  //String vairable used for 2 different messages
String username;  //String text taken from user input in the Option Pane

void setup()
{
  size(1280, 720);  //Setting up the size of the display window 

  //Initialising value for 'username' String variable below
  username = JOptionPane.showInputDialog("Enter User Name:");  //Prompt for user to enter name for String
  JOptionPane.showMessageDialog(null, "Your User Name is: " + getUsername() + "\n"  //Displaying return string value taken from bespoke return method (i.e. the player name that is input)
    + "\n Length of User Name is " + getUsernameLength() + " characters."  //Displaying return number value takne from bespoke return method (i.e. the number of characters in the player name)
    + "\n Uppercase: " + getUsernameUpperCase()  //Displaying return string value taken from bespoke return method (i.e. the player name in all Upper Case)
    + "\n Lowercase: " + getUsernameLowerCase()  //Displaying return string value taken from bespoke return method (i.e. the player name in all Lower Case)
    + "\n\n Press the left mouse button to help assuage PacMan's insatiable appetite."  //Directions for user
    + "\n\n HINT: drag the mouse over PacMan for a special bonus character."  //Bonus Character hint for user
    + "\n\n Good Luck, " + getUsername() + "!");  //Good Luck message to user
}

void draw()
{ 
  background(0);  //Using black background in setup

  fill(255, 200);
  textAlign(RIGHT);
  textSize(15);
  text("User Name: " + getUsernameUpperCase(), 220, 50);  //Displaying in white text in the top left of the display, the return string value taken from bespoke return method (i.e. the player name in all Upper Case)

  tunnel();  //using bespoke overloaded method to draw top half of tunnel
  tunnel(10);  //using bespoke overloaded method to draw bottom half of tunnel
  tunnelPattern();  //using bespoke method to draw diagonal transparent lines to create pattern within tunnel
  pacmanFood();  //using bespoke method to draw PacMan and Ms PacMan's food
  drawPacman();  //using bespoke method to draw PacMan

  if (mousePressed)
    if (mouseButton == LEFT)
      xFood-=4;  //nested If Statement, contolling direction and speed of PacMan and Ms. PacMan's food when the left mouse button is pressed

  if (xFood <= 300 + body/2 + 15)  //If Statement, if x position of PacMan and Ms PacMan's food meets these parameters, they are fed/the the following code is executed
  {
    stroke(0);
    fill(0);  
    arc(300, height/2, body, body, radians(335), radians(385)); //PacMan and Ms. PacMan's mouth, using Arc and Radians to create the angle of mouth
    pacmanFood(); //Redrawing PacMan's food over the open mouth Arc in order for it to appear in front

    fill(255, random(255));  //Randomising the "YUM!" text transparency for a strobe-like effect
    String grubsUp = grub.substring(8);  //assigning new String variable from a derived substring of the global 'grub' String
    textSize(32);
    textAlign(CENTER);
    text(grubsUp.toUpperCase(), width/2, 55);  //Text displaying "YUM!" when the x-position of PacMan and Ms. PacMan's food is in the open mouth
  } else if (xFood > 300 + body/2 + 15)  //otherwise, PacMan/Ms. PacMan is not being fed, and the following code is executed
  {
    stroke(0);
    fill(0);  
    line(300, height/2, 300+body/2, height/2);  //PacMan and Ms. PacMan's closed mouth

    fill(255, 200);
    textSize(32);
    textAlign(CENTER);
    text(grub.substring(0, 7) + "...", width/2, 55);  //Text displaying "Feed me..." when the x-position of PacMan and Ms. PacMan's food is NOT in the open mouth
  }

  if (xFood <= 300 + body / 4)  //If Statement, stating that if PacMan/Ms. PacMan's food gets to this point (open mouth), food to reappear wtihin coordinates of the following code
  {
    xFood = width - (foodDiameter / 2);  //resetting of PacMan/Ms PacMan's food to its' starting position
  }
}

String getUsername()  //Return method used to return string from user input of name in the Option Pane
{
  return username;
}

String getUsernameLowerCase()  //Return method used to change the previously returned string to Lower Case
{
  return getUsername().toLowerCase();
}

String getUsernameUpperCase()  //Return method used to change the previously returned string to Upper Case
{
  return getUsername().toUpperCase();
}

int getUsernameLength()  //Return method used to display the amount of characters contained within the previosuly returned string
{
  return getUsername().length();
}

void tunnel()  //bespoke overloaded method utilising a For Loop, used in draw to set up top half of tunnel
{
  int yCoord = 110;
  for (int i = 1; i < 3; i++)
    if (xFood <= 400 + body / 4) {
      stroke(random(255), random(255), random(255));
      strokeWeight(10);
      line(0, yCoord, width, yCoord);
      yCoord +=30;
    } else {
      stroke(0, 0, 255);
      strokeWeight(10);
      line(0, yCoord, width, yCoord);
      yCoord +=30;
    }
}

void tunnel(int tunnelDensity)  //bespoke overloaded method utilising a While Loop, used in draw to set up bottom half of tunnel
{
  int yCoord = 580;

  int i = 1;
  while (i < 3)
    if (xFood <= 400 + body / 4) {
      stroke(random(255), random(255), random(255));
      strokeWeight(tunnelDensity);
      line(0, yCoord, width, yCoord);
      yCoord += 30;
      i++;
    } else {
      stroke(0, 0, 255);
      strokeWeight(tunnelDensity);
      line(0, yCoord, width, yCoord);
      yCoord += 30;
      i++;
    }
}

void tunnelPattern()  //bespoke method, utilising a While Loop, used to create pattern within tunnel
{
  int xLine2 = 60;
  int i = 10;
  while (i<width) {
    stroke(0, 0, 255, 65);
    strokeWeight(3);
    line(i, 570, xLine2, 150);
    xLine2+=60;
    i+=60;
  }
}
void drawPacman()  //bespoke method used to draw PacMan
{
  noStroke();
  fill(255, 255, 0);
  circle(300, height/2, body);  //PacMan body

  fill(0); 
  arc(300, 280, 75, 75, radians(235), radians(485)); // PacMan eye, using Arc and Radians to create the angle of eye

  stroke(0, 200);
  strokeWeight(2);
  line(300, height/2, 300+body/2, height/2);  //PacMan's closed mouth
}

void drawMsPacman()  //bespoke method used to draw Ms. PacMan
{
  noStroke();
  fill(255, 255, 0);
  circle(300, height/2, body);  //Ms. PacMan body

  fill(0);
  circle(250, 400, 10);  //Ms PacMan's beauty spot

  fill(0); 
  arc(300, 280, 75, 75, radians(235), radians(485)); //Ms. PacMan eye, using Arc and Radians to create the angle of eye


  noStroke();
  fill(255, 0, 0);
  ellipse (470, height/2, 37, 50);  //Ms. PacMan's red lipstick

  stroke(0);
  strokeWeight(2);
  line(300, height/2, 300+body/2, height/2);  //Ms. PacMan's closed mouth

  msPacmanBow(231, 47, 57);  //Ms. PacMan's hair bow, inputting RGB parameters to create a reddish colour
}

void pacmanFood()  //Using bespoke method to draw PacMan amd Ms. PacMan's food
{
  noStroke();
  fill(random(255), random(255), random(255));  //random colours generated for PacMan and Ms. PacMan's food
  circle(xFood, height/2, foodDiameter);  //starting co-ordinates for PacMan and Ms. PacMan's food
}

void msPacmanBow(int rBow, int gBow, int bBow)  //Bespoke method utilising a For Loop, to create Ms. PacMan's hair bow. Parameter for stroke colour taken
{
  fill(rBow, gBow, bBow);  //Colour of bow, which is generated from parameters that are input when calling the method
  stroke(0);  //Outline colour of bow 

  int xCoord = 125;

  for (int i = 1; i < 3; i++) {
    ellipse(xCoord, height/3, 30, 100);
    xCoord = xCoord + 50;
  }  //For Loop used to create the 2 ellipses either side of the middle part of the bow

  ellipse(150, height/3, 50, 50);  //Middle part of bow
}

void mouseDragged()  //Using mouse method to change character from PacMan, to Ms. PacMan
{
  if ((mouseX > 300 - body/2) && (mouseX < 300 + body/2) && (mouseY > height/2 - body/2) && (mouseY < height/2 + body/2)) {
    drawMsPacman();  //Nested If statement within mouseDragged, first condition if Ms. PacMan is drawn if the mouse is dragged within the positions outlined above
    if (xFood <= 300 + body/2 + 15)  //Second condition, if x position of Ms. PacMan's food meets the parameters, the following code is executed
    {
      stroke(0);
      fill(0);  
      arc(300, height/2, body, body, radians(335), radians(385)); //Ms PacMan's mouth, using Arc and Radians to create the angle of mouth
      pacmanFood(); //Redrawing Ms PacMan's food over the open mouth Arc in order for it to appear in front
    }
  }
}

void mouseClicked()  //Mouse method used to save the project as a .PNG image file by using a bespoke method
{
  saveProject();
}

void saveProject()  //Bespoke method utilising an If Statement, to save the project as a .pNG image file, if the right mouse button is clicked
{
  if (mouseButton == RIGHT)
  {
    save ("pacman.PNG"); // saves the project as a .PNG image file
  }
}
