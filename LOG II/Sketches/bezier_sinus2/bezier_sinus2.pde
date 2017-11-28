float x1=100;
float y1=250;
float cpx1=250;
float cpy1=250;
float cpx2=250;
float cpy2=250;
float x2=400;
float y2=250;


float angle = 0;


void setup() {
  size(500, 500);
  background(255);
  smooth();
  pixelDensity(2);
  blendMode(MULTIPLY);
}

void draw() {
  background(255);
  strokeWeight(10);

  stroke(0);
  fill(0);
  rect(0, 0, 100, height);
  noFill();

  float offset=0;
  float cd1 = 250+(sin(angle+offset)*100);
  float cd2 = 250-(sin(angle+offset)*100);
  float d2 = 255;//250+(sin(angle+PI/2)*100);
  cpy1=cd1;
  cpy2=cd2;
  y2=d2;

  stroke(0, 255, 255);
  bezier(x1, y1, cpx1, cpy1, cpx2, cpy2, x2, y2);

  offset+=PI/3;
  cd1 = 250+(sin(angle+offset)*100);
  cd2 = 250-(sin(angle+offset)*100);
  d2 = 255;//250+(sin(angle+PI/2)*100);
  cpy1=cd1;
  cpy2=cd2;
  y2=d2;



  stroke(255, 0, 255);
  bezier(x1, y1, cpx1, cpy1, cpx2, cpy2, x2, y2);

  offset+=PI/3;
  cd1 = 250+(sin(angle+offset)*100);
  cd2 = 250-(sin(angle+offset)*100);
  d2 = 255;//250+(sin(angle+PI/2)*100);
  cpy1=cd1;
  cpy2=cd2;
  y2=d2;


  stroke(255, 255, 0);
  bezier(x1, y1, cpx1, cpy1, cpx2, cpy2, x2, y2);
  
  noStroke();
   fill(0);
  rect(400, 0, 100, height);

  angle+=0.1;


}