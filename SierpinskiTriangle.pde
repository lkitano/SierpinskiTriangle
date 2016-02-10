int x = 100;
int y = 700;
int z = 5;
int a = 800;

public void setup()
{
	size(a, a);
	background(0,0,0);
}
public void draw()
{
	 sierpinski(x,y,20 * (int)(Math.pow(2,z)));
	


}
public void keyPressed()//optional
{
// 	if(key == 'a' && z < 5){
// 	background(0,0,0);	
// 	z++;
// 	x = x - (5-z)*20;
// } else if (key == 's' && z >=0){
// 	background(0,0,0);	
// 	z--;
// 	x = x + z*20;
}


public void sierpinski(int x, int y, int len) 
{
	if(len>=20){
		

		sierpinski(x,y,len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y - len/2, len/2);
	} else {
		 // fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		fill((int)(Math.random()*255) -mouseX/3,(int)(Math.random()*255),(int)(Math.random()*155) + mouseY/3);

		triangle(x, y, x+len, y,x+len/2, y-len);
	

	}





}
