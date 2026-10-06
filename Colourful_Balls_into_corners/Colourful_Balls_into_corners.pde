float x, y;
float x1, y1;
float x2, y2;
float x3, y3;

color c1, c2, c3, c4;
float speed = 1.5;

void setup(){
  size(500, 500);
  x = width/2;
  y = height/2;


  x1 = x2 = x3 = x;
  y1 = y2 = y3 = y;


  c1 = color(255, 0, 0);
  c2 = color(0, 255, 0);
  c3 = color(0, 0, 255);
  c4 = color(255, 255, 255);
}

void draw(){
  background(220); 

  fill(c1);
  ellipse(x, y, 100, 100);
  fill(c2);
  ellipse(x1, y1, 100, 100);
  fill(c3);
  ellipse(x2, y2, 100, 100);
  fill(c4);
  ellipse(x3, y3, 100, 100);


  x = x - speed;
  y = y - speed;
  x1 = x1 + speed;
  y1 = y1 - speed;
  x2 = x2 - speed;
  y2 = y2 + speed;
  x3 = x3 + speed;
  y3 = y3 + speed;
}
