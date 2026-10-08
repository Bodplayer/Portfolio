color leafColour, trunkColour;

void setup() {
  size(800, 400);
  noStroke();
  leafColour  = color(82, 144, 97);
  trunkColour = color(95, 57, 26);
}

void draw() {
  background(157, 238, 247);   // Sky
  fill(156, 245, 170);         // Ground
  rect(0, height/2, width, height/2);

  for (float yPos = 200; yPos <= 350; yPos += 50) {
    
   
    float treeScale = map(yPos, 200, 350, 0.4, 1.0);
    
   
    float alphaVal = map(yPos, 200, 350, 170, 255);

    for (float xPos = 30; xPos < width; xPos += 80 * treeScale) {
      drawTree(xPos, yPos, treeScale, alphaVal);
    }
  }
}


void drawTree(float treeX, float treeY, float scale, float alphaVal) {

  fill(red(trunkColour), green(trunkColour), blue(trunkColour), alphaVal);
  rect(treeX, treeY, 20 * scale, 70 * scale);

  fill(red(leafColour), green(leafColour), blue(leafColour), alphaVal);
  ellipse(treeX + (10 * scale), treeY - (30 * scale), 70 * scale, 90 * scale);
}
