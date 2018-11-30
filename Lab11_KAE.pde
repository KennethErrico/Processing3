/*Ken Errico
 Lab 11
 This is a compressed reel of an animated film that features an unlikely hero and
 a princess released in 1992. Holding the mouse button down will give you a glimpse 
 and the color of the stars represents the stars of the movie. 
 Can you guess which movie it is?
 The work cited is listed far below so as to not give anything away
 SO DON'T SCROLL DOWN UNTIL YOU GUESS IT OR GIVE UP!!!!!!!!!!!!!!!!!*/

Star[] star_list;
float image_x = 0;
float image_y = 0;
PImage imgReel;
PImage imgCartoon1;
int max_stars = 3;



void setup()
{
  size(960, 750);

  background(0);
imgReel = loadImage("REEL.jpg");
  star_list = new Star[max_stars];
  
    star_list[0] =new Star();
    star_list[0].col = color(108,144,242);
    star_list[0].randomLocation();
    
     star_list[1] =new Star();
    star_list[1].col = color(171,26,216);
         star_list[1].randomLocation();
         
      star_list[2] =new Star();
    star_list[2].col = color(7,236,242);
     star_list[2].randomLocation();
 
}


void draw()
{
  int star= 0;
  while (star < max_stars)
  {
    star_list[star].change1();
    star_list[star].display();
    star = star +1;
  }

  image(imgReel, image_x, image_y, 1920, 410);

  image_x = image_x - 37;

  if (image_x < width-1920)
  {
    image_x = 0;
  }
  if (mousePressed == true)
  {
    set (0, 0, imgReel);
  }
}



class Star
{
  float x = random(960);
  float y = random(425, 735);
  float w = 25;
  float h = 25;
  color col = color(108, 144, 242);
  

  void display()
  {
    fill(col);
    triangle(x, y, x+40, y, x+20, y+15);      
    triangle(x+20, y-15, x+28, y+5, x+10, y+5);
    triangle(x+5, y+25, x+12, y+5, x+30, y+8);
    triangle(x+32, y+25, x+7, y+5, x+27, y+5);
  }

  void change1()
  {
    x = x + 5;
    if (x > width)
    {
      randomLocation();
    }
  }
void moveTo(float new_x, float new_y)
{
 x = new_x;
 y = new_y;
}

void randomLocation()
{
  x = random(960);
  y = random(425, 735); 
}
}





































































//work cited:http://qa.thehollywoodmag.com/wp-content/uploads/2015/11/Aladdin.jpg