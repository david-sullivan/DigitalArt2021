////////////comments are important!////////////////
/*
blocks of code are good for lots of comments
*/

//spelling and punction are important
//debug log is important (try removing a semicolon or misspelling)
//order of commands is important (try switching lines around)
//width and height are built-in variables
//variables can be used as nicknames and to create responsive designs
//color is 256 values, 0-based (0 = black, 255 = white)
size(300, 300);
background(255);
noStroke();
strokeWeight(4);
stroke(50);
line(0, 0, width, height);
line(width/2, 0, width/2, height);
line(0, height/2, width, height/2);
line(0, height, width, 0);

//rectMode(CENTER);
fill(0);
rect(width/4, height/4, width/2, height/2);
fill(255);
ellipse(width/2, height/2, width/4, height/4);

//try setting up variables for strokeWeight, fill, stroke, etc