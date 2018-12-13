class Asteroid extends Floater
{
	private int roSpeed;
	public Asteroid()
	{
		roSpeed = ((int)(Math.random()*7)-6);
		corners = 11;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = 18;
		yCorners[0] = 0;
		xCorners[1] = 10;
		yCorners[1] = 12;
		xCorners[2] = 8;
		yCorners[2] = 0;
		xCorners[3] = 0;
		yCorners[3] = 12;
		xCorners[4] = -10;
		yCorners[4] = 12;
		xCorners[5] = -6;
		yCorners[5] = 0;
		xCorners[6] = -18;
		yCorners[6] = 0;
		xCorners[7] = -6;
		yCorners[7] = -12;
		xCorners[8] = 0;
		yCorners[8] = -6;
		xCorners[9] = -8;
		yCorners[9] = -12;
		xCorners[10] = 12;
		yCorners[10] = -12;
		myCenterX = Math.random()*500;
		myCenterY = Math.random()*500;
		myDirectionX = Math.random()*10 - 5;
		myDirectionY = Math.random()*10 - 5;
		myPointDirection = Math.random()*100;
		myColor = #ffccd5;
	}
	public void move()
	{
		turn(roSpeed);
		super.move();	
	}
	public void setX(int x){myCenterX = x;}  
	public int getX(){return (int)myCenterX;}
	public void setY(int y){myCenterY = y;}   
	public int getY(){return (int)myCenterY;}   
	public void setDirectionX(double x){myDirectionX = x;}   
	public double getDirectionX(){return myDirectionX;}  
	public void setDirectionY(double y){myDirectionY = y;}
	public double getDirectionY(){return myDirectionY;}
	public void setPointDirection(int degrees){myPointDirection = degrees;}  
	public double getPointDirection(){return myPointDirection;}
}