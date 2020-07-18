// Fibonacci spiral 001
// An approximation of the golden spiral created by drawing circular arcs connecting the opposite corners of squares in the Fibonacci tiling 
// 19 July 2020
// Author: Rupert Russell
// cooment: Noting overly elegant in this but it works
// todo automate the secquence so I can loop it x times

// Going for my 2nd covid test in 2 days time
// thinking about turning out to way less firecalls.

int scale = 8;
int strokeW = 3;
int start;
int stop;
int xCenter;
int yCenter;

void setup() {
  size(600, 600);
  noFill();
  strokeWeight(strokeW);
}

void draw() {
  noLoop();
  noFill();
  translate(300, 400);
  background(255);

  rect(-scale, 0, scale, scale);  // 1
  rect(0, 0, scale, scale);       // 1
  rect(-scale, scale, scale*2, scale*2); //2
  rect(scale, 0, scale*3, scale*3); // 3
  rect(- scale, - scale*5, scale*5, scale*5); // 5

  // rect(scale*-9,scale*-5, scale*8, scale*8); // 8
  line(scale*-1, scale*3, scale*-9, scale*3);

  // rect(scale*-9, scale*3, scale*13, scale*13); // 13
  line(scale*4, scale*3, scale*4, scale*16);

  // rect(scale*4, scale*-5, scale*21, scale*21); //21
  line(scale*-9, scale*-5, scale*25, scale*-5);

  // rect(scale*-9, scale*-39, scale*34, scale*34); //34
  // stroke(255, 0, 0);
  line(scale*-9, scale*-5, scale*-9, scale*-39);
  stroke(0);

  //ellipse(0, 0, 10, 10); 
  //ellipse(0, scale, 10, 10);

  start = 180;
  stop = 360;
  xCenter = 0;
  yCenter = scale;
  arc(xCenter, yCenter, scale * 2, scale * 2, radians(start), radians(stop)); // 1

  start = 90;
  stop = 180;
  xCenter = scale;
  yCenter = scale;
  arc(xCenter, yCenter, scale * 4, scale * 4, radians(start), radians(stop)); // 2

  start = 0;
  stop = 90;
  xCenter = scale;
  yCenter = 0;
  arc(xCenter, yCenter, scale * 6, scale * 6, radians(start), radians(stop)); // 3

  start = 270;
  stop = 360;
  xCenter =  - scale * 1;
  yCenter =    scale * 0;
  arc(xCenter, yCenter, scale * 10, scale * 10, radians(start), radians(stop)); // 10

  start = 180;
  stop = 270;
  xCenter =  - scale * 1;
  yCenter =    scale * 3;
  arc(xCenter, yCenter, scale * 16, scale * 16, radians(start), radians(stop)); // 16

  start = 90;
  stop = 180;
  xCenter = scale*4;
  yCenter = scale*3;
  arc(xCenter, yCenter, scale*26, scale*26, radians(start), radians(stop)); // 26

  // stroke(255, 0, 0);
  start = 0;
  stop = 90;
  xCenter = scale*4;
  yCenter = scale*-5;
  arc(xCenter, yCenter, scale*42, scale*42, radians(start), radians(stop)); // 42

  start = 270;
  stop = 360;
  xCenter = scale*-9;
  yCenter = scale*-5;
  arc(xCenter, yCenter, scale*68, scale*68, radians(start), radians(stop)); // 68  Fibonacci sequence 
  
  save("FibonacciSpiral.png");
  // exit();
}
