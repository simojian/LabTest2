public class flag
{
  public float w, h, x, y;
  float wChange, hChange;
  
  int nLines = 6;
  
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
    w += sin(frameCount / 3) * wChange;
    h += cos(frameCount / 3) * hChange;
  }
  
  public void innit()
  {
    wChange = w * 0.1;
    hChange = h * 0.1;
  }
  
  //==================================================
  //individual elemets
  //==================================================
  
  void drawBars()
  { 
    float colorRange = 100;
    float barHeight = h/nLines;
    float cGap = colorRange / nLines;
    
    colorMode(HSB, colorRange);
    noStroke();
    
    rectMode(CENTER);
    
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
    
    color[] trigColors = {#000000, #552500, #f58bf5, #a5eef5, #ffff00};
    
    pushMatrix();
    
    translate(-(w/2), -((h/nLines)/2));

    for(int i = 0; i < nTrig; i++)
    {
      fill(trigColors[i]);
      triangle(0, 0 + sizeDelta * i, 0, h - sizeDelta * i, startPosition - sizeDelta * i, h/2);
    }
    
    popMatrix();
  }
  
  void drawCircle()
  {
    float circleSize = h * 0.15;
    float ringDelta = circleSize * 0.15;
    
    colorMode(RGB, 255);
    
    noStroke();
    
    pushMatrix();
    translate(-(w/2), -((h/nLines)/2));
    
    fill(#ff00ff);
    circle(w*0.08, h/2, circleSize);
    fill(#ffff00);
    circle(w*0.08, h/2, circleSize - ringDelta);
    
    popMatrix();
  }
}
