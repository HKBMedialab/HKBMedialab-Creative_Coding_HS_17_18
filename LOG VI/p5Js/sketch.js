
var offset=5;


function setup() { 
  createCanvas(windowWidth, windowHeight);
  strokeWeight(20);
  noFill();
} 

function draw() { 
	blendMode(BLEND);
  	background(255);
    blendMode(MULTIPLY);
  	stroke(255, 0, 255);
  	ellipse(width/2+random(-offset,offset), height/2+random(-offset,offset), 200, 200);
  	stroke(0, 255, 255);
  	ellipse(width/2+random(-offset,offset), height/2+random(-offset,offset), 200, 200);
  	stroke(255, 255, 0);
  	ellipse(width/2+random(-offset,offset), height/2+random(-offset,offset), 200, 200);
}

function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
}