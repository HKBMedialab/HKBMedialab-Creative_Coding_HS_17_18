/*
 HKB Creative Coding
 Einführung
 Michael Flueckiger
 */

float posX=0;
float posY=0;


float posX2=0;
float posY2=0;

color mycolor=color(150, 150, 255);
int speed=5;

int len = 100;
float angle = 0.0;
float angle2 = 0.0;

float angle_stepsize = 0.1;


// Setup Funktion, wird einmal aufgerufen
void setup() { 
  size(500, 500); // Grösse des Fensters definieren
  background(220);
  pixelDensity(2);
  strokeWeight(4);
}

// draw Funktion, wird geloopt
void draw() {
  background(0);
  stroke(mycolor, 200);

  // calculate x, y from a vector with known length and angle
  posX = width/2+len * cos (angle);
  posY = height/2+len * sin (angle);

  posX2 = width/3+len * cos (angle2);
  posY2 = height/3+len * sin (angle2);
  //ellipse(posX, posY2, 20, 20);
  //ellipse(posX2, posY, 20, 20);

  line(posX, posY2, posX2, posY);


  angle+=0.07;
  angle2+=0.1;
}