Spaceship ship;
Asteroid aster;
Star[] spaceStars = new Star[1500];
public void setup() 
{
	size(500, 500);
  	ship = new Spaceship();
  	aster = new Asteroid();
  	for (int i = 0; i < spaceStars.length; i++) 
  	{
  		spaceStars[i] = new Star();
  	}
}
public void draw() 
{
	background(0);
  	for (int i = 0; i < spaceStars.length; i++) 
  	{
  		spaceStars[i].show();
  	}
  	ship.show();
  	ship.move();
  	aster.show();
  	aster.move();
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
