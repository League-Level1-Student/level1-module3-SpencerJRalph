void setup() {
   size(300,800);
}
int gravity = 1;
int birdYVelocity = 50;
int x = 150;
int y = 350;
int pipeX = 300;
int pipeGap = 100;
int upperPipeHeight = 250;
int lowerPipeHeight = 800 - upperPipeHeight - pipeGap;
boolean endgame = false;
boolean gameend = false;
void draw() {
 

  background(0, 0, 252);
fill(252, 252, 13);
stroke(0, 0, 0);
ellipse(x, y, 30, 25);

fill(0, 252, 30);
rect(pipeX, 0, 75, upperPipeHeight);
fill(0,252,30);
rect(pipeX, upperPipeHeight + pipeGap, 75, lowerPipeHeight);
   fill(201,165,118);

  rect(0,700,300,100);
y++;
y=y+gravity;
pipeX--;
teleportPipes();
endgame = intersectsPipes();
  gameend = hitsGround();
if(endgame == true) {
  noLoop();}
  if(gameend == true){
    noLoop();
  }
}

boolean intersectsPipes() { 
         if (y < upperPipeHeight && x > pipeX && y < (pipeX+pipeGap)){
           print("collision");
            return true; }
        else if (y>lowerPipeHeight && x > pipeX && x < (pipeX+pipeGap)) {
          print("collision");
           return true; }
        else { return false; }
}
boolean hitsGround() {
  if ( y > 700){
    print("collision");
    return true; }
    else {return false;}
}
void mousePressed() {
  y=y-birdYVelocity;
}
void teleportPipes() {
  if(pipeX < 0) {
    pipeX = 300;
    upperPipeHeight = (int) random(100,500);
    lowerPipeHeight = 800 -  upperPipeHeight - pipeGap;
  }
}
