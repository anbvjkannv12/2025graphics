//week02-3
void setup(){//
  size(400,400);
  background(255);
  fill(238);
  noStroke();
  float s=400/14;//�p��C�Ӯ�l���j�p
  for(int i=0;i<14;i++){
    for(int j=0;j<14;j++){
      //rect(0,i*s*2,s,s);
      if((i+j)%2==0)rect(j*s,i*s,s,s);
    }//�U���~�O�u�����{���X
  }
}
void draw(){
  stroke(255,0,0);
  if(mousePressed) line(mouseX,mouseY,pmouseX,pmouseY);
}//�p�Gmouse���U�h�A�N�e�u�A����Ӯy��:�{�b��mouse�M���e��mouse
