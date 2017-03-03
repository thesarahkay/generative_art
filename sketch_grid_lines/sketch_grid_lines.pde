/*
     GRID LINES
 
     1. Choose the spacing for horizontal (x) and vertical (y) 
        lines. This is how many pixels appear between each line.
     2. Modify the stroke color, opacity, and weight.
     3. If you're feeling brave, try playing with the line variables.
        What happens when you replace "x" with "300"? What happens 
        when you use random(600)?
     4. Don't forget to rename your PDF file after you make it!
        Otherwise you'll overwrite your work when you run your code.
 
 */

import processing.pdf.*;

// ---------- 1. Choose the line spacing ---------- 
int x_spacing = 20;
int y_spacing = 20;

int begin = 10;
int end = 590;


void setup() {
  size(600, 600);
  background(255, 255, 255);
  noLoop();
}

void draw() {
  beginRecord(PDF, "_grid_lines.PDF");

  // ---------- 2. Change the stroke color, opacity & weight ---------- 
  stroke(0, 0, 255);
  strokeWeight(1);


  // ---------- 3. Vertical Lines -----------
  for (int x = 10; x < 600; x = x + x_spacing) {
    line(x, begin, x, end);
  }

  // ---------- 4. Horizontal Lines -----------
  for (int y = 10; y < 600; y = y + y_spacing) {
    line(begin, y, end, y);
  }

  endRecord();
}