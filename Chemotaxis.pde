Chemo[] lex = new Chemo[10];
void setup()
{
  size(400,400);
  for (int i = 0; i < lex.length; i++)
  {
    lex[i] = new Chemo();
  }
}
void draw()
{
  background(255,233,241);
  for (int i = 0; i < lex.length; i++)
  {
    lex[i].move();
    lex[i].show();
  }
}
class Chemo 
{
  int myColor;
  int myX;
  int myY;
  int mySpeed;
  Chemo()
  {
    myColor = color((int)(Math.random()*140)+100,(int)(Math.random()*140)+100,(int)(Math.random()*140)+100);
    myX = (int)(Math.random()*400);
    myY = (int)(Math.random()*400);
    mySpeed = (int)(Math.random()*10)+5;
  }
  void move()
  {
    myY = (int)(myY + mySpeed);
    myX = myX + (int)(Math.random()*3)-1;
    if (myY > 500)
    {
      myY = -100;
    }
    if (mouseX > myX)
    {
      myX = myX + (int)(Math.random()*10)-3;
    }
    if (mouseX < myX)
    {
      myX += (int)(Math.random()*10)-10;
    }
  }
  void show()
  {
    //mochi donut base
    fill(239,211,162);
    stroke(239,211,162);
    strokeWeight(1);
    ellipse(myX,myY,20,20);
    ellipse(myX-17,myY+10,20,20);
    ellipse(myX+17,myY+10,20,20);
    ellipse(myX,myY+40,20,20);
    ellipse(myX-17,myY+30,20,20);
    ellipse(myX+17,myY+30,20,20);
    //frosting
    noFill();
    stroke(myColor);
    strokeWeight(6);
    ellipse(myX,myY+20,37,37);
    fill(myColor);
    ellipse(myX,myY,7,7);
    ellipse(myX-17,myY+10,7,7);
    ellipse(myX+17,myY+10,7,7);
    ellipse(myX,myY+40,7,7);
    ellipse(myX-17,myY+30,7,7);
    ellipse(myX+17,myY+30,7,7);
  }
}
