Spaceship ship;
ArrayList<Asteroid> aster = new ArrayList<Asteroid>();
Bullet bullets;
Star[] spaceStars = new Star[1500];
public void setup() 
{
	size(500, 500);
  	ship = new Spaceship();
  	bullets = new Bullet();
  	for (int i = 0; i < spaceStars.length; i++) 
  	{
  		spaceStars[i] = new Star();
  	}
  	for(int y = 0; y < 25; y++)
  	{
  		aster.add(new Asteroid());
  	}
}
public void draw() 
{
	background(0);
  	for (int i = 0; i < spaceStars.length; i++) 
  	{
  		spaceStars[i].show();
  	}
  	for(int y = 0; y < aster.size(); y++){
  		aster.get(y).show();
  		aster.get(y).move();
  		float d = dist(ship.getX(),ship.getY(),aster.get(y).getX(),aster.get(y).getY());
  		if (d < 15)
  			aster.remove(y);
  	}
  	ship.show();
  	ship.move();
  	bullet.show();
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
		ship.accelerate(0.2);
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
