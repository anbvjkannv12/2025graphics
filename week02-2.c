//week02-2
size(400,400);
background(255);
fill(238);
noStroke();
float s=400/14;//計算每個格子的大小
for(int i=0;i<14;i++){
  for(int j=0;j<14;j++){
    //rect(0,i*s*2,s,s);
    if((i+j)%2==0)rect(j*s*2,i*s*2,s,s);
  }
}
