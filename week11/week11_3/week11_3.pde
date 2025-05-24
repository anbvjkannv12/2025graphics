//week11-3
PImage postman,head,body,uparm1,hand1,uparm2,hand2,foot1,foot2;
void setup(){
  size(560,560);
  postman=loadImage("postman.png");
  head=loadImage("head.png");
  body=loadImage("body.png");
  uparm1=loadImage("uparm1.png");
  uparm2=loadImage("uparm2.png");
  hand1=loadImage("hand1.png");
  hand2=loadImage("hand2.png");
  foot1=loadImage("foot1.png");
  foot2=loadImage("foot2.png");
}
float[]angleX=new float[10];//在3D2的世界裡，我們旋轉
float[]angleY=new float[10];
int ID=0;
ArrayList<String> lines=new ArrayList<String>();
void keyPressed(){
  if(key=='s'){//現在動作所有關節，都存起來
     String now="";//空字串
     for(int i=0;i<10;i++){
       now+=angleX[i]+" ";
       now+=angleY[i]+" ";
     }
     lines.add(now);
     String[]arr=new String[lines.size()];
     lines.toArray(arr);
     saveStrings("angles.txt",arr);
     println("現在存檔:"+now);
  }
  if(key=='r'){
     String[]file=loadStrings("angles.txt");
     if(file!=null){
        for(int i=0;i<file.length;i++){
          lines.add(file[i]);
          println("現在讀檔:"+file[i]);
        }
     }  
  }
  if(key=='p')playing = !playing;
  if(key=='1') ID=1;
  if(key=='2') ID=2;
  if(key=='3') ID=3;
  if(key=='4') ID=4;
  if(key=='5') ID=5;
  if(key=='6') ID=6;
  if(key=='0') ID=0;
}
boolean playing=false;//一開始，不播放動畫，按下'p'可切換
void mouseDragged(){
  angleX[ID]+=mouseX-pmouseX;
  angleY[ID]+=mouseY-pmouseY;//多了這一行
}
int R = 0;
void myInterpolate(){
  if(lines.size()>=2){
    float alpha = (frameCount%30)/30.0;
    if(alpha==0.0) R = (R+1)%lines.size();
    int R2=(R+1)%lines.size();
    float[]oldAngle=float(split(lines.get(R),' '));
    float[]newAngle=float(split(lines.get(R2),' '));
     for(int i=0;i<10;i++){
       angleX[i]=oldAngle[i*2+0]*(1-alpha)+newAngle[i*2+0]*alpha;
       angleY[i]=oldAngle[i*2+1]*(1-alpha)+newAngle[i*2+1]*alpha;
     }
  }
}
void draw(){
  background(#FFFFF2);
  if(playing) myInterpolate();
  image(body, 0, 0);//先畫身體
  pushMatrix();
  translate(232, 200);// 再放回去正確的位置
  rotate(radians(angleX[0]));
  translate(-232, -200);// 把頭的旋轉中心，放到(0,0)
  image(head, 0, 0);//再畫頭
  popMatrix();
  pushMatrix();//foot1
    translate(220, 375);
    rotate(radians(angleX[5]));
    translate(-220, -375);
    image(foot1, 0, 0);
  popMatrix();
  pushMatrix();//foot2
    translate(260, 372);
    rotate(radians(angleX[6]));
    translate(-260, -372);
    image(foot2, 0, 0);
  popMatrix();
  pushMatrix();//上手臂
  translate(185, 261);// 再放回去正確的位置
  rotate(radians(angleX[1]));
  translate(-185, -261);// 旋轉中心，放到(0,0)
  image(uparm1, 0, 0);
  pushMatrix();//手
  translate(126, 261);// 再放回去正確的位置
  rotate(radians(angleX[2]));
  translate(-126, -261);// 旋轉中心，放到(0,0)
  image(hand1, 0, 0);
  popMatrix();
  popMatrix();
  pushMatrix();//上手臂2
    translate(290, 262);// 再放回去正確的位置
    rotate(radians(angleX[3]));
    translate(-290, -262);// 旋轉中心，放到(0,0)
    image(uparm2, 0, 0);
    pushMatrix();//手2
      translate(357, 259);// 再放回去正確的位置
      rotate(radians(angleX[4]));
      translate(-357, -259);// 旋轉中心，放到(0,0)
      image(hand2, 0, 0);
    popMatrix();
  popMatrix();
}
