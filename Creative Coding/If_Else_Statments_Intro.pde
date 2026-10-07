void setup() 
{
  size(600, 500);
  fill(203, 118, 122);
}
 
void draw()
{
  background(255, 236, 149);
 
  if (mouseY < width/4)
  {
    ellipse(mouseX, mouseY, 80, 80);
    rect(mouseX-20, mouseY, 30,100);
  }
  else
  {
    rect(mouseX, mouseY, 80, 80);
  }
}
