int iterations;

int rectsize=50;
int posX=rectsize/2;
int posY=rectsize/2;

float angle=0;
float anglespeed=0.05;

void setup() {
  size(500, 500);
  iterations=(500/rectsize)*(500/rectsize);
  
  background(255);
  colorMode(HSB);
  rectMode(CENTER);
  noStroke();
}

void draw() {
  background(255);
   posX=rectsize/2;
 posY=rectsize/2;
  for (int i=0; i<iterations; i++) {
    pushMatrix();
    translate(posX,posY);
    rotate(angle);
    fill(150, 200, 100,100);
    rect(0, 0, rectsize, rectsize);
    posX+=rectsize;
    if (posX>width) {
      posX=rectsize/2;
      posY+=rectsize;
    }
    popMatrix();
  }
  if(angle>2*PI || angle < 0)anglespeed*=-1;
  angle+=anglespeed;
}