float x, y;
float x1, y1;
float x2, y2;
float x3, y3;

float vx, vy;
float vx1, vy1;
float vx2, vy2;
float vx3, vy3;

color c1, c2, c3, c4;

void setup(){
  size(500, 500);
  x = width/2;
  y = height/2;
  

  vx = -1.5; vy = -1.5;
  vx1 = 1.5; vy1 = -1.5;
  vx2 = -1.5; vy2 = 1.5;
  vx3 = 1.5; vy3 = 1.5;

  x1 = x2 = x3 = x;
  y1 = y2 = y3 = y;

  c1 = color(255, 0, 0);
  c2 = color(0, 255, 0);
  c3 = color(0, 0, 255);
  c4 = color(255, 255, 255);
}

void draw(){
  background(220); 

  
  fill(c1);  ellipse(x, y, 100, 100);
  fill(c2);  ellipse(x1, y1, 100, 100);
  fill(c3);  ellipse(x2, y2, 100, 100);
  fill(c4);  ellipse(x3, y3, 100, 100);
	

  x  += vx;  y  += vy;
  x1 += vx1; y1 += vy1;
  x2 += vx2; y2 += vy2;
  x3 += vx3; y3 += vy3;
	bounceOffWalls();
}
  
  void bounceOffWalls(){
  if (x - 50 < 0 || x + 50 > width)  { vx = -vx; }
  if (y - 50 < 0 || y + 50 > height) { vy = -vy; }
  

  if (x1 - 50 < 0 || x1 + 50 > width)  { vx1 = -vx1; }
  if (y1 - 50 < 0 || y1 + 50 > height) { vy1 = -vy1; }
  
  if (x2 - 50 < 0 || x2 + 50 > width)  { vx2 = -vx2; }
  if (y2 - 50 < 0 || y2 + 50 > height) { vy2 = -vy2; }
  
  if (x3 - 50 < 0 || x3 + 50 > width)  { vx3 = -vx3; }
  if (y3 - 50 < 0 || y3 + 50 > height) { vy3 = -vy3; }
  }
