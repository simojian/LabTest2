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
    
    drawTrig();
    
    drawCircle();
    
    popMatrix();
  }
  
  public void update()
  {
    
  }
  
  //individual elemets
  //==================
  
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
  
  void drawTrig()
  {
    int nTrig = 5;
    float startPosition = w * 0.4;
    float sizeDelta = startPosition * 0.1;
    
    colorMode(RGB, 255);
    noStroke();
    
    color[] trigColors = {#000000, #572400, #f78bf4, #a6eef5, #ffff00};

    for(int i = 0; i < nTrig; i++)
    {
      fill(trigColors[i]);
      triangle(0, 0 + sizeDelta * i, 0, h - sizeDelta * i, startPosition - sizeDelta * i, h/2);
    }
  }
  
  void drawCircle()
  {
    float circleSize = h * 0.15;
    float ringDelta = circleSize * 0.15;
    
    colorMode(RGB, 255);
    
    noStroke();
    
    fill(#ff00ff);
    circle(w*0.08, h/2, circleSize);
    fill(#ffff00);
    circle(w*0.08, h/2, circleSize - ringDelta);
  }
}
