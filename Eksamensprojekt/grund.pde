class Grund{
  int pos,pris,leje,ejer;
  Grund(int _pos,int _pris,int _leje, int _ejer){
    pos=_pos;
    pris=_pris;
    leje=_leje;
    ejer=_ejer;
    
  }
  
  //Her tegner den husene på grunden
  void show(){
    if(ejer == 1){
      push();
      translate(width/2, height/2);
      
      rotate((TWO_PI/29)*pos);
      
      fill(135,206,150); 
      rect(5,230, 20, 20); 
      pop();
      } else if(ejer == 2){
        push();
      translate(width/2, height/2);
      
      rotate((TWO_PI/29)*pos);
      
      fill(220, 20, 60);
      rect(5,230, 20, 20); 
      pop();
      
      }
     
  }
}
