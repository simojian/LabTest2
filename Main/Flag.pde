public class flag
{
  public float w, h, x, y;
  
  flag(float w, float h, float x, float y)
  {
     this.w = w;
     this.h = h;
     this.x = x;
     this.y = y;
  }
  
  public void render()
  {
    pushMatrix();
    
    translate(x ,y);
    
    drawBars();
    
    triangle(0, 0, 0, h, (w/5)*2, h/2);
    
    popMatrix();
  }
  
  public void update()
  {
    
  }
  
  void drawBars()
  { 
    int nLines = 6;
    float colorRange = 100;
    float barHeight = h/nLines;
    float cGap = colorRange / nLines;
    
    colorMode(HSB, colorRange);
    noStroke();
    
    for(int i = 0; i < nLines; i++)
    {
      fill(cGap * i, 100, 100);
      rect(0, barHeight * i, w, barHeight);
    }
  }
}
