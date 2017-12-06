PVector position=new PVector(0, 0);
PVector speed=new PVector(5, 1);
float radius=25;
void setup() {
  size(500, 500);
  position.set(width/2, height/2);
}

void draw() {
  ellipse(position.x, position.y, radius*2, radius*2);
  position.add(speed);
  if (position.x>width-radius ||position.x<radius) {
    speed.x*=-1;
  }
  if (position.y>height-radius ||position.y<radius) {
    speed.y*=-1;
  }
}