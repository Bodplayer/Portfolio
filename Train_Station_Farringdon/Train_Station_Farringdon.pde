float angle = 0;

void setup() {
  size(600, 600);
  textAlign(CENTER, CENTER);
  textSize(60);
}

void draw() {
  background(220);

  float pulse = sin(angle) * 15;

  // Save matrix state and translate to center
  pushMatrix();
  translate(width/2, height/2);

  // Outer Red Ring
  stroke(0);
  strokeWeight(3);
  fill(220, 20, 20);
  ellipse(0, 0, 300 + pulse, 300 + pulse);

  // Inner Hole
  fill(220);
  ellipse(0, 0, 180 - pulse, 180 - pulse);

  // Blue Bar
  float tilt = map(mouseX, 0, width, -1, 1);
  rotate(tilt);

  fill(20, 30, 200);
  rectMode(CENTER);
  rect(0, 0, 340, 70);

  // Station Text
  fill(255);
  text("Farringdon", 0, -5);

 
  popMatrix();

  angle += 0.05;
}
