void setup() {
  size(600, 600);
  background(255, 255, 255);
  noLoop();
  
}

void draw() {
  fill(0, 0, 255);
  stroke(0, 0, 0);
  strokeWeight(1);
  
  ellipse(100, 100, 80, 80);
  rect(400, 100, 80, 80);
  line(100, 400, 500, 400);
}