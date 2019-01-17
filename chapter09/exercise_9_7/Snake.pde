class Snake{
  int[] xpos, ypos;
  
  Snake(int temn){
    xpos = new int[temn];
    ypos = new int[temn];
    for(int i=0; i<temn; i++){
      xpos[i] = ypos[i] = 0;
    }
  }
  
  void display(){
    for(int i=0; i<xpos.length-1; i++){
      xpos[i] = xpos[i+1];
      ypos[i] = ypos[i+1];
    }
    xpos[xpos.length-1] = mouseX;
    ypos[ypos.length-1] = mouseY;
    //Draw
    for(int i=0; i<xpos.length; i++){
      noStroke();
      fill(0,255-i*5,0,i*5);
      ellipse(xpos[i],ypos[i],i/2,i/2);
    }
  }
}
