

flag f1 = new flag(250,150,50,50);
flag f2 = new flag(60, 60, 200, 200);

ArrayList<flag> flags = new ArrayList<flag>();

int nFlags = 10;

float screenWidth = 500;
float screenHeight = 500;

float spawnWidthRange[] = {40, 120};
float spawnHeightRange[] = {50, 100};


void setup()
{
  size(500, 500);
  
  frameRate(30);
  
  innitFlags();
}

void draw()
{
  background(255);
  
  for (int i = 0; i < flags.size(); i++)
  {
    flag fObject = flags.get(i);
    
    fObject.render();
    fObject.update();
    
    fObject.x++;
    
    if(fObject.x > width + fObject.w)
    {
      fObject.x = 0 - fObject.w + fObject.wChange;
    }
  }
}

void innitFlags()
{
  for(int i = 0; i < nFlags; i++)
  {
    flags.add(new flag(random(spawnWidthRange[0], spawnWidthRange[1]), random(spawnHeightRange[0], spawnHeightRange[1]), random(0, screenWidth),random(0 + spawnHeightRange[0]/2, screenHeight - spawnHeightRange[0]/2)));
    flags.get(i).innit();
  }
}
