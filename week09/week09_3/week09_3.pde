//week09-3_gundam_uparm_upuparm
PShape uparml,upuparml;
void setup(){
  size(400,400,P3D);
  uparml=loadShape("uparm1.obj");
  upuparml=loadShape("upuparm1.obj");
}
void draw(){
  background(204);
  translate(200,300);
  sphere(3);
  scale(10,-10,10);
  shape(upuparml,0,0);//上手臂
  pushMatrix();
    //translate(mouseX/10.0,-mouseY/10.0);//一邊移動、一邊找到數值
    //println(mouseX/10.0,-mouse/10.0);//印出適合的數值ex:4.1,-19.9
    translate(-4.1,19.9);//再掛回去原本的位置
    rotate(radians(mouseY));
    translate(4.1,19.9);//把物體的旋轉中心，放到座標中心
    
    shape(uparml,0,0);///上手臂
  popMatrix();
}
