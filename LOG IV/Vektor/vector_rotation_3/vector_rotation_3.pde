PVector offset=new PVector(60, 0);
PVector offset2=new PVector(80, 0);
PVector offset3=new PVector(100, 0);


PVector center=new PVector(0, 0);
float radius=10;

color col1=color(255, 20, 20);
color col2=color(255, 50, 50);
color col3=color(255, 100, 100);

float speed3=1;
float heading3Before=0;

void setup() {
  size(500, 500);
  center.set(width/2, height/2);
  noStroke();
  background(255, 240, 209);
  //frameRate(20);
}

void draw() {






  PVector position=PVector.add(offset, center); 
  PVector position2=PVector.add(offset2, center); 
  PVector position3=PVector.add(offset3, center); 

  //ellipse(position.x, position.y, radius*2, radius*2);
  fill(col1);
  pushMatrix();
  translate(position.x, position.y);
  rotate(offset.heading());
  triangle(-10, 0, 10, 0, 0, 10);
  popMatrix();




  //ellipse(position.x, position.y, radius*2, radius*2);
  fill(col2);
  pushMatrix();
  translate(position2.x, position2.y);
  rotate(offset2.heading());
  triangle(-10, 0, 10, 0, 0, 10);
  popMatrix();

float delta=heading3Before-offset3.heading();
  println(offset3.heading()+" "+heading3Before+" "+delta);
  if (heading3Before>offset3.heading()) {
    col3=color(random(255), random(255), random(255));
  }


  //ellipse(position.x, position.y, radius*2, radius*2);
  fill(col3);
  pushMatrix();
  translate(position3.x, position3.y);
  rotate(offset3.heading());
  triangle(-10, 0, 10, 0, 0, 10);
  popMatrix();

  heading3Before=offset3.heading();

  offset.rotate(radians(3));  
  offset2.rotate(radians(2.5));
  offset3.rotate(radians(speed3));
}

float truncate( float x ) {
  return round( x * 1000.0f ) / 1000.0f;
}