PVector distance=new PVector(100, 0);
PVector distance2=new PVector(-100, 0);

void setup() {
  size(500, 500);
  smooth();
  pixelDensity(2);
  noStroke();
  fill(#55EA2D);
  background(0);
}


void draw() {
  // background(0);
  pushMatrix();
  translate(width/2, height/2);
  noStroke();
  fill(#55EA2D);

  //ellipse(distance.x, distance.y, 8, 8);

  fill(255, 0, 0);
  //ellipse(distance2.x, distance2.y, 8, 8);
  stroke(255, 0, 0, 100);
  line(distance.x, distance.y, distance2.x, distance2.y);

  popMatrix();
  distance.rotate(radians(5));
  distance2.rotate(radians(2));
}