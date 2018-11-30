/*Ken Errico
 Lab 3
 Program Draws a Beach Sunset 4th of July digital postcard
 using primitive commands, global and local variables
 */
 
//global variable randomly changes color
color random =color(random(255), random(255), random(255));

float sun_x = 250;
float sun_y = 150;

PFont font;
void setup()

{
  size(500, 500);
  font = loadFont("Arial-ItalicMT-48.vlw");
  textFont(font);
}


void draw()
{
  
  random =color(random(255), random(255), random(255));
  noStroke();
  //Sky
  fill(0, 120, 255);
  rect(0, 0, 500, 300);

  drawSun(sun_x, sun_y);
  sun_y = sun_y +.5;

  //water
  fill(0, 0, 100);
  rect(0, 300, 500, 100);

  //Sand
  fill(255, 200, 120);
  rect(0, 375, 500, 225);

  //Clouds
  fill(255);
  ellipse(65, 216, 40, 20);
  ellipse(60, 220, 80, 20);
  ellipse(65, 230, 120, 29);
  ellipse(69, 235, 72, 35);
  ellipse(360, 230, 70, 35);
  ellipse(360, 250, 150, 40);
  ellipse(363, 237, 110, 35);
  ellipse(363, 260, 130, 35);
  ellipse(360, 265, 70, 35);

  //Birds
  stroke(0);
  strokeWeight(3);
  line(150, 150, 175, 175);
  line(150, 150, 125, 175);
  strokeWeight(5);
  line(190, 190, 215, 215);
  line(190, 190, 165, 215);
  strokeWeight(2);
  line(260, 160, 270, 180);
  line(260, 160, 250, 180);

  //SeaShells
  fill(220);
  strokeWeight(1);
  arc(80, 470, 30, 30, 4.0/6.0*PI, 13.789/6.0*PI, CHORD);
  strokeWeight(2);
  line(65, 483, 95, 483);
  strokeWeight(1);
  arc(175, 430, 30, 30, 4.0/6.0*PI, 13.789/6.0*PI, CHORD);
  strokeWeight(2);
  line(160, 443, 190, 443);

  //Umbrella
  strokeWeight(5);
  line(430, 400, 460, 525);
  noStroke();
  fill(0, 150, 0);
  arc(430, 450, 150, 200, 6.5/6.0*PI, 11.0/6.0*PI, CHORD);

  //Starfish
  fill(180, 50, 0);
  //left and right top arms
  triangle(255, 440, 295, 440, 275, 455);
  //top middle        
  triangle(275, 425, 283, 445, 265, 445);
  //bottom left
  triangle(260, 465, 267, 445, 285, 448);
  //bottom right
  triangle(287, 465, 262, 445, 282, 445);

  //bucket
  noFill();
  stroke(0);
  strokeWeight(2);
  arc(380, 460, 30, 30, PI, 2*PI, CHORD);
  stroke(255, 0, 0);
  fill(255, 0, 0);
  quad(365, 460, 395, 460, 390, 485, 370, 485);
  
  fill(random);
  text("Happy 4th of July!", 60, 100);
  
  noStroke();
drawFirework(mouseX, mouseY);
}

//custom function to draw sun
void drawSun(float x, float y)
{
  fill(255, 60, 100);
  ellipse(x, y, 175, 175);
}

//custom function to draw firework
void drawFirework(float x, float y)
{
  fill(random);
  //left and right top arms
  triangle(x, y, x+40, y, x+20, y+15);
  //top middle        
  triangle(x+20, y-15, x+28, y+5, x+10, y+5);
  //bottom left
  triangle(x+5, y+25, x+12, y+5, x+30, y+8);
  //bottom right
  triangle(x+32, y+25, x+7, y+5, x+27, y+5);

}