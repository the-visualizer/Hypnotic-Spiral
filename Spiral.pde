/*        Spiral Program
          --------------
       Created by: Visualizer     */

PImage spiral;         /* Initializes the image variable 'spiral' */
float angle;
int a, flag;
void setup()           /* Runs only once */
{ 
  size(500,500);       /* Sets the size of the output screen */
  imageMode(CENTER); 
  spiral = loadImage("Spiral.png"); /* Specifies the image file to be used */
  angle = 0.0;
  a = 0;
  flag = 0;
}  
void draw()            /* Runs endlessly */
{
  background(255, 255, a);  /* Transitions the background colour between 
                               different shades of yellow */
  translate(250,250);       /* Positions the image at the centre */
  rotate(angle);       /* Rotates the spiral image */
  image(spiral,0,0);
  angle+=(TWO_PI/104); /* TWO_PI used, since rotate() accepts radian values */
  if(flag==0) a+=5;    /* Increments B value by 5 */
  else        a-=5;    /* Decrements B value by 5 */
  if(a==255) flag=1;    
  if(a==0)   flag=0;
  print(a,"\n");       /* Prints the current value of 'a' in the console */
}
