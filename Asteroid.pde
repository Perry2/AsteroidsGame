class Asteroid extends Floater
{
	private int roSpeed;
	public Asteroid()
	{
		roSpeed = ((int)Math.random()*5)-5;
		corners = 11;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = 9;
		yCorners[0] = 0;
		xCorners[1] = 5;
		yCorners[1] = 6;
		xCorners[2] = 4;
		yCorners[2] = 0;
		xCorners[3] = 0;
		yCorners[3] = 6;
		xCorners[4] = -5;
		yCorners[4] = 6;
		xCorners[5] = -3;
		yCorners[5] = 0;
		xCorners[6] = -9;
		yCorners[6] = 0;
		xCorners[7] = -3;
		yCorners[7] = -6;
		xCorners[8] = 0;
		yCorners[8] = -3;
		xCorners[9] = -4;
		yCorners[9] = -6;
		xCorners[10] = 6;
		yCorners[10] = -6;
		myColor = #ffccd5;
	}
	public void move()
	{
		turn(roSpeed);
		myCenterX = myCenterX + Math.random()*10;
		myCenterY = myCenterY + Math.random()*10;
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