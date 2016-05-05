// Create a space in memory for many Mover objects
Bouncer Bouncer = new Bouncer();
bricks bricks[] = new bricks[7];
paddle paddle = new paddle();

// Runs once
void setup() {

  // Create a white background
  size(640, 360);
  background(255);

  // Actually make an instance of a Mover
  for (int i = 0; i < bricks.length; i+=1) {
    bricks[i] = new bricks(bricks.length+i*100);
  }
  
}

// Runs forever
void draw() {

  // Clear the background
  background(255);

  // Make the mover move!
  for (int i = 0; i < bricks.length; i+=1) {
    bricks[i].update();
    bricks[i].checkEdges();
    bricks[i].display();
  }
  Bouncer.update();
    Bouncer.checkEdges();
   Bouncer.display();
   
   paddle.update();
    paddle.checkEdges();
   paddle.display();
}