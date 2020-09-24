void setup() {
   size(300,800);
}
int gravity = 1;
int birdYVelocity = 30;
int x = 150;
int y = 350;
int pipeX = 300;
int pipeGap = 60;
int upperPipeHeight = 250;

void draw() {
  background(0, 0, 252);
fill(252, 252, 13);
stroke(0, 0, 0);
ellipse(x, y, 30, 25);

fill(0, 252, 30);
rect(pipeX, 0, 75, upperPipeHeight);
fill(0,252,30);
rect(pipeX, upperPipeHeight + pipeGap, 75, upperPipeHeight);
y++;
y=y+gravity;
pipeX--;
teleportPipes();
}
void mousePressed() {
  y=y-birdYVelocity;
}
void teleportPipes() {
  if(pipeX < 0) {
    pipeX = 300;
    upperPipeHeight = (int) random(100,500);
  }
}
