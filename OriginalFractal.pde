public void setup()
{
	size(500, 500);
}
public void draw()
{
	background(0, 0, 0);
	//stroke(0, 0, 0);
	myFractal(250, 250, 700);
}
public void myFractal(int x, int y, int siz)
{
	if (siz <= 5)
	{
		//fill(0, 255, 0);
		fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
		ellipse(x, y, siz, siz);
		//ellipse(x - siz, y, siz, siz);
	}
	else 
	{
		myFractal((int)x-siz/2, y, (int)siz/2);
		myFractal((int)x+siz/2, y, (int)siz/2);
		myFractal(x,(int)(y+siz/4), (int)siz/2);
		myFractal(x, (int)(y-siz/4), (int)siz/2);
	}

}
