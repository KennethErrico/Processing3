/*Ken Errico
 Lab 8 Putting it together
 Program Draws a Beach Sunset horizon using primitive commands, a loop of seashells,
 if and else statements, with custom, and built in functions, global and local variables
 if top half is clicked it cycles clouds and birds, bottom cycles starfish
 and buckets*/

//global variables change color
color day = color(0, 120, 255);
color starfish = color(180, 50, 0);

//sets states for top and bottom
int state = 0;
int stateTwo = 0;

//draws once 
void setup()

{
  size(500, 500);
  background(day);

  //sun
  noStroke();
  fill(255, 60, 100);
  ellipse(150, 150, 150, 150);

  //water
  fill(0, 0, 100);
  rect(0, 300, 500, 100);

  //Sand
  fill(255, 200, 120);
  rect(0, 325, 500, 225);


  //while loop to draw seashells
  int seaShell_x = 0;

  while (seaShell_x < 10000)
  {
    drawSeashell(seaShell_x, height -40);
    seaShell_x = seaShell_x +35;
  }
  //Umbrella
  stroke(0);
  strokeWeight(5);
  line(430, 400, 460, 525);
  noStroke();
  fill(0, 150, 0);
  arc(430, 450, 150, 200, 6.5/6.0*PI, 11.0/6.0*PI, CHORD);
}
// draws repeatedly (when used)
void draw()
{
}
/*event function draws cycles between clouds and birds or starfish
 and buckets depending on state and mouse y's position*/
void mousePressed()
{
  if (mouseY > 300)
  {
    drawBottom(mouseX, mouseY);
  }
  changeState();
  if (mouseY < 300)
  {
    drawTop(mouseX, mouseY);
  }
  changeStateTwo();
}
//changes state for bottom items
void changeState()
{
  state = state + 1;
  if (state > 1)
  {
    state = 0;
  }
}
//changes state for top items
void changeStateTwo()
{
  stateTwo = stateTwo +1;
  if (stateTwo > 1)
  {
    stateTwo = 0;
  }
}
//cycles bucket and starfish drawings
void drawBottom(float x, float y)
{
  if (state == 0)
  {
    drawBucket(mouseX, mouseY);
  } else if (state == 1)
  {
    drawStarfish(mouseX, mouseY);
  }
}
//cycles birds and cloud drawings
void drawTop(float x, float y)
{
  if (stateTwo == 0)
  {
    drawBirds(mouseX, mouseY);
  } else if (stateTwo == 1)
  {
    drawClouds(mouseX, mouseY);
  }
}

//custom draws bucket
void drawBucket(float x, float y)
{
  noFill();
  stroke(0);
  strokeWeight(2);
  arc(x, y, 30, 30, PI, 2*PI, CHORD);
  stroke(255, 0, 0);
  fill(255, 0, 0);
  quad(x-15, y, x+15, y, x+10, y+15, x-10, y+15);
}
//custom draws starfish
void drawStarfish(float x, float y)
{
  stroke(starfish);
  fill(starfish);
  //left and right top arms
  triangle(x, y, x+40, y, x+20, y+15);
  //top middle        
  triangle(x+20, y-15, x+28, y+5, x+10, y+5);
  //bottom left
  triangle(x+5, y+25, x+12, y+5, x+30, y+8);
  //bottom right
  triangle(x+32, y+25, x+7, y+5, x+27, y+5);
}
//custom draws birds
void drawBirds(float x, float y)
{
  stroke(0);
  strokeWeight(3);
  line(x, y, x+25, y+25);
  line(x, y, x-25, y+25);
  strokeWeight(5);
  line(x+40, y+40, x+65, y+65);
  line(x+40, y+40, x+15, y+65);
  strokeWeight(2);
  line(x+110, y+10, x+120, y+30);
  line(x+110, y+10, x+100, y+30);
}
//custom draws cloud
void drawClouds(float x, float y)
{
  noStroke();
  fill(255);
  ellipse(x, y, 40, 20);
  ellipse(x-5, y+4, 80, 20);
  ellipse(x, y+14, 120, 29);
  ellipse(x+4, y+19, 72, 35);
}
//custom draws seashell
void drawSeashell(float x, float y)
{
  stroke(0);
  fill(220);
  strokeWeight(1);
  arc(x, y, 30, 30, 4.0/6.0*PI, 13.789/6.0*PI, CHORD);
  strokeWeight(2);
  line(x-15, y+13, x+15, y+13);
}