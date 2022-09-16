void setup(){
  size(400,400);
}

void draw(){
  frameRate(100);
  boolean change = true;
  for(int y = 400; y >=-20; y-=30){
    for(int x = 400; x >=0; x-=80){
      if(change == true){
      scales(x,y);
      }else
      scales(x-40,y);
      }
      if(change == true)
        change = false;
      else
        change = true;
    }
}

void scales(int x, int y){
  int diam = 0;
  strokeWeight(20);
  while(diam < 80){
  bezier(x+diam,y,x+50,y+80-diam,x+50,y+80-diam,x+100-diam,y);
  stroke((int)(Math.random()*156)+100,(int)(Math.random()*156)+100,(int)(Math.random()*156)+100);
  diam+=5;
  }
}
