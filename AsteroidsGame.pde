Spaceship ship;
ArrayList<Asteroid> aster = new ArrayList<Asteroid>();
ArrayList<Bullet> bull = new ArrayList<Bullet>();
Star[] spaceStars = new Star[1500];
public void setup() 
{
	size(500, 500);
  	ship = new Spaceship();
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
  	for(int x = 0; x < bull.size(); x++){
  		bull.get(x).show();
  		bull.get(x).move();
  	}
  	/*while(){
	  	float di = dist(bull.get(x).getX(),bull.get(x).getY(),aster.get(x).getX(),aster.get(x).getY());
	  	if (di < 0)
	  		aster.remove(x);
	  		bull.remove(x);		
	}
	*/
  	ship.show();
  	ship.move();
}
public void keyPressed()
{
	if(key == '1')
	{
		bull.add(new Bullet(ship));

	}
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
