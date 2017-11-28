float x1=50;
float y1=250;
float cpx1=250;
float cpy1=250;
float cpx2=250;
float cpy2=250;
float x2=450;
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
  noFill();
  
  float offset=0;
  
  float cd1 = 250+(sin(angle)*100);
  float cd2 = 250-(sin(angle)*100);
  float d2 = 250+(sin(angle+PI/2)*100);
  cpy1=cd1;
  cpy2=cd2;
  y2=d2;
  stroke(0, 255, 255);

  bezier(x1, y1, cpx1, cpy1, cpx2, cpy2, x2, y2);



  cd1 = 250+(sin(angle+PI/2)*50);
  cd2 = 250-(sin(angle+PI/2)*50);
  d2 = 250+(sin(angle+PI)*100);
  cpy1=cd1;
  cpy2=cd2;
  y2=d2;

  stroke(255, 0, 255);
  bezier(x1, y1, cpx1, cpy1, cpx2, cpy2, x2, y2);




  cd1 = 250+(sin(angle+PI)*50);
  cd2 = 250-(sin(angle+PI)*50);
  d2 = 250+(sin(angle+PI*1.5)*100);
  cpy1=cd1;
  cpy2=cd2;
  y2=d2;

  stroke(255, 255, 0);
  bezier(x1, y1, cpx1, cpy1, cpx2, cpy2, x2, y2);

  angle+=0.02;

  //cpy1++;
  // cpy2--;
  //cpx1--;
  //cpx2++;
}