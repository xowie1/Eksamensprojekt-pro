class Spiller{
  int antalFælter,diameter,spillepladeDIA;
  float p1x,p2x;
  
  
  Spiller(){
    antalFælter=32;
    spillepladeDIA=650;
    diameter=spillepladeDIA/3+(spillepladeDIA/24);
    p1x = antalFælter/1.5;
    p2x = antalFælter/1.25;
    
  }
  
  void værdiTerning(){
    int nyVærdi = terninger.getNyVærdi();
    println(nyVærdi);
  }
  
  void show(){
    for(int i = 0; i < antalFælter; i++){
      pushMatrix();
      translate(width/2, height/2);
      rotate((TWO_PI/antalFælter)*i);
      fill(215, 0, 64);
      circle(p1x,diameter,20);
      fill(137, 207, 240);
      circle(p2x,diameter*1.25,20);
      popMatrix();
      
  }

  } 

}
