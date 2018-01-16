PImage img; 
int posX=0;
int posY=0;
int eWidth=50;
int eHeight=50;

int speed=5;

void settings() {
}

void setup() {
  frameRate(500);
  img = loadImage("image.jpg");
  // img = loadImage("mechanicalman.jpg");

  // use only numbers (not variables) for the size() command, Processing 3
  size(1, 1);

  // allow resize and update surface to image dimensions
  surface.setResizable(true);
  surface.setSize(img.width, img.height);
}

void draw() {
  //image(img,0,0);
  color c = img.get (posX, posY);
  fill(c);
  noStroke();
  ellipse(posX, posY, eWidth, eHeight);

  if (posX+speed>=width) {
    posX=0;
    posY+=speed;
  } else {
    posX+=speed;
  }
}