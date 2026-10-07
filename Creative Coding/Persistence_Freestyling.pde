int clickCount = 0;
boolean isMoreThanTen = false;
boolean endsInTwo = false;

float growthAmount = 10;
float rectSize = 60;
float maxRectSize = 300;
float r = random(255);
float g = random(255);
float b = random(255);

void setup()
{
  size(300, 300);
  textSize(72);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
}

void draw() {
  background(254, 232, 134);
  fill(0);
  text(clickCount, width/2, height/2);
  if (isMoreThanTen) {
    background(100, 200, 255);
  } else if (endsInTwo) {
    background(255, 180, 200);
  } else {
    background(254, 232, 134);
  }

  fill(r, g, b);
  noStroke();
  rect(width / 2, height / 2, rectSize, rectSize);

  fill(0);
  text(clickCount, width / 2, height / 2);
}

void mouseClicked() {
  clickCount++;

  r = random(255);
  g = random(255);
  b = random(255);

  if (clickCount > 10) {
    isMoreThanTen = true;
  }
  if (clickCount % 10 == 2) {
    endsInTwo = true;
  } else {
    endsInTwo=false;
  }
  rectSize += growthAmount;
  if (rectSize > 300) {
    rectSize=60;
    growthAmount = growthAmount * 1.1;
  }
    println(clickCount, rectSize);
  }
