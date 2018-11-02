Spaceship ship;
Star[] spaceStars = new Star[200];
public void setup() 
{
	size(500, 500);
  	ship = new Spaceship();
  	for (int i = 0; i < spaceStars.length; i++) 
  	{
  		spaceStars[i] = new Star();
  	}
}
public void draw() 
{
	background(0);
  	ship.show();
  	ship.move();
  	for (int i = 0; i < spaceStars.length; i++) 
  	{
  		spaceStars[i].show();
  	}
}
public void keyPressed()
{

	if(key == 'q')
	{
		ship.turn(10);	
	}
	if(key == 'w')
	{
		ship.turn(-10);
	}
	if(key == 'e')
	{	
		ship.accelerate(0.5);
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
