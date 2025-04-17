//week09-6_save_saveStrings_loadStrings
void setup(){
  size(300,300);
  rect(10,10,80,80);
  rect(110,110,80,80);
  save("file.png");//這個範例，可把某個畫面save()存檔
  another=loadStrings("line.txt");//如果順利讀到，就有陣列了
}
int x=10, y=10,ID=0;
void draw(){
  background(204);
  if(another != null){
    int [] now=int(split(another[ID],' '));
    rect(now[0],now[1], 80, 80);
    ID=(ID+1)%another.length;
  }
  rect(x,y,80,80);
 
}
void mouseDragged(){
  x+= mouseX- pmouseX;
  y+= mouseY- pmouseY;
  String now=x+" "+y;//現在座標的字串
  //println(now);//在小黑印出來
  lines.add(now);
}
ArrayList<String> lines=new ArrayList<String>();//ArrayList()資料結構
String [] another;//另外一個讀到的字串的衣料結構(一開始沒有東西)
void keyPressed(){
  String[]arr=new String[lines.size()];//傳統的java陣列的資料結構
  lines.toArray(arr);
  if(key=='s') saveStrings("lines.txt",arr);
}
