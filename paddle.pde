

class paddle {
  
  RVector location;
  RVector velocity;

  // constructor
  paddle() {
    
    location = new RVector(340, 100);
    velocity = new RVector(1, 3.3);
    
  }
  
  // update position
  void update() {
    // Move the ball according to it's speed
    location.add(velocity);
  }
  
  // show the object
  void display() {
    // Visual characteristics of the ball
    stroke(0);
    fill(175);
  
    // Display the ball at the location (x, y)
    rect(location.x, 340, 80, 5);
  }
  
  // check for edges
  void checkEdges() {
    
    // Bounce if needed
    if ((location.x+80 > width) || (location.x < 0)) {
      velocity.x = velocity.x * -1;
    }
    if ((location.y > height) || (location.y < 0)) {
      velocity.y = velocity.y * -1;
    }
         if (key == CODED)
  {
     if (keyCode == LEFT)
    {
      if (velocity.x>0) { 
      velocity.x=-1;
      velocity.y=0;
      }
    }
    else if (keyCode == RIGHT)
    {
      if (velocity.x<0) {  
      velocity.x=1;
      velocity.y=0;
      }
    }
  }
    
  }
}