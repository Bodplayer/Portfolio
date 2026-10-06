int fruitperstudent = 5;

void setup() {
  size(600, 400);
}

void draw() {
  background(245, 247, 248); 
 int students = max(0, mouseX - 30); 
  int totalFruit = students * fruitperstudent;

  fill(40);

  textSize(24);
  text("Interactive Calculator", 30, 60);

  textSize(22);
  text("Number of Students: " + students, 180, 180);
  text("Week Total: " + totalFruit + " items", 180, 230);

  fill(200, 220, 240);
  rect(30, 280, width - 60, 20);

  fill(50, 120, 220);
  rect(30, 280, constrain(mouseX - 30, 0, width - 60), 20);
}
