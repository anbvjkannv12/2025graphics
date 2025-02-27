//week02-7
//想要有很多段，不要一職換 (一筆畫)一直接著畫
ArrayList<Integer> x,y;
ArrayList<ArrayList<Integer>> xx=new ArrayList<ArrayList<Integer>>();
ArrayList<ArrayList<Integer>> yy=new ArrayList<ArrayList<Integer>>();
PImage img;
void setup(){
  size(400,400);
  img=loadImage("cute.png");
}
void draw(){
  background(img);
  fill(255,200);
  rect(0,0,400,400);
  for(int I=0;I<xx.size();I++){
    ArrayList<Integer> x=xx.get(I);
    ArrayList<Integer> y=yy.get(I);
    for(int i=1;i<x.size();i++){
      line(x.get(i),y.get(i),x.get(i-1),y.get(i-1));
    }
  }
  noFill();
  stroke(5);
  draw1();
}
void keyPressed(){
  if(key=='s' || key=='S'){
    for(int I=0;I<xx.size();I++){
    ArrayList<Integer> x=xx.get(I);
    ArrayList<Integer> y=yy.get(I);
    println("beginShape();");
    for(int i=1;i<x.size();i++){
      println("vertex("+x.get(i)+","+y.get(i)+");");
      }
      println("endShape();");
    }
  }
}
void mouseDragged(){
  ///println("vertex("+mouseX+","+mouseY+");");
  x.add(mouseX);
  y.add(mouseY);
}
void mousePressed(){
    x=new ArrayList<Integer>();xx.add(x);
    y=new ArrayList<Integer>();yy.add(y);
}
void draw1(){

beginShape();
vertex(293,135);
vertex(289,139);
vertex(286,140);
vertex(285,142);
vertex(282,142);
vertex(280,145);
vertex(279,145);
vertex(277,146);
vertex(276,148);
vertex(274,148);
vertex(273,149);
vertex(273,151);
vertex(273,153);
vertex(275,154);
vertex(278,156);
vertex(281,157);
vertex(286,161);
vertex(289,162);
vertex(291,164);
vertex(294,165);
vertex(295,166);
vertex(297,169);
vertex(299,170);
vertex(299,171);
vertex(299,170);
vertex(300,168);
vertex(302,165);
vertex(304,163);
vertex(305,160);
vertex(307,156);
vertex(308,152);
vertex(310,150);
vertex(311,149);
vertex(312,148);
vertex(311,146);
vertex(310,146);
vertex(308,145);
vertex(307,145);
vertex(306,145);
vertex(304,145);
vertex(304,144);
vertex(303,144);
vertex(302,144);
vertex(300,143);
vertex(299,143);
vertex(298,143);
vertex(297,142);
vertex(296,141);
vertex(296,140);
vertex(295,140);
vertex(295,138);
vertex(295,137);
vertex(295,136);
vertex(294,134);
vertex(292,133);
vertex(292,132);
vertex(292,129);
vertex(292,127);
vertex(292,126);
endShape();
}
