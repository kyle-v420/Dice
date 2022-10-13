void setup()
  {
    size(600,300);
    noLoop();
  }
  void draw()
  {
    int total = 0; 
    background(154,145,3); 
      for(int c = 50; c <= 500; c=c+51){
        Die joe = new Die(c,50); 
        joe.roll();
        total = total + joe.getRoll(); 
        joe.show();
      }
      Total t = new Total(total);
      t.show();  //
  }
  void mousePressed()
  {
      redraw();
  }
  class Die 
  {
      int myX, myY,e;
   
     Die(int x, int y)
      {
         myX = x;
         myY = y;
      }
     int getRoll() { 
          return e; 
      }
      void roll()
      {
          e =(int)( Math.random() * 8) + 1;
      }
      void show()
      {
     noStroke();
     fill(16, 255, 161);
     rect(myX,myY,50,50);
     fill(0,0,0);
     text(getRoll(),myX+23,myY+30);
     }
   }

   
   class Total
  {
      int total;
   
     Total(int total)
      { 
        this.total = total; 
      }
      void show()
      {
     noStroke();
     text("Total: " +total, 200,250);
     }
   }
