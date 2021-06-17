float space = random (200, 400);
float radius = 30;
float xTop =1000;
float xBottom = 1000;

float x = 100;
float y = 500;
float jumpspeed = -5;
float dy;

float r;
float g;
float b;

float percent = 0.05;
float percent1 = 0.03;

int i;
int di;

int phase;


float w = 70; //Width of obstacles r
//Top Obstacles
float speedx = -5; //Speed of obstacles





float yTop = 0;
float hTop = 400;
ObstaclesTop top = new ObstaclesTop (xTop, yTop, hTop); 


//Bottom Obstacles

float yBottom = 1000;
float hBottom = -400;
ObstaclesBottom bottom = new ObstaclesBottom (xBottom, yBottom, hBottom); 



void setup () {
  size(1000, 1000);
  frameRate(100);
}

void draw () {
  background(255, 255, 255);

  //ENVIRONMENT
  fill(71, 200, 255);
  rect (0, 0, width, height); //Setup sky



  y += dy;
  //noStroke();
  noFill();
  rect (xTop, hTop, w, height + hBottom); 




  top.draw();
  top.update();
  bottom.draw();
  bottom.update();

  //noFill();
  circle(x, y, radius);


  //Setup Jumping
  //p1.draw();




  //Counting points
  fill(0, 0, 0);
  textSize(30);
  text("Score: " + i, width/2, 70);
  update ();
}

void update () {


  if (x >= (xTop+ w) ) { 

    di = 1;
    i = i + di;
  }


  //rect (xTop, hTop, w, height + hBottom); 

  //Stopping game
  if (x >= xTop && x <= (xTop + w)  &&  y <= hTop ) {
    speedx = 0;
    dy = 70;
  }

  if (x >= xTop && x <= (xTop + w)  && y >= (height + hBottom) ) {
    speedx = 0;
    dy = 70;
  }

  if (y >= 1100 ) {
    speedx = 0;
    dy = 70;
  }






  xTop = xTop + speedx;
  xBottom = xBottom + speedx;

  if ((xBottom + w) <= 0) {
    xTop = width;
    xBottom = width;

    speedx = speedx + speedx*percent;
    jumpspeed = jumpspeed + jumpspeed*percent1;



    phase = int (random(1, 10));

    if (phase == 1) {

      hTop = 0;
      hBottom = -(height - space - hTop);
    }

    if (phase == 2) {

      hTop = 200;
      hBottom = -(height - space - hTop);
    }

    if (phase == 3) {

      hTop = 400;
      hBottom = -(height - space - hTop);
    }
    if (phase == 4) {

      hTop = 600;
      hBottom = -(height - space - hTop);
    }
    if (phase == 5) {

      hTop = 800;
      hBottom = -(height - space - hTop);
    }

    if (phase == 6) {

      hTop = 150;
      hBottom = -(height - space - hTop);
    }

    if (phase == 7) {

      hTop = 250;
      hBottom = -(height - space - hTop);
    }

    if (phase == 8) {

      hTop = 350;
      hBottom = -(height - space - hTop);
    }
    if (phase == 9) {

      hTop = 450;
      hBottom = -(height - space - hTop);
    }
    if (phase == 10) {

      hTop = 550;
      hBottom = -(height - space - hTop);
    }
  }
}


void keyPressed () {
  if (key == ' ') {
    dy = jumpspeed;
  }

  if (key == 'r') {
    xTop =1000;
    xBottom = 1000;


    x = 100;
    y = 500;
    jumpspeed = -5;
    speedx = -5; //Speed of obstacles
    dy = 0;
    i = 0;
space = random(200,400);  
}
}

void keyReleased () {
  if (key == ' ') {
    dy = -jumpspeed;
  }
}
