PVector offset=new PVector(100, 0);
PVector center=new PVector(0, 0);
float radius=10;

void setup() {
  size(500, 500);
  center.set(width/2, height/2);
  noStroke();
}

void draw() {
  offset.rotate(radians(1));  
  PVector position=PVector.add(offset, center); 
  //ellipse(position.x, position.y, radius*2, radius*2);
  fill(255,0,0);
  println(offset.y);
  pushMatrix();
  translate(position.x,position.y);
  rotate(offset.heading());
  triangle(-10,0,10,0,0,10);
  popMatrix();
}