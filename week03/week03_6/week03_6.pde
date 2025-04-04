//week03-6_lerp_frameCount
void setup(){
  size(400,400);
}
float startX=0,startY=0;
float stopX=400,stopY=400;
void draw(){
  ellipse(startX,startY,10,10);
  ellipse(stopX,stopY,10,10);
  //lerp()可以做內插，要給他0.0-1.0之間的數
  float midX=lerp(startX,stopX,frameCount/200.0);
  float midY=lerp(startY,stopY,frameCount/200.0);
  //frameCount是「第幾個frame」 1小時=60分，1分60秒 1秒=60frame
  ellipse(midX,midY,10,10);
  
}
