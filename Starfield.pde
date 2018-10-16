Particle[] oof; //use interface to create array--Puts Odd/Jumbo/Normal under the interface of Particle
void setup()
{
  frameRate(120);
 background(132,112,255);
   size(1000,1000);
   oof = new Particle[1000];
  for (int i = 0;i< oof.length;i++)
{
  oof[i] = new NormalParticle();
}
  oof[0] = new OddballParticle(); //Assigns the 1st instance of Particle 
  oof[1] = new JumboParticle(); //Assigns the 2nd instance of Particle
}
void draw()
{
  noStroke();
  background(132,112,255);
  for (int i = 0;i < oof.length;i++)
  {
    oof[i].show();
    oof[i].move();
 
  }
}
void mousePressed()
{
  redraw();
}

class NormalParticle implements Particle //Class
{
  int Timer2,Color,Color2,Color3,Timer3;
  double x,y,Speed,Angle;
  float Timer,Rotayto;
  NormalParticle(){ // Constructor
 Timer2 = 0;
 Color = (int)(Math.random()*255);
 Color2 = (int)(Math.random()*255);
 Color3 = (int)(Math.random()*255);
 x = 500;
y = 500;
 Speed = (Math.random()*7.5-3.75);
 Angle = (double)((Math.random()*2)*PI);
 Timer = 0;
 Rotayto = 0;
 Timer3 = 0;
}
  void move()
  {
     if (Timer == 0)
  {
    x = x + Math.cos(Angle)*Speed;
    y = y + Math.sin(Angle)*Speed; 
  }
  else if (Timer == 1)
  {
    x = x - Math.cos(Angle)*Speed;
    y = y - Math.sin(Angle)*Speed;
  }
  if (Rotayto >= 0)
  {
    Rotayto = Rotayto + (float)(PI/100);
  }
  if (Timer2 % 275 == 0)
  {
    Timer = 1;
  }
  if (Timer2 >= 0)
  {
    Timer2 = Timer2 + 1;
  }
  if (Timer3 % 551 == 0)
  {
    Timer = 0;
  }
  if (Timer3 >= 0)
  {
    Timer3 = Timer3 + 1;
  }
  }
  void show()
  {
    //rotate(Rotayto);
    fill(Color,Color2,Color3);
    ellipse((float)(x),(float)(y),10,10);
  }
}
interface Particle //interface
{
 public void show();
 public void move();
}
class OddballParticle implements Particle //shares the interface with NormalParticle
{
  int y = 650;
  public void show(){
  fill(255);
  ellipse(650,y,35,35);
}
  public void move()
  {
    if (y >= 0)
    {
      y = y + 10;
    }
    if (y >= 1050)
    {
      y = 0;
    }
  }
}
class JumboParticle extends NormalParticle //inherits move() and show(), show() is modified under this inheritance
{
  public void show()
  {
    fill(255);
  ellipse((float)x,(float)y,50,50);
  fill(0);
  ellipse((float)x+15,(float)y-5,5,5);
  ellipse((float)x-15,(float)y-5,5,5);
  }
}