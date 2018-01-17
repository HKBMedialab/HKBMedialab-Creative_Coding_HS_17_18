PImage img; 
int posX=0;
int posY=0;
int eWidth=50;
int eHeight=50;

int abstand=10;

void settings() {
}

void setup() {
  img = loadImage("image.jpg");
  // img = loadImage("mechanicalman.jpg");

  // use only numbers (not variables) for the size() command, Processing 3
  size(1, 1);

  // allow resize and update surface to image dimensions
  surface.setResizable(true);
  surface.setSize(img.width, img.height);
  background(255);
}

void draw() {
  //image(img,0,0);
  // speed up
  for (int i=0; i<100; i++) {
    color c = img.get (posX, posY);
    float brightness=brightness(c);
    int mappedbrightness=int(map(brightness, 0, 255, 5, 0));
    for (int k=0; k<mappedbrightness; k++) {
      float d=abstand/mappedbrightness;
      stroke(0);
      noFill();
      ellipse(posX, posY, d*k*2, (d*k)*2);
    }

    if (posX+abstand>=width) {
      posX=0;
      posY+=abstand;
    } else {
      posX+=abstand;
    }
  }
}