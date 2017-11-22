int posx=0;
int posy=0;

void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  fill(random(255),random(255),random(255));
  rect(posx, posy, 20, 20);
  posx+=30;
  if (posx>=width) {
    posx=0;
    posy+=30;
  }
}