int sum = 0;
void setup()
{
  size(490,500);
  noLoop();
}
void draw()
{
  background(140,102,459);
  for(int i = 20; i<400; i= i + 50){
    for(int i2 = 20; i2<501; i2= i2+50){
      Die bob = new Die(i2,i);
      bob.roll();
      bob.show();
      sum = sum+bob.RandNum;
    }
}


 text(sum, 450,450);
  //your code here
}
void mousePressed()
{
  redraw();
  sum=0;
}
class Die //models one single dice cube
{  
int diceX, diceY;
int RandNum;
   //variable declarations here
  Die(int x, int y) //constructor
  {
    diceX = x;
    diceY = y;
    //variable initializations here
  }
  void roll()
  {
      RandNum  = (int)(Math.random()*6+1);
  }
  void show()
  {
 
    rect(diceX-20,diceY-20,40,40);

    if(RandNum == 1){
      
      ellipse(diceX,diceY,5,5);
    }
    if(RandNum == 2){
      
      ellipse(diceX-10,diceY-10,5,5);
      ellipse(diceX+10,diceY+10,5,5);
    }
        if(RandNum == 3){
      
      ellipse(diceX-10,diceY-10,5,5);
      ellipse(diceX+10,diceY+10,5,5);
       ellipse(diceX,diceY,5,5);
    }
     if(RandNum == 4){
       ellipse(diceX+10,diceY+10,5,5);
       ellipse(diceX-10,diceY-10,5,5);
      
      ellipse(diceX+10,diceY-10,5,5);
       ellipse(diceX-10,diceY+10,5,5);
    }
     if(RandNum == 5){
       ellipse(diceX+10,diceY+10,5,5);
       ellipse(diceX-10,diceY-10,5,5);
      ellipse(diceX,diceY,5,5);
      ellipse(diceX+10,diceY-10,5,5);
       ellipse(diceX-10,diceY+10,5,5);
    }
     if(RandNum == 6){
       ellipse(diceX+10,diceY+10,5,5);
       ellipse(diceX-10,diceY-10,5,5);
      ellipse(diceX-10,diceY,5,5);
        ellipse(diceX+10,diceY,5,5);
      ellipse(diceX+10,diceY-10,5,5);
       ellipse(diceX-10,diceY+10,5,5);
    }
  }
}
