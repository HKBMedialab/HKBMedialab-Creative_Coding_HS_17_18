
var numMover=100;
var  xPositions =[];
var yPositions =[];
var xSpeeds =[];
var ySpeeds =[];
var colors =[];

function setup() { 
  createCanvas(windowWidth, windowHeight);
  for (var i = 0; i < numMover; i++) {
      xPositions[i]=random(width);
      yPositions[i]=random(height);
      xSpeeds[i]=random(0.2, 5);
      ySpeeds[i]=random(1, 5);
      colors[i]=color(random(255), random(255), random(255));
    }  
  noStroke();
  background(0);

} 

function draw() { 
  fill(0,10);
  rect(0, 0, width, height);

  for (var i=0; i<numMover; i++) {
    xPositions[i]+=xSpeeds[i];
    yPositions[i]+=ySpeeds[i];

    if (xPositions[i]>width || xPositions[i]<0)xSpeeds[i]=xSpeeds[i]*-1;
    if (yPositions[i]>height || yPositions[i]<0)ySpeeds[i]=ySpeeds[i]*-1;

    fill(colors[i],100);
    rect(xPositions[i], yPositions[i], 10, 10);
  }
}

function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
}