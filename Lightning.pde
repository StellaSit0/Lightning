int startX = 0;
int startY = 500;
int endX = 0;
int endY = 500;
void setup(){
  size(500,500);
  strokeWeight(10);
  background(42,43,42);
}
void draw(){
  //for(int i = 1;i<10; i++){
  stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  while(endX<=1000){
    endX=startX+(int)(Math.random()*10);
    endY=startY+(int)(Math.random()*10)-9;
    line(startX+10,startY+10,endX+10,endY+10);
    startX=endX;
    startY=endY;
  }
  System.out.println(endY);
}
void mousePressed(){
  startX=0;
  startY=500;
  endX=0;
  endY=500;
}
