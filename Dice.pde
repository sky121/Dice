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

int RandNum;
   //variable declarations here
  Die(int x, int y) //constructor
  {
    //variable initializations here
  }
  void roll()
  {
      RandNum  = (int)(Math.random()*6+1);
  }
  void show()
  {
 
    rect(0,0,40,40);

    if(RandNum == 1){
      
      ellipse(20,20,5,5);
    }
    if(RandNum == 2){
      
      ellipse(10,10,5,5);
      ellipse(30,30,5,5);
    }
        if(RandNum == 3){
      
      ellipse(10,10,5,5);
      ellipse(30,30,5,5);
       ellipse(20,20,5,5);
    }
     if(RandNum == 4){
       ellipse(30,30,5,5);
       ellipse(10,10,5,5);
      
      ellipse(30,10,5,5);
       ellipse(10,30,5,5);
    }
  }
}
