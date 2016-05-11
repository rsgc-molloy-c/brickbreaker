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
    bricks[i] = new bricks(bricks.length+i*99);
  }
}

// Runs forever
void draw() {

  // Clear the background
  background(255);

  // Make the mover move!
  /* for (int i = 0; i < bricks.length; i+=1) {
   bricks[i].update();
   bricks[i].checkEdges();
   bricks[i].display(30,25);
   }*/
  Bouncer.update();
  Bouncer.checkEdges();
  Bouncer.display();

  paddle.update();
  paddle.checkEdges();
  paddle.display();
  for (int f =0; f<80; f++)
    if ((Bouncer.location.y > height-26) && (paddle.location.x == Bouncer.location.x-f)) {
      Bouncer.velocity.y = Bouncer.velocity.y * -1;
    }



  for (int z =0; z<7; z++) {
    for (int d =0; d<35; d++) {
      if ((Bouncer.location.x == bricks[z].location.x+d) && (/*Bouncer.location.y < bricks[z].location.y-10 ||*/ Bouncer.location.y < bricks[z].location.y+35 &&Bouncer.location.y > bricks[z].location.y-10 ) ) {
        bricks[z].update();
        bricks[z].checkEdges();
        bricks[z].display(0, 0);
        Bouncer.velocity.y = Bouncer.velocity.y * -1;
      } else
        bricks[z].update();
      bricks[z].checkEdges();
      bricks[z].display(30, 25);
    }
  }
}

void keyPressed() {
  if (key == CODED)
  {
    if (keyCode == LEFT)
    {
      paddle.left();
    } else if (keyCode == RIGHT)
    {
      paddle.right();
    }
  }
}