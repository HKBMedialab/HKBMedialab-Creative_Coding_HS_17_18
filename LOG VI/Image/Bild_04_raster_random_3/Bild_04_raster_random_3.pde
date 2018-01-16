PImage img; 
int posX=0;
int posY=0;
float speed=50;
int counter=0;

float rectsize=50;
int anzahl=10;


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
  for (int i=0; i<anzahl; i++) {
    //posX=int(random(width));
    //posY=int(random(height));
    color c = img.get (posX, posY);
    float brightness=brightness(c);
    float hue=hue(c);

    float mappedbrightness=map(brightness, 0, 255, 5, 1);
    float bangle=map(brightness, 0, 255, 90, 0);

    fill(c, 50);
    //stroke(c, 200);
    noStroke();
    //strokeWeight(mappedbrightness);
    //line(posX, posY,posX+random(-20,50), posY+random(-20,50));
    //line(posX, posY,posX+mappedbrightness, posY+mappedbrightness);
    //line(posX, posY, mouseX,mouseY);

    pushMatrix();
    translate(posX, posY);
    //rotate(radians(bangle));
    // line(0, 0, 20, 0);
    ellipse(0, 0, rectsize, rectsize);
    popMatrix();

    if (posX+speed>=width) {
      posX=counter;
      posY+=speed;
    } else {
      posX+=speed;
    }

    if (posY+speed>=height) {
      //counter++;
      if (counter>speed)counter=0;
      posX=counter;
      posY=0;
      rectsize/=2;
      speed/=2;
      anzahl*=2;
      println(rectsize);
     
      if (rectsize<2) {
        int r=int(random(50,100));
        rectsize=r;
        speed=r;
        anzahl=5;
      }
    }

    //ellipse(posX, posY, random(20), random(20));
  }
}