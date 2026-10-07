// -- GLOBALS : declare and initialise global variables
// --   that describe system state - false before interaction:
boolean clearScreen = false;  // -- do we clear the screen in the draw() method?
boolean addText = false;      // -- do we add text in the draw() method?
boolean isRed = false;
boolean isBackgroundYellow = false;// -- do we make text red in the draw() method?

// -- SET UP : initialise and do things that don't change :
void setup() {
  size(400, 400);
  background(220);
  textSize(18);
}

// -- ACT : do things in here (like draw) based upon system state!
void draw() {

  // -- check whether to make text red:
  if (isRed) {
    // -- set fill to red:
    fill(255, 0, 0);
    isRed = false;  // -- set this to false, once the action has occurred once
  } else {
    fill(64);
  }

  // -- check whether to add text:
  if (addText) {
    // -- add text at the mouse position:
    text(key, mouseX, mouseY);
    addText = false;  // -- set this to false, once the action has occurred once
  }

  // -- check whether to clear screen:
  if (clearScreen) {
    if (isBackgroundYellow) {
      background(255, 255, 0);
    } else {
      // -- clear the screen: random light grey!
      background(int(random(180, 240)));
    }
    // -- reset system state:
    clearScreen = false;  // -- set this to false, once the action has occurred once
  }
}

// -- INTERACT : detect things in these event handling methods
// --   that establish and record system state:
void keyPressed() {
  // -- set variable to record current state:
  addText = true;

  // -- set variable to record current state:
  if (key == 'r' || key =='R') {
    isRed = true;
  }
}

void mouseClicked() {
  // -- set variable to record current state:
  clearScreen = true;
}
void mouseMoved() {
  if (mouseX > width/2)
  {
    isBackgroundYellow = true;
  } 
  else {
    isBackgroundYellow = false;
  }
}
