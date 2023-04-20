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
    int nLines = 6;
    float barHeight = h/nLines;
    
    
    pushMatrix();
    
    translate(x ,y);
    
    for(int i = 0; i < nLines; i++)
    {
      rect(0, barHeight * i, w, barHeight);
    }
    
    triangle(0, 0, 0, h, (w/5)*2, h/2);
    
    popMatrix();
  }
  
  public void update()
  {
    
  }
}
