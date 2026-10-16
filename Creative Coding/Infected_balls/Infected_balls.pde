Ball[] balls;
Ball specialBall; // Declared only once now
color infectedColour;
 
void setup(){
  size(500, 500);
  infectedColour = color(40, 200, 200);
  balls = new Ball[100];
  
  // Fixed the bracket position on this loop:
  for (int i=0; i<balls.length; i = i+1) {
    balls[i] = new Ball();
    balls[i].colour = color(random(150, 220), random(60, 90), random(60, 120));
    balls[i].radius = random(4, 16);
  }

  specialBall = new Ball();
  specialBall.radius = 30;
  specialBall.colour = infectedColour;
  specialBall.position.x = 0;
  specialBall.position.y = 0;
  specialBall.velocity.x = 0.3;
  specialBall.velocity.y = 0.1;
}
 
void draw() {
  background(254, 244, 232);
  
  for (Ball ball : balls) {
    ball.draw();
    ball.move();
 

    float distance = dist(specialBall.position.x, specialBall.position.y, ball.position.x, ball.position.y);
    float minDistance = specialBall.radius + ball.radius;

    if (distance < minDistance) {

      ball.colour = infectedColour;
      
      float dx = ball.position.x - specialBall.position.x;
      float dy = ball.position.y - specialBall.position.y;
      
      
      float currentSpeed = dist(0, 0, ball.velocity.x, ball.velocity.y);
      

      ball.velocity.x = (dx / distance) * currentSpeed;
      ball.velocity.y = (dy / distance) * currentSpeed;
      
    
      ball.position.x = specialBall.position.x + (dx / distance) * (minDistance + 1);
      ball.position.y = specialBall.position.y + (dy / distance) * (minDistance + 1);
    }
  }
 
  specialBall.draw();
  specialBall.move();
}



void mouseClicked() {
    // Fixed: Standard x=mouseX, y=mouseY mapping using the .position vector
    specialBall.position.x = mouseX;
    specialBall.position.y = mouseY;
}
