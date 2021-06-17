


class ObstaclesTop {



  ObstaclesTop (float xxTop, float yyTop, float hhTop) {

    xTop = xxTop;
    yTop = yyTop;
    hTop = hhTop;
  }

  void draw () {
    fill (0, 115, 38);
    rect (xTop, yTop, w, hTop);
  }

  void update () {
  }
}
