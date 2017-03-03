/*
    RANDOM LINES
    
    1. Choose the number of lines you want to draw (iterations)
    2. Modify the stroke color, opacity, and weight
    3. Each line is drawn using separate random numbers. 
       Try repeating variables (what happens when there are 
       two "rando4" variables instead of each variable being 
       unique?), or inserting your own variable (try replacing 
       "rando2" with "300").
    4. Don't forget to rename your PDF file after you make it!
       Otherwise you'll overwrite your work when you run your code.
       
*/

import processing.pdf.*;

// ---------- 1. Number of lines to draw ----------
int iterations = 500;

void setup() {
  size(600, 600);
  background(255, 255, 255);
  noLoop();
}

void draw() {
  beginRecord(PDF, "_random_lines.PDF");

  // ---------- 2. Change the stroke color, opacity & weight ---------- 
  stroke(0, 0, 255);
  strokeWeight(1);

  for (int x = 1; x < iterations; x++) {
    for (int y = 0; y < 1; y++) {
      float rando1 = random(600);
      float rando2 = random(600);
      float rando3 = random(600);
      float rando4 = random(600);

      // ---------- 3. Drawing the line with random numbers ---------- 
      line(rando1, rando2, rando3, rando4);
    }
  }
  endRecord();
}