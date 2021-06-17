class bicycle {
  float x;
  float y;
  int r=0;
  int g=0;
  int b=0;
  float scale;
  char jumpkey;



  float dropspeed = 5;
  float jumpspeed = dropspeed * 2;
  //Constructor


  bicycle (float xx, float yy, int rr, int gg, int bb, float scalee, char jumpkeyy) {

    x = xx;
    y = yy;
    r = rr;
    g = gg;
    b = bb;
    scale = scalee;
    jumpkey = jumpkeyy;
  }


  

  void jump() {
  
    }
  

  //Wheel START
  void c1 (float x, float y) {

    strokeWeight(6);
    stroke(0, 0, 0);
    noFill();
    circle(x, y, 50);
    strokeWeight(3);
    line(x-25, y, x+25, y);
    line(x, y-25, x, y+25);
    line(x-17.68, y-17.68, x, y);
    line(x+17.68, y+17.68, x, y);
    line(x+17.68, y-17.68, x-17.68, y+17.68);
  }

  void fr (float x, float y) {

    strokeWeight (5);
    stroke(r, g, b);
    line(x, y, x+25, y-37.5);
    line(x+25, y-37.5, x+75.5, y-37.5);
    line(x, y, x+55, y);
    line(x+55, y, x+75.5, y-37.5);
    line(x+75.5, y-37.5, x+100, y);
    line(x+100, y, x+66, y-50);
    circle(x+66, y-50, 5);
    rect(x+20, y-45.5, 10, 3);
    circle(x+25, y-37.5, 6);
    circle(x+55, y, 20);
    line(x+55, y, x+25, y-37.5);


    stroke(0, 0, 0);
    strokeWeight(13);
    line(x+20, y-45.5, x+50, y-25);
    line(x+50, y-25, x+50, y);
    strokeWeight(20);
    line(x+20, y-45.5, x+30, y-85);
    strokeWeight (10);
    line(x+30, y-75, x+60, y-44);
    stroke(0, 0, 0);
    fill(0, 0, 0);

    circle(x+38, y-100, 10);
    noStroke();
    fill(0, 0, 0);
    circle(x+20, y-45.5, 25);
  }
  void cb (float x, float y) {

    c1(x, y);
    c1(x+100, y);
    fr (x, y);
  }  

  //Wheel END

void draw () {


    scale(scale);
    cb (x/scale, y/scale);


  }

}
