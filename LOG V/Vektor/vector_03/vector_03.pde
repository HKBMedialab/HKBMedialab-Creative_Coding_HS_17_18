PVector position=new PVector(width, 0);
float anglespeed=-1;
void setup() {
  size(500, 500);
  position.set(width, height);
}

void draw() {
  line(0, height, position.x, position.y);
  position.rotate(radians(anglespeed));
  if (position.x<0 || position.y>height)anglespeed*=-1;
}