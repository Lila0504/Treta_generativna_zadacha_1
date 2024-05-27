void setup() {
  size(800, 800);
  for (int i = 0; i < 9; i++) {
    drawPattern();
    saveFrame("output-" + nf(i, 4) + ".png"); // Save each image with a unique filename
  }
  exit(); // Terminate the sketch after generating the images
}

void drawPattern() {
  background(255);
  
  // Number of shapes to draw
  int numShapes = int(random(50, 150));
  
  for (int i = 0; i < numShapes; i++) {
    // Random position
    float x = random(width);
    float y = random(height);
    
    // Random size
    float w = random(20, 100);
    float h = random(20, 100);
    
    // Random color
    fill(random(255), random(255), random(255), random(100, 200));
    noStroke();
    
    // Random shape type
    int shapeType = int(random(3));
    switch (shapeType) {
      case 0:
        ellipse(x, y, w, h);
        break;
      case 1:
        rect(x, y, w, h);
        break;
      case 2:
        triangle(x, y, x + w, y, x + w / 2, y - h);
        break;
    }
  }
}
