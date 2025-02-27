//week02-4
PImage img;
void setup(){
  size(400,400);
  img=loadImage("cute.png");
}
void draw(){
  fill(255,mouseX);
  background(img);
  println(mouseX);
  rect(0,0,400,400);
}
