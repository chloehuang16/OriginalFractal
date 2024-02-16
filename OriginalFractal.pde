public void setup() {
  size(600, 600);
  background(255);
  noLoop();
}

public void draw() {
  paisley(width/2, height/2, 300, 5); 
}

public void paisley(float x, float y, float size, int level) {
  if (level == 0) {
    return;
  }
  
  float offset = size / 10;
  
  // Draw the main paisley shape
  fill(198,114,114);
  beginShape();
  curveVertex(x + size/2, y);
  curveVertex(x + size/2, y);
  curveVertex(x + size/4, y - size/2);
  curveVertex(x - size/4, y - size/2);
  curveVertex(x - size/2, y);
  curveVertex(x - size/2, y);
  endShape(CLOSE);
  
  fill(242,183,183);
  paisley(x + size/4, y - size/2, size/2, level - 1);
  paisley(x - size/4, y - size/2, size/2, level - 1);
  
  paisley(x, y, size/2, level - 1);
  
  fill(108,20,20);
  ellipse(x - offset/2, y - offset/4, offset, offset);
  
  fill(0,0,0);
  bezier(x, y, 
         x + offset/2, y + offset, 
         x + offset/2, y + size/2, 
         x, y + size/2);
}
