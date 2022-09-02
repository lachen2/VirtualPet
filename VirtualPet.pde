void setup()
{
  size(300, 300);
  background(109, 229, 176);
}
void draw()
{
  noStroke();
  fill(0, 0, 0);
  //feet
  ellipse(120, 250, 40, 40);
  ellipse(180, 250, 40, 40);
  //ears
  ellipse(110, 60, 40, 40);
  ellipse(190, 60, 40, 40);
  //head and body
  fill(255, 255, 255);
  ellipse(150, 190, 170, 140);
  ellipse(150, 100, 110, 100);
  //hair and mouth
  fill(19, 145, 198);
  triangle(150, 50, 170, 50, 180, 70);
  fill(0, 0, 0);
  triangle(130, 110, 140, 110, 150, 120);
  rotate(PI/10.0);
  //arms and eyes
  ellipse(130, 160, 25, 60);
  ellipse(210, 160, 25, 60);
  ellipse(180, 50, 20, 30);
  ellipse(140, 50, 20, 30);
}
