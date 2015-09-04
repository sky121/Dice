Die bob = new Die(20,20);

void setup()
{
  size(400,400);
  noLoop();
}
void draw()
{
  bob.roll();
 bob.show(); 
 
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
 
    rect(diceX-20,0,40,40);

    if(RandNum == 1){
      
      ellipse(diceX,20,5,5);
    }
    if(RandNum == 2){
      
      ellipse(diceX-10,10,5,5);
      ellipse(diceX+10,30,5,5);
    }
        if(RandNum == 3){
      
      ellipse(diceX-10,10,5,5);
      ellipse(diceX+10,30,5,5);
       ellipse(diceX,20,5,5);
    }
     if(RandNum == 4){
       ellipse(diceX+10,30,5,5);
       ellipse(diceX-10,10,5,5);
      
      ellipse(diceX+10,10,5,5);
       ellipse(diceX-10,30,5,5);
    }
     if(RandNum == 5){
       ellipse(diceX+10,30,5,5);
       ellipse(diceX-10,10,5,5);
      ellipse(diceX,20,5,5);
      ellipse(diceX+10,10,5,5);
       ellipse(diceX-10,30,5,5);
    }
     if(RandNum == 6){
       ellipse(diceX+10,30,5,5);
       ellipse(diceX-10,10,5,5);
      ellipse(diceX-10,20,5,5);
        ellipse(diceX+10,20,5,5);
      ellipse(diceX+10,10,5,5);
       ellipse(diceX-10,30,5,5);
    }
  }
}
