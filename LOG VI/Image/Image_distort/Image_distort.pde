
PImage img;

float xPos=10;
float speed1=0.4;

float xPos2=0;
float speed2=3;
void setup () {

  size (300, 431);

  img = loadImage ("mechanicalman.jpg");
}

void draw () {
  image (img, 0, 0);

  // für alle Pixel in der Spalte der Mausposition
  for (int i=0; i < img.height; i=i+1) {
    // Farbwert auslesen
    // color c = img.get (mouseX, i);
    color c = img.get (int(xPos), i);
    stroke (c);
    //line (xPos, i, xPos, i);
    line (xPos-200, i, xPos, i);
  }

  for (int i=0; i < img.height; i=i+1) {
    // Farbwert auslesen
    // color c = img.get (mouseX, i);
    color c = img.get (int(xPos2), i);
    stroke (c);
    line (xPos2-10, i, xPos2, i);
  }
  xPos+=speed1;
  if (xPos>width) {
    xPos=0;
  }
  xPos2+=speed2;
  if (xPos2>width) {
    xPos2=0;
  }
}