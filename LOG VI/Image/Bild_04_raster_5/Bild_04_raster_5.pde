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
}

void draw() {
  //image(img,0,0);
  // speed up
  for (int i=0; i<10; i++) {
    color c = img.get (posX, posY);
    float brightness=brightness(c);
    int mappedbrightness=int(map(brightness, 0, 255, 10, 0));
    for (int k=0; k<mappedbrightness; k++) {
      float d=abstand/mappedbrightness;
      line(posX, posY+(d*k), posX+abstand, posY+(d*k));
    }

    //fill(0);
    //noStroke();
    //ellipse(posX, posY, mappedbrightness, mappedbrightness);

    if (posX+abstand>=width) {
      posX=0;
      posY+=abstand;
    } else {
      posX+=abstand;
    }
  }
}