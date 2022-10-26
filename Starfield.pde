Particle [] bob;
void setup()
{

  size(500,500);
  bob = new Particle[500];
  for(int i=0; i<bob.length; i++)
    bob[i] = new Particle();
  for(int i=0; i<bob.length; i+=2)
    bob[i] = new ob();
  
}
void draw()
{
  
  fill(0,0,0,10);
  rect(-10,-10,600,600);
  noStroke();
   for(int i=0; i<bob.length; i++)
  {
   bob[i].move();
    bob[i].show();
 } 
 
}

  
class Particle
{
  double myX,myY;
  double myColor, agle,spee;
  int W,L;
  Particle(){
    myX = 250;
    myY = 250;
    myColor = color(54,120,(int)(Math.random()*256));
    agle =  (Math.random()*(2*Math.PI));
    spee =  (Math.random()*2+2);
    W = 30;
    L = 5;
  }
  void move(){
    myX = myX + spee *Math.cos(agle);
    myY = myY + spee *Math.sin(agle);
   if (mousePressed){
   myX = 250;
   myY = 250;
   agle =  (Math.random()*(2*Math.PI));
   spee =  (Math.random()*2+2);
}
  }
  void show(){
    fill((int)myColor);

    ellipse((float)myX,(float)myY,W,L);
  }
}

class ob extends Particle
{
  ob(){
    myX = 250;
    myY = 250;
    myColor = color((int)(Math.random()*256),54,120);
    agle =  (Math.random()*(2*Math.PI));
    spee =  (Math.random()*2+4);
    W = 50;
    L = 10;
  }
  void move(){
    myX = myX + spee * Math.cos(agle);
    myY = myY + spee * Math.sin(agle);
   if (mousePressed){
   myX = 250;
   myY = 250;
   agle =  (Math.random()*(2*Math.PI));
   spee =  (Math.random()*2+4);
  }
}
}
  
