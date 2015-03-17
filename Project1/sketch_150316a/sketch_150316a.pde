//ALL CODE FROM SHIFFMAN THE NATURE OF CODE


Obstacles o;
fish f;
shark s;

flock t;

float w = 400;
float d = 400;
float c = 500;
float v = 500;

float b= 60;

void setup() {
  size(800,800);
  
  o = new Obstacles();
  f = new fish(w,d);
  t = new flock();

    
  s = new shark(c,v);
  
  
  
}
void draw()
{
  background(47,214,214);
  PVector mouseL = new PVector (mouseX,mouseY);
  o.obstacle();
  

  
  t.swim();

  
  
  s.seek(f.location);
  s.avoid(o.location);
  
  //s.update();
  s.hammerhead();
  f.seek(mouseL);
  f.flee(s.location);
  f.update();
  f.salmon();
   
   if (b  > 0)
   {
     b-=1;
   }
   else if (b == 0)
   {
     
     t.addfish(new fish(mouseX,mouseY));
     b = 60;
   }
   

}
//ALL CODE FROM SHIFFMAN THE NATURE OF CODE
