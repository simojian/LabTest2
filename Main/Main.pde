

flag f1 = new flag(250,150,50,50);
flag f2 = new flag(60, 60, 200, 200);

ArrayList<flag> flags = new ArrayList<flag>();

int nFlags = 5;

float screenWidth = 500;
float screenHeight = 500;


void setup()
{
  size(500, 500);
  background(255);
  
  innitFlags();
}

void draw()
{
  for (int i = 0; i < flags.size(); i++)
  {
    flag fObject = flags.get(i);
    
    fObject.render();
  }
}

void innitFlags()
{
  for(int i = 0; i < nFlags; i++)
  {
    flags.add(new flag(50, 50, random(0, screenWidth),random(0, screenHeight)));
  }
}
