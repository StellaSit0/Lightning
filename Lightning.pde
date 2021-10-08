int startX = 0;
int startY = 500;
int endX = 0;
int endY = 500;
void setup(){
  size(500,600);
  strokeWeight(10);
  background(42,43,42);
}
void draw(){
  stroke(255,255,255);
  triangle(0,515,20,450,55,520);
  stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  while(endX<=1000){
    //stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    endX=startX+(int)(Math.random()*10);
    endY=startY+(int)(Math.random()*10)-8;
    line(startX+10,startY+10,endX+10,endY+10);
    startX=endX;
    startY=endY;
  }
}
void mousePressed(){
  startX=0;
  startY=500;
  endX=0;
  endY=500;
}


Die num1;
void setup(){
  size(500,500);
  num1 = new Die(250,250);
  noLoop();
}
void draw(){
  background(225);
  num1 = new Die(250,250);
  num1.show();
  //your code here
}
void mousePressed(){
  redraw();
}
class Die //models one single dice cube
{
  //member variable declarations here
  int sizeOfDice, theX, theY;
  Die(int x, int y){ //constructor
    //variable initializations here
    sizeOfDice=50;
    theX=x;
    theY=y;
  }
  void roll(){
    if(Math.random()*7<1){
      
    }
    //your code here
  }
  void show(){
    square(50,50,50);
    fill(0,0,0);
    ellipse(75,75,10,10);
    fill(255,255,255);
    square(100,100,50);
    fill(0,0,0);
    ellipse(115,125,10,10);
    ellipse(135,125,10,10);
  }
}
