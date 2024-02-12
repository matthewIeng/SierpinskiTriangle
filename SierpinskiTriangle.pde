public void setup() {
  size(500,500);
  background(0);
  noLoop();
}
public void draw() {
  sierpinski(50,450,400);
}

public void mousePressed()//optional
{
  redraw();
}

public void sierpinski(int x, int y, int len) {
  if(len < 20){
    triangle(x,y, x + len/2, y - sin(PI/3) * len, x + len, y);
  }
  else {
   fill((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
  sierpinski(x,y,len/2);
  fill((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
  sierpinski(x+len/2,y,len/2);
  fill((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
  sierpinski(x+len/4,y-len/2,len/2);
}}
