import processing.serial.*;

import processing.serial.*;

import processing.serial.*;

import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

public void setup() {
  size(300, 300);
  arduino = new Arduino(this, Arduino.list()[0], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}

public void draw() {
  int y = arduino.analogRead(5);
  System.out.println(y);
  if (y < 150) {
    background(59, 190, 250);
  } else { 
    background(11, 10, 130);
    }
  fill(255, 239, 59);
  ellipse(250, 1.5*y, 55, 54);
  noStroke();
  fill(0, 0, 0);
  //feet
  ellipse(120, 250, 40, 40);
  ellipse(180, 250, 40, 40);
  //ears
  ellipse(110, 60, 40, 40 + ((y/19)*2.9));
  ellipse(190, 60, 40, 40 + ((y/19)*2.9));
  //head and body
  fill(255, 255, 255);
  ellipse(150, 190, 170, 140);
  ellipse(150, 100, 110, 100);
  //hair and mouth
  fill(110, y/2, y*3);
  triangle(150, 50, 170, 50, 180 + (y/20), 70 + (y/15));
  fill(0, 0, 0);
  triangle(130, 110, 140, 110, 150, 120);
  rotate(PI/10.0);
  //arms and eyes
  ellipse(130, 160, 25 + (y/40), 60 + (y/33));
  ellipse(210, 160, 25 + (y/40), 60 + (y/33));
  ellipse(180, 50, 20, 30);
  ellipse(140, 50, 20, 30);
  fill(y*2, 50, 3*y);
  //eyeballs
  if (y < 250) {
    ellipse(178, 50, 10, 13);
    ellipse(142, 50, 10, 13);
  }
}
