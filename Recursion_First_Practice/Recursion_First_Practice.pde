// Robert Kurdyak, 22 April, 2015

void setup() {
  
  size(500, 500);
  
  myCircle(0, 250, 300, 1);
  
 

}

// Draws successively smaller circles, going to the right until the exit value is reached
void myCircle(float xShift, float yShift, float theWidth, float exitValue) {
  
  noFill();
  // Draw a circle with the given width and exit value
  ellipse(xShift, 250, theWidth, theWidth);
  
  // Only call this function again (recurse) if we have NOT reached the exit value
  if (theWidth > exitValue) {
    yShift = 250;
    myCircle(xShift + 20, yShift, theWidth - 10, exitValue);
  }
}
