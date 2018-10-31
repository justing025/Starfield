Particle stars[] = new Particle[500];

//your code here
void setup()
{
	size(1000,1000);
	for(int i=2; i<stars.length; i++)
	{
		stars[i] = new NormalParticle();
		stars[0] = new OddballParticle();
		stars[1] = new JumboParticle();
	}

	//your code here
}
void draw()
{
	
	for (int i=0; i < stars.length; i++)
	{
		stars[i].move();
		stars[i].show();
	}
	//your code here
}
class NormalParticle implements Particle 
{
	double myAngle, mySpeed, myX, myY;
	int color1, color2, color3;
	NormalParticle()
	{
		myAngle = (double)((Math.random()*3.14*2));
		mySpeed = (double)(Math.random()*2.60);
		myX=500;
		myY=500;
		color1 = (int)(Math.random()*256);
		color2 = (int)(Math.random()*256);
		color3 = (int)(Math.random()*256);

	}
	 public void move()
	{
		myX = myX +(Math.cos(myAngle)*mySpeed);
		myY = myY +(Math.sin(myAngle)*mySpeed);
	}
	 public void show()
	{
		fill(color1,color2,color3);
		noStroke();
		ellipse((float)myX, (float)myY,10,10);
	}
	//your code here
}
interface Particle
{
	public void show();
	public void move();
	//your code here
}
class OddballParticle implements Particle  //uses an interface
{
	double myAngle, mySpeed, myX, myY;

	OddballParticle()
	{
		mySpeed = (double)(Math.random()*2.86);
		myX=500;
		myY=500;
	}
	 public void move()
	{
		myX = myX +(int)(Math.random()*20);
		myY = myY +(int)(Math.random()*20);
	}
	 public void show()
	{
		fill(random(255),random(255),random(255));
		noStroke();
		ellipse((float)myX, (float)myY,20,20);
	}
	//your code here
}
class JumboParticle extends NormalParticle //uses inheritance
{
	JumboParticle()
	{
		myAngle = (double)((Math.random()*3*2));
		mySpeed = (double)(Math.random()*2.60);
		myX=500;
		myY=500;
		color1 = (int)(Math.random()*256);
		color2 = (int)(Math.random()*256);
		color3 = (int)(Math.random()*256);

	}
	 public void move()
	{
		myX = myX +(Math.cos(myAngle)*mySpeed);
		myY = myY +(Math.sin(myAngle)*mySpeed);
	}
	 public void show()
	{
		fill(color1,color2,color3);
		noStroke();
		ellipse((float)myX, (float)myY,100,100);
	}

	//your code here
}

