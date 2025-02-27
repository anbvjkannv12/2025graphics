//week02-3
void setup(){//
  size(400,400);
  background(255);
  fill(238);
  noStroke();
  float s=400/14;//計算每個格子的大小
  for(int i=0;i<14;i++){
    for(int j=0;j<14;j++){
      //rect(0,i*s*2,s,s);
      if((i+j)%2==0)rect(j*s,i*s,s,s);
    }//下面才是真正的程式碼
  }
}
void draw(){
  stroke(255,0,0);
  if(mousePressed) line(mouseX,mouseY,pmouseX,pmouseY);
}//如果mouse按下去，就畫線，給兩個座標:現在的mouse和之前的mouse
