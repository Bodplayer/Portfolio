void setup() {
  size(400, 400);
}

void draw() {
  background(224);
  roundel(width / 2, height / 2, 0.4);
  roundel(width / 4, height / 4, 0.2);
  roundel(3 * width / 4, height / 4, 1.6);
  roundel(width / 4, 3 * height / 4, 2.0);
  roundel(3 * width / 4, 3 * height / 4, 0.1);
}

void roundel(float x, float y, float size) {
  ellipseMode(CENTER);

  fill(230, 150, 0);
  noStroke();
  ellipse(x, y, 150 * size, 150 * size);

  fill(50, 0, 200);
  strokeWeight(30);
  ellipse(x, y, 105*size, 105*size);

  fill(255);
  noStroke();
  ellipse(x, y, 50*size, 50*size);

  fill(255, 0, 0);
  noStroke();
  ellipse(x, y, 15*size, 15*size);
}
