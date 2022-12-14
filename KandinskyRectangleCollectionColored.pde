// Setup the Application
void setup()
{
  // Defines the Size of the Canvas
  size(300, 500);
}

void generate()
{
  // Clear the Background and Set it to Whithe
  background(255);
  
  // Changes Rectangle draw Mode to both Corners
  rectMode(CORNERS);
  
  // Declare Memory for the first Point
  int x1; // X Dimension
  int y1; // Y Dimension
  
  // Declare Memory for the second Point
  int x2; // X Dimension
  int y2; // Y Dimension
  
  // Choose a Number of Rectangles to draw
  // For Beauty the Number should not been lesser then 12
  int z = int(random(36))+12;
  // Iterrate about the Rectangles to draw
  for(int zz = 0; zz < z; zz++)
  {
    // Sets a Stroke Weight for the Rectangle
    strokeWeight(int(random(min(height, width)/36)));
    
    fill(int(random(255)), int(random(255)), int(random(255)), int(random(255)));
    
    // Calculates the first Point
    x1 = int(random(width)); // X Dimension
    y1 = int(random(height)); // Y Dimension
    
    // Calculate the second Point
    x2 = int(random(width)); // X Dimension
    y2 = int(random(height)); // Y Dimension
    
    // Draw the Rectangle
    rect(x1, y1, x2, y2);
  }
  
}

// draw Methode for compatibilty with keyPressed Method
void draw()
{
}

// Menue Method
void keyPressed()
{
  // Memorize the pressed key
  char keye = key;
  // if n is pressed make a new Image
  if(keye=='n')
  {
    generate();
  }
  // if s is pressed save the current Image
  if(keye=='s')
  {
    save("KandiskyRectangleCollectionColored.png");
  }
}
