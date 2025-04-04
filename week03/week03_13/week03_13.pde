//week03-13_3D_pushMatrix_translate_sphere_popMatrix
void setup(){
  size(600,400,P3D);
}
void draw(){
  background(128);
  lights();
  pushMatrix();//備份矩陣
    translate(300,100);//習慣上，要往右縮排
    rotate(radians(frameCount));//試試看
    sphere(100);
  popMatrix();//還原矩陣
  //要備份矩陣、還原矩陣就不會出錯
  pushMatrix();
    translate(100,100);
    rotate(radians(frameCount));//試試看
    sphere(100);
  popMatrix();
}
