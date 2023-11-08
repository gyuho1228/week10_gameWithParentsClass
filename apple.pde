class apple extends makingObs{
  apple(float xx, float yy, float dd, float vxx, float vyy){
    super(xx, yy ,dd, vxx, vyy);
  }
  apple(){
    super();
  }

  
  void object(){
    fill(255,0,0);
    circle(x,y,3*d);
    line(x,y-2*d,x,y-1*d);
  }  
  
  void collide(cat aa){
    float dx, dy, dis;
    dx = x - aa.x;
    dy = y - aa.y;
    dis = sqrt(dx*dx + dy*dy);
    if (dis < (3*(10+2*score) + 2*d)){//사과를 먹으면 점수 +1
      score += 1;
      x= 1100; y = 1100;
    }
  }
}
  
