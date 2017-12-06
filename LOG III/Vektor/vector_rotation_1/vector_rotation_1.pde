PVector offset=new PVector(100, 0);
PVector center=new PVector(0, 0);
float radius=10;

void setup() {
  size(500, 500);
  center.set(width/2, height/2);
}

void draw() {
  offset.rotate(radians(1));  
  PVector position=PVector.add(offset, center); 
  ellipse(position.x, position.y, radius*2, radius*2);
}