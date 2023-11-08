class makingObs{
  makingObs(float xx, float yy, float dd, float vxx, float vyy){
    x = xx;
    y = yy;
    d = dd;
    vx = vxx;
    vy = vyy;
  }
  makingObs(){
    x = random(width);
    y = random(height);
    d = random(5, 15);
    vx = random(4, 6);  
    vy = random(4, 6);
  }
  
  float x, y, d;
  float vx, vy;
  
  void move(){
    x += vx; y += vy;
    if(x>width || x<0) vx = -vx;
    if(y>height || y < 0) vy = -vy;
  }
}
