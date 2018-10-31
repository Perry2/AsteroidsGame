class Spaceship extends Floater  
{  
	public Spaceship()
	{
		corners = 13;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = 11;
		yCorners[0] = 0;
		xCorners[1] = 0;
		yCorners[1] = 4;
		xCorners[2] = 0;
		yCorners[2] = 6;
		xCorners[3] = -4;
		yCorners[3] = 9;
		xCorners[4] = -6;
		yCorners[4] = 7;
		xCorners[5] = -6;
		yCorners[5] = 2;
		xCorners[6] = -9;
		yCorners[6] = 1;
		xCorners[7] = -9;
		yCorners[7] = -1;
		xCorners[8] = -6;
		yCorners[8] = -2;
		xCorners[9] = -6;
		yCorners[9] = -7;
		xCorners[10] = -4;
		yCorners[10] = -9;
		xCorners[11] = 0;
		yCorners[11] = -6;
		xCorners[12] = 0;
		yCorners[12] = -4;
		
		myColor = #66ffff;
		myCenterX = 50;
		myCenterY = 50;
		myDirectionX = 0;
		myDirectionY = 0;
		myPointDirection = 0;
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
