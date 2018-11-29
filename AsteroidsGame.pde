Spaceship ship;
Asteroid[] aster = new Asteroid[50];
Star[] spaceStars = new Star[1500];
public void setup() 
{
	size(500, 500);
  	ship = new Spaceship();
  	for (int i = 0; i < spaceStars.length; i++) 
  	{
  		spaceStars[i] = new Star();
  	}
  	for(int y = 0; y < aster.length; y++)
  	{
  		aster[y] = new Asteroid();
  	}
}
public void draw() 
{
	background(0);
  	for (int i = 0; i < spaceStars.length; i++) 
  	{
  		spaceStars[i].show();
  	}
  	for(int y = 0; y < aster.length; y++){
  		aster[y].show();
  		aster[y].move();
  	}
  	ship.show();
  	ship.move();
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
