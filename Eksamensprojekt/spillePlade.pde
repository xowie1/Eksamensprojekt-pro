class spillePlade{
int diameter = 650;
int feltLength = diameter/3+(diameter/48);
int indreDiameter = diameter*2/3;
float radian = 6.28318531; //360 grader i radianer
int antalFælter = 32;
  spillePlade(){
  }
  void show(int bg){
    fill(255);
    circle(width/2, height/2, diameter);
    
    
    for(int i = 0; i < antalFælter; i++){
      push();
      translate(width/2, height/2);
      rotate((TWO_PI/antalFælter)*i);
      line(0, 0,feltLength,feltLength);
      pop();
  }
    fill(bg);
    circle(width/2, height/2, indreDiameter);
  }
}
