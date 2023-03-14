class Spiller{
  int antalFælter,diameter,spillepladeDIA,nyVærdi,nyVærdi2,antalRyk,nuværendeFelt,nuværendeFelt2;
  float p1x,p2x;
  boolean spiller;
  
  
  Spiller(){
    spiller=true;
    antalFælter=32;
    spillepladeDIA=650;
    diameter=spillepladeDIA/3+(spillepladeDIA/24);
    p1x = antalFælter/1.5;
    p2x = antalFælter/1.25;
    nuværendeFelt = 0;
    nuværendeFelt2 = 0; 
     
  }
  
  void værdiTerning(){
    if(spiller == true){
    nyVærdi = terninger.getNyVærdi();
    nuværendeFelt=nuværendeFelt+nyVærdi;
    println(nuværendeFelt%32);
    
    }else{
      nyVærdi2 = terninger.getNyVærdi();
      nuværendeFelt2 = nuværendeFelt2+nyVærdi2;
    }
    spiller = !spiller;
  }
  
 
  void show(){
    translate(width/2, height/2);
      push();
      rotate((TWO_PI/antalFælter)*nuværendeFelt);
      fill(215, 0, 64);
      circle(p1x,diameter,20);
      pop();
      
      push();
      rotate((TWO_PI/antalFælter)*nuværendeFelt2);
        fill(137, 207, 240);
        circle(p2x,diameter*1.25,20);
      pop();
       
  }
}
