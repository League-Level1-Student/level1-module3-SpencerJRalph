int x = 300;
int y = 480;
car hi = new car(100, 100, 50, 25);
car bye = new car(300, 300, 15, 40);
car m = new car( 450, 350, 30, 25);
car t = new car( 220, 320, 40, 40);

void setup()
{
  
   size(844,600);
        back = loadImage("froggerBackground.png");
        carLeft = loadImage("carLeft.png");
        carLeft.resize(160,100);
        carRight = loadImage("carRight.png");
        carRight.resize(160,100);
        frog = loadImage("frog.png");
        frog.resize(75,75);
}
 PImage back;
 PImage carLeft;
 PImage carRight;
 PImage frog;
   
   
      
    
void draw()
{
  background(back);

  if (x>600) {
    x = 600;
  } else if (x<0) {
    x = 0;
  }
  if (y>500) {
    y = 500;
  } else if (y<0) {
    y = 0;
  }
  hi.moveLeft();
 
  bye.moveRight();

  m.moveRight();
  
  t.moveLeft();
 
  boolean collision = t.intersects();
  if(collision) {
    noLoop();
  }
  collision = m.intersects();
  if(collision) {
    noLoop();
  }
  collision = hi.intersects();
  if(collision) {
    noLoop();
  }
  collision = bye.intersects();
  if(collision) {
    noLoop();
  }             
                 image (carLeft,hi.getX(),hi.getY());
        image (carRight,bye.getX(),bye.getY());
        image (carLeft,t.getX(),t.getY());
        image (carRight,m.getX(), m.getY());
        image (frog, x, y);
}

void keyPressed()
{
  if (key == CODED) {
    if (keyCode == UP)
    {
      y = y -30;
    } else if (keyCode == DOWN)
    {
      y=y+30;
    } else if (keyCode == RIGHT)
    {
      x= x+30;
    } else if (keyCode == LEFT)
    {
      x= x-30;
    }
  }
}
public class car {
  int carX;
  int carY;
  int carSize;
  int carSpeed;
  boolean intersects() {
    if ((y > carY && y < carY+50) &&
      (x > carX && x < carX+carSize)) {
      return true;
    } else {
      return false;
    }
  }
  int getX() {
    return carX;
  }
  int  getY() {
    return carY;
  }
  int getSize() {
    return carSize;
  }
  public car(int a, int b, int c, int d) {
    this.carX = a;
    this.carY = b;
    this.carSize = c;
    this.carSpeed = d;
  }
  public void moveLeft() {
    carX--;
    if (carX<0) {
      carX = 600;
    }
  }
  public void moveRight() {
    carX++;
    if (carX>width) {
      carX = 0;
    }
  }
  void display()
  {
    fill(0, 255, 0);
    rect(carX, carY, carSize, 50);
  }
}
