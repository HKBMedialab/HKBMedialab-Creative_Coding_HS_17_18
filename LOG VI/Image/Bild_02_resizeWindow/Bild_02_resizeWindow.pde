PImage img; 

void settings(){
  
}

void setup() {
  img = loadImage("mechanicalman.jpg");
  // use only numbers (not variables) for the size() command, Processing 3
  size(1, 1);
   
  // allow resize and update surface to image dimensions
  surface.setResizable(true);
  surface.setSize(img.width, img.height);
  
}

void draw() {
  image(img,0,0);
}