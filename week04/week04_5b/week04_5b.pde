//week04-5b_translate_mouseX_mouseY_rotateZ_translate_box
void setup(){
  size(400,400,P3D);
}
void draw(){
  background(128);
  //translate(width/2,height/2);//移動到畫面中心點
      translate(mouseX,mouseY);//加這行
      rotateZ(radians(frameCount));//對z軸旋轉
      translate(0,-50-25);//把下端，移動到中心去
      box(10,100,10);//可轉動長度
}
