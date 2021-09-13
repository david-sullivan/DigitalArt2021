/*
setup and draw
 setup happens once at the beginning
 use to setup size framerate, background, variables initial values
 draw happens every frame
 use to change variables or arguments and draw
 
 they each return nothing (void)
 */
//declare and initialize variables at beginning, before any other statements
int myColor = 0; //initialize with a starting value
int changeDirection = 0;

void setup() {
  size(300, 200);
  background(255);
}

void draw() {
  //a screen eraser, 
  fill(255, 1);
  rect(0, 0, width, height);

  //fill(mouseX, mouseY, 0, 50);
  fill(myColor, myColor, 255-myColor, myColor/4);
  ellipse(mouseX, mouseY, 50, 50);
  //myColor += 1;
  if (changeDirection == 0) {
    myColor += 1;
  } else if (changeDirection == 1) {
    myColor -= 1;
  }
  if (myColor >= 255) {
    changeDirection = 1;
  }
  if (myColor == 0) {
    changeDirection = 0;
  }

  //constrain a variable
  //myColor = constrain(myColor, 0, 255);
  //random number generator
  ellipse (random(width), random(height/2, height), 4, 4);
}

void mousePressed() {
  println("mouseX =", mouseX, "mouseY =", mouseY);
  println("myColor =", myColor, "changeDirection =", changeDirection);
  fill(mouseX, mouseY, 0, 50);
  ellipse(mouseX, mouseY, 50, 50);
}