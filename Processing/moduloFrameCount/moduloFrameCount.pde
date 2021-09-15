//add images
PImage img1;
PImage img2;

//this is an array ot group of colors
color[] colorList = {
  color(255, 78, 80), color(252, 145, 58), 
  color(249, 212, 35), color(237, 229, 116), color(225, 245, 196)
};

int w, h; //you can declare variables with the same type in one line, the type int is an integar, a whole number
boolean toggle;

void setup() {
  size(1280, 720);
  frameRate(30);

  smooth();
  strokeWeight(5);

  //draw shapes from the center
  ellipseMode(CENTER);
  rectMode(CENTER);

  background(0);

  w = width;
  h = height;
  img1 = loadImage("gear_red.png");
  img2 = loadImage("virus.png");
}

void draw() {
  //random returns a floating point number, (int) rounds it to a whole number
  int x = (int) random(w);
  int y = (int) random(h);
  int d = (int) random(150, 300);
  
  //choose a random color by picking a random number up to the number of colors in the array, then make sure it is an int
  color randomColor = colorList[ (int) random(colorList.length) ];
 
 //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
  //modulo (%) is the remainder (what is left over) when the first number (frameCount) is divided by the second number (5)
  //so every time frameCount reaches a number that is idivisible by 5 the modulo is 0
  //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
  if (frameCount % 5 == 0) {
    fill(randomColor);
    stroke(0, 10);
    //toggle between circle and square
    if (toggle == true){  
      ellipse(x, y, d, d);
      image(img1, x, y, d, d);
      toggle = !toggle; //switches the toggle variable
    }
    else{                     
      rect(x, y, d, d);
      image(img2, x, y, d, d);
      toggle = !toggle;
    }
  }

  else { //when modulo doesn't equal 0, fade out
    rectMode(CORNER);
    noStroke();
    fill(0, 10);
    rect(0, 0, w, h);
  }
}
