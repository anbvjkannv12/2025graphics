//week04-5a_rotateZ_translate_box
void setup(){
  size(400,400,P3D);
}
void draw(){
  background(128);
  translate(width/2,height/2);//移動到畫面中心點
      //以下兩行，分別註解、排列組和觀察
      rotateZ(radians(frameCount));//對z軸旋轉
      //translate(0,-50-25);//把下端，移動到中心去
      box(10,100,10);//可轉動長度
}
