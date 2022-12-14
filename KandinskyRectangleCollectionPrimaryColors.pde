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
  
  // Declares Parameters for Colorizing
  int colorrandom; // Memory for Color
  int braightness; // Memory for braightness
  
  
  // Choose a Number of Rectangles to draw
  // For Beauty the Number should not been lesser then 12
  int z = int(random(36))+12;
  // Iterrate about the Rectangles to draw
  for(int zz = 0; zz < z; zz++)
  {
    // Sets a Stroke Weight for the Rectangle
    strokeWeight(int(random(min(height, width)/36)));
  
    // Chose a Braigthness
    braightness = int(random(255));
    
    // Chose the Color
    colorrandom = int(random(4));
    // Set the Colors in respect to the Color-Number
    switch(colorrandom)
    {
      // Set Color to Read
      case 0: fill(255, 0, 0, braightness); break;
      // Set Color to Green
      case 1: fill(0, 255, 0, braightness); break;
      // Set Color to Yellow
      case 2: fill(255, 255, 0, braightness); break;
      // Set Color to Blue
      case 3: fill(0, 0, 255, braightness); break;
    }
    
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
    save("KandiskyRectangleCollectionEasy.png");
  }
}
