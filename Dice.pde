
void setup()
{
  size(500,500);
  noLoop();
}
void draw()
{
  for(int i = 20; i<400; i= i + 41){
    for(int i2 = 20; i2<400; i2= i2+41){
      Die bob = new Die(i2,i);
      bob.roll();
      bob.show(); 
    }
}


 
  //your code here
}
void mousePressed()
{
  redraw();
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
