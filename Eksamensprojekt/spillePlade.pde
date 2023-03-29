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
    for(int i = 1; i < 4; i++){ 
    push();
    translate(width/2, height/2);
    rotate((TWO_PI/spillepladeFelter)*(i));
    text("4000 kr",-20,312);
    pop();
    }
    for(int i = 5; i < 8; i++){ 
    push();
    translate(width/2, height/2);
    rotate((TWO_PI/spillepladeFelter)*(i));
    text("2000 kr",-20,312);
    pop();
    }
    for(int i = 8; i < 11; i++){ 
    push();
    translate(width/2, height/2);
    rotate((TWO_PI/spillepladeFelter)*(i));
    text("5000 kr",-20,312);
    pop();
    }
    for(int i = 12; i < 15; i++){ 
    push();
    translate(width/2, height/2);
    rotate((TWO_PI/spillepladeFelter)*(i));
    text("3000 kr",-20,312);
    pop();
    }
    for(int i = 15; i < 18; i++){ 
    push();
    translate(width/2, height/2);
    rotate((TWO_PI/spillepladeFelter)*(i));
    text("2000 kr",-20,312);
    pop();
    }
    for(int i = 19; i < 22; i++){ 
    push();
    translate(width/2, height/2);
    rotate((TWO_PI/spillepladeFelter)*(i));
    text("4000 kr",-20,312);
    pop();
    }
    for(int i = 22; i < 25; i++){ 
    push();
    translate(width/2, height/2);
    rotate((TWO_PI/spillepladeFelter)*(i));
    text("3000 kr",-20,312);
    pop();
    }
    for(int i = 26; i < 29; i++){ 
    push();
    translate(width/2, height/2);
    rotate((TWO_PI/spillepladeFelter)*(i));
    text("2000 kr",-20,312);
    pop();
    }
  }
}
