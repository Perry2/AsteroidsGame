Spaceship ship;
public void setup() 
{
	size(500, 500);
  	ship = new Spaceship();
}
public void draw() 
{
  ship.show();
}
public void keyPressed()
{
	if(key == 'r')
	{
		ship.setDirectionX(0);
		ship.setDirectionY(0);
		ship.setX((int)(Math.random()*500));
		ship.setY((int)(Math.random()*500));
	}
}
