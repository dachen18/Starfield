  NormalParticle[] oof;
void setup()
{
 background(255);
   size(1000,1000);
   oof = new NormalParticle[1000];
  for (int i = 0;i< oof.length;i++)
{
  oof[i] = new NormalParticle();
}
}
void draw()
{
  background(255);
  for (int i = 0;i < oof.length;i++)
  {
    oof[i].show();
    oof[i].move();
 
  }
}

class NormalParticle
{
 int Color = (int)(Math.random()*255);
  double x = 500;
  double y = 500;
  double Speed = (Math.random()*7.5-3.75);
  double Angle = (double)((Math.random()*2)*PI);
  float Timer = 0;
  float Rotayto = 0;
  void move()
  {
     if (Timer <= 200)
  {
    x = x + Math.cos(Angle)*Speed;
    y = y + Math.sin(Angle)*Speed; 
    Timer = Timer + 1;
    Rotayto = Rotayto + (float)(PI/100);
  }
  else
  {
    x = x - Math.cos(Angle)*Speed;
    y = y - Math.sin(Angle)*Speed;
  }
  
  
  }
  void show()
  {
    rotate(Rotayto);
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    ellipse((float)(x),(float)(y),20,20);
  }
}
interface Particle
{
  //your code here
}
class OddballParticle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}