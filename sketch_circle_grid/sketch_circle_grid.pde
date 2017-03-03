/*
     CIRCLE GRID
 
     1. Specify the circle's horizontal (x) and vertical (y) 
        diameter.
     2. Choose the horizontal (x) and vertical (y) spacing for 
        in between circles. This is how many pixels appear 
        between each circle.
     3. Modify the stroke color, opacity, and weight.
     4. Don't forget to rename your PDF file after you make it!
        Otherwise you'll overwrite your work when you run your code.
 
 */

import processing.pdf.*;

// ---------- 1. Choose the circle diameter ---------- 
int x_diameter = 20;
int y_diameter = 20;

// ---------- 2. Choose the spacing ---------- 
int x_spacing = 30;
int y_spacing = 30;

void setup() {
  size(600, 600);
  background(255, 255, 255);
  noLoop();
}

void draw() {
  beginRecord(PDF, "circle_grid.PDF");
  
  // ---------- 3. Change the fill / stroke color & opacity ---------- 
  fill(0, 0, 255);
  stroke(0, 0, 0);

  for (int x = 10; x < 600; x = x + x_spacing) {
    for (int y = 10; y < 600; y = y + y_spacing) {
      
      ellipse (x, y, x_diameter, y_diameter);
      
    } 
  }
  endRecord();
}