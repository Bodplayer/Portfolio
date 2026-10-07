void setup() {
  size(400, 400);
}

void draw() {
  background(224);
  roundel(width / 2, height / 2);
  roundel(width / 4, height / 4);
  roundel(3 * width / 4, height / 4);
  roundel(width / 4, 3 * height / 4);
  roundel(3 * width / 4, 3 * height / 4);
}

void roundel(float x, float y) {
  ellipseMode(CENTER);

  fill(230, 150, 0);
  noStroke();
  ellipse(x, y, 150, 150);

  fill(50, 0, 200);
  strokeWeight(30);
  ellipse(x, y, 105, 105);

  fill(255);
  noStroke();
  ellipse(x, y, 50, 50);

  fill(255, 0, 0);
  noStroke();
  ellipse(x, y, 15, 15);
}
