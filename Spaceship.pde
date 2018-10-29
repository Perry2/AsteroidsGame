class Spaceship extends Floater  
{  
	public Spaceship()
	{
		int corners = 13;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = 10;
		yCorners[0] = 0;
		xCorners[1] = 0;
		yCorners[1] = -4;
		xCorners[2] = 0;
		yCorners[2] = 4;
		xCorners[3] = 0;
		yCorners[3] = 6;
		xCorners[4] = 0;
		yCorners[4] = -6;
		xCorners[5] = -4;
		yCorners[5] = 9;
		xCorners[6] = -4;
		yCorners[6] = 9;
		xCorners[7] = -6;
		yCorners[7] = 2;
		xCorners[8] = -6;
		yCorners[8] = -2;
		xCorners[9] = -6;
		yCorners[9] = 7;
		xCorners[10] = -6;
		yCorners[10] = -7;
		xCorners[11] = -9;
		yCorners[11] = 1;
		xCorners[12] = -9;
		yCorners[12] = -1;
		
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
