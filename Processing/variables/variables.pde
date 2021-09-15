///////TO DO /////
//show examples and libraries
//incrementing variables
//conditionals
//using images and video
//saveFrame() and movie maker
//export applications

//ability to draw different shapes maybe with different keys?


//declaring variables first
float brushTransparency; 
float brushColor = 255; //you can initialize values when you declase them
float brushSize = 10;
boolean brushIsEraser = false;

void setup() {
  size(300, 200); //initializing width and height

  brushTransparency = 50;//you can initialize variables in setup too!
}

void draw() {
  //erase the background
  //background(256, 0, 0);
  fill(255, 0, 0, 1); //change the alpha value to change how fast it erases
  rect(0, 0, width, height);

 //these are conditional statementts
  //is the brush an eraser or not? since it can only be true or false, it is a boolean variable
  if (brushIsEraser ==true) {
    brushColor = 255; //brush color is white
    stroke(255);
    strokeWeight(16);  // Thicker
    //if the variable is false, do everything after else below
  } else {
    brushColor = mouseX/2; //brush is color
    stroke(brushColor*2, brushColor, 50, 20);
    strokeWeight(16);  // Thicker
  }

  //noStroke();

  stroke(brushColor*2, brushColor, 50, 20);
  strokeWeight(16);  // Thicker
  brushTransparency = mouseY/2;
  brushSize = mouseX/10;
  fill(#4549DE, brushTransparency); //color and transparency
  line(mouseX, mouseY, width-mouseX, height-mouseY); //line has 4 arguments: the xy of the first point and the second point
  fill(brushColor);
  
  //use key presses to change the brush shape
  //you can add different conditions to your conditional statements
  // && means and, || means or
  if ((keyPressed == true) && ((key == 'a') || (key == 'A'))) {
    ellipse(mouseX, mouseY, brushSize, brushSize);
  }
  if ((keyPressed == true) && ((key == 'r') || (key == 'R'))) {
    rect(mouseX, mouseY, brushSize, brushSize);
  }
  if ((keyPressed == true) && ((key == 's') || (key == 'S'))) {
    pushMatrix(); // create a new transform grid to move and rotate the shape
    translate(mouseX,mouseY);
    rotate(frameCount / 200.0); //rotate every frame
    //begin drawing the shape
    beginShape(TRIANGLES);
    //set the point(vertex) positions of the shape
    vertex(width/4, height/2);
    vertex(width/3, height/3);
    vertex(width/2, height/2);
    vertex(270, 80);
    vertex(280, 300);
    vertex(320, 80);
    endShape(); //end the shape
    popMatrix(); //go back to the normal transform grid
  }
}

//if the mouse is pressed toggle between eraser brush or color brush
void mousePressed() {
  brushIsEraser = !brushIsEraser; //shorthand for toggling a boolean (true/false) variable, ! means not
  /* all this is the same as the above line
   if(brushIsEraser == false){
   brushIsEraser = true;
   }else{
   brushIsEraser = false;
   */
}

//unused yet, but you can listen for key events too
void keyPressed() {
}
