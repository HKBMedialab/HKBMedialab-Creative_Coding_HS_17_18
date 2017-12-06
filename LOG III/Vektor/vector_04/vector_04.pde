PVector position;
float anglespeed=5;

color col;

float angleBefore=0;


void setup() {
  size(500, 500);
  position=new PVector(-100, 0);
  colorMode(HSB);
  col=color(0, 255, 255);
  smooth(8);
  pixelDensity(2);
  noStroke();
  background(0,50,50);
}

void draw() {
  col=color(hue(col),saturation(col)-3,brightness(col)-3);
  fill(col);
  pushMatrix();
  translate(width/2, height/2);
  ellipse(position.x, position.y, 20, 20);
  position.rotate(radians(anglespeed));
  popMatrix();
  if (angleBefore>position.heading()){
    col=color(random(255), 255, 255);
  }
  angleBefore=position.heading();
}