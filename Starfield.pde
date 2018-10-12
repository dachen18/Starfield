  Particle[] oof;
void setup()
{
  frameRate(75);
 background(255);
   size(1000,1000);
   oof = new Particle[500];
  for (int i = 0;i< oof.length;i++)
{
  oof[i] = new NormalParticle();
}
  oof[0] = new OddballParticle();
  oof[1] = new JumboParticle();
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
void mousePressed()
{
  redraw();
}

class NormalParticle implements Particle
{
 int Timer2 = 0;
 int Color = (int)(Math.random()*255);
  double x = 550;
  double y = 550;
  double Speed = (Math.random()*7.5-3.75);
  double Angle = (double)((Math.random()*2)*PI);
  float Timer = 0;
  float Rotayto = 0;
  int Timer3 = 0;
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
    rotate(Rotayto);
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    ellipse((float)(x),(float)(y),20,20);
  }
}
interface Particle
{
 public void show();
 public void move();
}
class OddballParticle implements Particle
{
  int y = 650;
  public void show(){
  fill(0);
  ellipse(650,y,20,20);
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
class JumboParticle extends NormalParticle
{
  public void show()
  {
    fill(255);
  ellipse((float)x,(float)y,100,100);
  fill(Color);
  ellipse((float)x+25,(float)y-10,10,10);
  ellipse((float)x-25,(float)y-10,10,10);
  }
}