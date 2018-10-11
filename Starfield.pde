NormalParticle[] oof;
void setup()
{
   background(0);
   size(500,500);
   oof = new NormalParticle[1000];
  for (int i = 0;i< oof.length;i++)
{
  oof[i] = new NormalParticle();
  background(0);
}
}
void draw()
{
  for (int i = 0;i < oof.length;i++)
  {
   oof[i].show();
   oof[i].move();
  }
}

class NormalParticle
{
  int Random = 0;
  int Color;
  double x = 250;
  double y = 250;
  double Speed = (int)(Math.random()*20-10);
  double Angle = (double)((Math.random()*2)*PI);
  void move()
  {
    if (Random == 0)
    {
    x = x + Math.cos(Angle)*Speed;
    y = y + Math.sin(Angle)*Speed;
    }   
  }
  void show()
  {
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