//week08-1
size(400,400,P3D);//3 要有P3D的openGL 3D 功能
PShape gundam=loadShape("Gundam.obj");//1 讀入3D模型
translate(width/2,height/2);
pushMatrix();//備分矩陣
  translate(0,100);//5 往下移
  scale(10,-10,10);//4 把模型放大
  shape(gundam,0,0);//2 畫出3D模型
 popMatrix();
