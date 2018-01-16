PImage img; 
int posX=0;
int posY=0;



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
  // turbo...
  for (int i=0; i<100; i++) {
    posX=int(random(width));
    posY=int(random(height));
    color c = img.get (posX, posY);
    //float brightness=brightness(c);
    //float mappedbrightness=map(brightness,0,255,speed,2);

    fill(c, 50);
    noStroke();
    ellipse(posX, posY, random(20), random(20));
  }
}