int x = 300;
int y = 480;
car hi = new car(100, 100, 50, 25);
car bye = new car(300, 300, 15, 40);
car m = new car( 450, 350, 30, 25);
car t = new car( 220, 320, 40, 40);
void setup()
{
  size(600, 500);
}

void draw()
{
  background(20,97,196);
  fill(10,106,20);
  ellipse(x,y,30,30);
  
  if(x>600) {
   x = 600;
  }
  else if(x<0) {
    x = 0;
  }
  if(y>500) {
    y = 500;
  }
  else if(y<0) {
    y = 0;
  }
  hi.display();
  bye.display();
  m.display();
  t.display();
}

void keyPressed()
{
    if(key == CODED){
        if(keyCode == UP)
        {
y = y -30;        }
        else if(keyCode == DOWN)
        {
          y=y+30;
}
        else if(keyCode == RIGHT)
        {
           x= x+30;
        }
        else if(keyCode == LEFT)
        {
           x= x-30;
        }
    }
}
public class car{
  int carX;
  int carY;
  int carSize;
  int carSpeed;
  
  public car(int a, int b, int c, int d) {
   this.carX = a;
   this.carY = b;
   this.carSize = c;
   this.carSpeed = d;
  }
  void display()
  {
    fill(0,255,0);
    rect(carX , carY,  carSize, 50);
  }
 
}
