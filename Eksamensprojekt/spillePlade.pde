class spillePlade{
int diameter = 650;
int feltLength = diameter/3+(diameter/48);
int indreDiameter = diameter*2/3;
int spillepladeFelter = 29;
  spillePlade(){
  }
  void show(int bg){
    fill(255);
    circle(width/2, height/2, diameter);
    
    
    for(int i = 0; i < spillepladeFelter; i++){
      push();
      translate(width/2, height/2);
      rotate((TWO_PI/spillepladeFelter)*i);
      line(0, 0,feltLength,feltLength);
      pop();
  }
    
    fill(bg);
    circle(width/2, height/2, indreDiameter);
    fill(0);
    textSize(15);
    text("START",width/2-15,715);
    
    for(int j = 1; j < 5; j++){ 
    push();
    translate(width/2, height/2);
    rotate((TWO_PI/spillepladeFelter)*(j*7-3));
    text("lykken",-20,312);
    pop();
    }
    
  }
}
