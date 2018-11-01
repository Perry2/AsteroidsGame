Spaceship ship;
public void setup() 
{
	size(500, 500);
  	ship = new Spaceship();
}
public void draw() 
{
	background(0);
  	ship.show();
  	ship.move();
}
public void keyPressed()
{

	if(key == 'q')
	{
		ship.setPointDirection((int)ship.getPointDirection()+5);	
	}
	if(key == 'w')
	{
		ship.setPointDirection((int)ship.getPointDirection()-5);
	}
	if(key == 'e')
	{
		ship.setDirectionX(Math.cos((float)ship.getPointDirection()*(-100)));
		ship.setDirectionY(Math.sin((float)ship.getPointDirection()*(-100)));
	}
	if(key == 'r')
	{
		ship.setPointDirection((int)(Math.random()*360));
		ship.setDirectionX(0);
		ship.setDirectionY(0);
		ship.setX((int)(Math.random()*500));
		ship.setY((int)(Math.random()*500));
	}
}
