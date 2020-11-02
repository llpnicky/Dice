int counter = 0;
void setup()
{
	noLoop();
  size(1000, 1000);
}
void draw()
{
	background(30, 30, 30);

  for(int y = 10 ; y <= 800 ; y +=100 ) 
  {
    for(int x = 20 ; x <= 700 ; x +=100 )
      {
        Die exDie = new Die(x, y);
        exDie.show();
        
      }
  }
  text(counter, 400, 900);
}
void mousePressed()
{
  counter = 0;
	redraw();
 

}
class Die //models one single dice cube
{
	int myX, myY;
  int dieRoll;
	Die(int x, int y) //constructor
	{  
    myX = x;
    myY = y;
    roll();
	}
	void roll()
	{
		dieRoll = (int)(Math.random() * 6 + 1);

	}
	void show()
  {
    fill (255, 255, 255);
    rect (myX, myY, 57, 57);
    fill (0, 0, 0);
    if (dieRoll == 1) 
    {
      ellipse(myX + 28, myY + 28, 12, 12);
    }
    else if (dieRoll == 2) 
    {
      ellipse(myX + 8, myY + 8, 12, 12);
      ellipse(myX + 48, myY + 48, 12, 12);
	  }
    else if (dieRoll == 3) 
    {
      ellipse(myX + 8, myY + 8, 12, 12);
      ellipse(myX + 28, myY + 28, 12, 12);
      ellipse(myX + 48, myY + 48, 12, 12);
    }
    else if (dieRoll == 4) 
    {
      ellipse(myX + 8, myY + 8, 12, 12);
      ellipse(myX + 48, myY + 8, 12, 12);
      ellipse(myX + 48, myY + 48, 12, 12);
      ellipse(myX + 8, myY + 48, 12, 12);
    }
    else if (dieRoll == 5) 
    {
      ellipse(myX + 8, myY + 8, 12, 12);
      ellipse(myX + 48, myY + 8, 12, 12);
      ellipse(myX + 28, myY + 28, 12, 12);
      ellipse(myX + 48, myY + 48, 12, 12);
      ellipse(myX + 8, myY + 48, 12, 12);
    }
    else if (dieRoll == 6) 
    {
      ellipse(myX + 8, myY + 8, 12, 12);
      ellipse(myX + 48, myY + 28, 12, 12);
      ellipse(myX + 48, myY + 8, 12, 12);
      ellipse(myX + 48, myY + 48, 12, 12);
      ellipse(myX + 8, myY + 28, 12, 12);
      ellipse(myX + 8, myY + 48, 12, 12);
    }
    counter += dieRoll;
  }
}
