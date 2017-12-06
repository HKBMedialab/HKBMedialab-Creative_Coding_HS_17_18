PVector position=new PVector(0, 0);
void setup() {
  size(500, 500);
  position.set(width/2, height/2);
}

void draw() {
  ellipse(position.x, position.y, 50, 50);
}