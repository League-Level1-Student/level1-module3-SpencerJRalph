int x = 300;
int y = 480;

void setup()
{
  size(600, 500);
}

void draw()
{
  background(20,97,196);
  fill(10,106,20);
  ellipse(x,y,30,30);
}

void keyPressed()
{
    if(key == CODED){
        if(keyCode == UP)
        {
y+10        }
        else if(keyCode == DOWN)
        {
          y-10;
}
        else if(keyCode == RIGHT)
        {
            x+10
        }
        else if(keyCode == LEFT)
        {
            x-10;
        }
    }
}
