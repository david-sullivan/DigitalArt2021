/*
using conditional statements with booleans
 */
 //declare a variable
 int circleX;
 //a variable to keep track of direction
 boolean circleDirection = 0;
 
void setup() {
  size(300, 200);
  background(255);
  //init the variable   the equal here is an assignment not a statement of equality
  circleX = 0;
}

void draw() {
  //a screen eraser, 
  fill(255);
  rect(0, 0, width, height);
  
  fill(0, 125, 255);
  ellipse(circleX, height/2, 20, 20);
  
  circleX = circleX + 1;
  
  //if circle x position is greater then the screen width
  if (circleX > width) {
    //how to get the circle stay within the bounds of the screen
  }
}