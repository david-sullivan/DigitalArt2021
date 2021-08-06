/*
color 
how to get white?
additive (emissive light like screen or projector) and subtractive (like paint)
rgb (additive), cmyk (subtractive), hsb
grayscale has one argument (0-255)
rgb has 3 arguments
use the color selector
transparency is a fourth argument (0-255)
processing reference
*/
size(300, 300);
background(0);
fill(255, 0, 0, 255/2);//red
ellipse(width/3, height/3, width/2, height/2);
fill(0, 255, 0, 255/2);//green
ellipse(width/3, (height/3)*2, width/2, height/2);
fill(0, 0, 255, 255/2);//blue
ellipse(width/3*2, height/2, width/2, height/2);
fill(255/2, 255/2, 255/2, 255/2);
//a quad is four points joined in sequence into a four sided shape
//quad(width/3, height/2, width/2, height/3, width/3*2, height/2, width/2, height/3*2);