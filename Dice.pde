  void setup() {
      noLoop();
      size(1500,1550);
      background(0);
  }
  int sum = 0;
  int siz = 10;
  void draw() {
    //your code here
    for(int row = 0; row <151; row++) {
      //int diceDice = 0;
      for(int col = 0; col  < 151; col++){
        Die dice = new Die(col*10, row*10, siz);
        dice.roll();
        sum += dice.forTotal();
      }
    }
    fill(255);
    text(sum, 10, 1525);
  }
  void mouseClicked() {
    background(0);
    sum = 0;
    redraw();
  }
  class Die //models one single dice cube
  {
    //member variable declarations here
    int myX, myY, siz;
    int val = 0;
    Die(int x, int y, int sizz) //constructor
    {
        //variable initializations here    
          myX = x;
          myY = y;
          siz = sizz;
    }
    void roll()
    {
        //your code here
        val = (int)(Math.random()*6)+1;
        show();
    }
    void show()
    {
        //your code here
        fill(255);
        rect(myX, myY, siz, siz);
        fill(0);
        if (val == 1) {
        ellipse(myX +siz/2, myY+siz/2, 0.5, 0.5);     
        }
        if(val ==2) {
          ellipse(myX+ siz-5, myY+siz-3, 0.5, 0.5);
          ellipse(myX+siz-5, myY+siz-7, 0.5, 0.5);
        }
        if(val == 3) {
          ellipse(myX +siz/2, myY+siz/2, 0.5, 0.5);
          ellipse(myX +siz-8, myY+siz+-8, 0.5, 0.5);
          ellipse(myX + siz-2, myY+siz-2, 0.5, 0.5);
        }
        if(val ==4) {
          ellipse(myX + siz-2,myY +siz-2 ,0.5,0.5);
          ellipse(myX + siz-2,myY +siz-8,0.5,0.5);
          ellipse(myX + siz-8,myY+siz-2,0.5,0.5);
          ellipse(myX+ siz-8,myY+siz-8,0.5,0.5);
        }
        if (val == 5) {
          ellipse(myX +siz/2, myY+siz/2, 0.5, 0.5);
          ellipse(myX +siz-8, myY+siz+-8, 0.5, 0.5);
          ellipse(myX + siz-2, myY+siz-2, 0.5, 0.5);
          ellipse(myX + siz-8, myY+siz-2, 0.5, 0.5);
          ellipse(myX + siz-2, myY+siz-8, 0.5, 0.5);
        }
        if(val == 6) {
          ellipse(myX + siz-2,myY +siz-2 ,0.5,0.5);
          ellipse(myX + siz-2,myY +siz-5 ,0.5,0.5);
          ellipse(myX + siz-2,myY +siz-8 ,0.5,0.5);
          ellipse(myX + siz-8,myY +siz-2 ,0.5,0.5);
          ellipse(myX + siz-8,myY +siz-5 ,0.5,0.5);
          ellipse(myX + siz-8,myY +siz-8 ,0.5,0.5);
        }
    }
    int forTotal() {
      return val;
    }
  }
