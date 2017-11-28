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
  strokeWeight(5);

  fill(0);
  noStroke();
  rect(0, 0, 100, height);
  
  for (int i=1;i<5;i++){
  drawCurves(500/5*i);
  }
  
  

  noStroke();
  fill(0);
  rect(400, 0, 100, height);

  angle+=0.1;
}


void drawCurves(float _posy) {
  float posy=_posy;

  noFill();
  float offset=0;
  float cd1 = posy+(sin(angle+offset)*100);
  float cd2 = posy-(sin(angle+offset)*100);
  float d2 = posy;//250+(sin(angle+PI/2)*100);
  cpy1=cd1;
  cpy2=cd2;
  y2=d2;

  stroke(0, 255, 255);
  bezier(x1, y1, cpx1, cpy1, cpx2, cpy2, x2, y2);

  offset+=PI/3;
  cd1 = posy+(sin(angle+offset)*100);
  cd2 = posy-(sin(angle+offset)*100);
  d2 = posy;//250+(sin(angle+PI/2)*100);
  cpy1=cd1;
  cpy2=cd2;
  y2=d2;



  stroke(255, 0, 255);
  bezier(x1, y1, cpx1, cpy1, cpx2, cpy2, x2, y2);

  offset+=PI/3;
  cd1 = posy+(sin(angle+offset)*100);
  cd2 = posy-(sin(angle+offset)*100);
  d2 = posy;//250+(sin(angle+PI/2)*100);
  cpy1=cd1;
  cpy2=cd2;
  y2=d2;


  stroke(255, 255, 0);
  bezier(x1, y1, cpx1, cpy1, cpx2, cpy2, x2, y2);
}