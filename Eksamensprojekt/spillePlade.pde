class spillePlade{
int diameter = 600;
int indreDiameter = diameter*2/3;
  spillePlade(){
  }
  void show(int bg){
    fill(255);
    circle(width/2, height/2, diameter);
    fill(bg);
    circle(width/2, height/2, indreDiameter);
  }
}
