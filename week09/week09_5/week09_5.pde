//week09-5_gundam_uparm_upuparm_hand_keyboard_mouse_angle
PShape uparm1,upuparm1,hand1;
void setup(){
  size(400,400,P3D);
  uparm1=loadShape("uparm1.obj");
  upuparm1=loadShape("upuparm1.obj");
  hand1=loadShape("hand1.obj");
}
float [] angle=new float[20];//準備20個關節
int ID=0;//關節的代碼 之後會用angle[ID] 來改變執
void keyPressed(){
  if(key=='1') ID=1;
  if(key=='2') ID=2;
}
void mouseDragged(){
  angle[ID] += mouseX-pmouseX;//X方向的移動，可改變抹個
 }
void draw(){
  background(204);
  translate(200,300);
  sphere(3);
  scale(10,-10,10);
  shape(upuparm1,0,0);//上上手臂
  pushMatrix();
    
    translate(-4.1,19.9);//再掛回去原本的位置
    rotateZ(radians(angle[1]));
    translate(4.1,-19.9);//把物體的旋轉中心，放到座標中心
    
    shape(uparm1,0,0);///上手臂
    pushMatrix();
      translate(-4.5,16.9);
      rotateX(radians(angle[2]));
      translate(4.5,-16.9);
      //translate(mouseX/10.0,-mouseY/10.0);//一邊移動、一邊找到數值
      //println(mouseX/10.0,-mouseY/10.0);//印出適合的數值ex:4.1,-19.9
      shape(hand1,0,0);
    popMatrix();
  popMatrix();
}
