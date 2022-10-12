//Han Gong
//216336653



//Presses the left and right mouse to move the block below




Mover m;
enemy e;
player p;
float damp = 1;
PVector playerloc = new PVector(width/2,300);
void setup() {
  size(600, 400);
  smooth();
  m = new Mover();
  e = new enemy();
  p = new player(playerloc);
  e.drawenemy();
}

void draw() {
  background(255);
  PVector gravity = new PVector(0, -0.03);
  
  
  p.drawplayer();
  p.change(playerloc);
  if (e.Collider(m.location).x==1) {//check the collider
    m.velocity.x *= -1;
    print("yes");//debug process of collider
  }
  if(p.Collider(m.location)==1){
      m.velocity.y *= -1;
      print("ok");
  }
  e.update(e.Collider(m.location));//update the enemy map
  m.applyForce(gravity);
  m.update();
  m.display();
  m.checkEdges();
}

void mousePressed() {
  if (mouseButton == LEFT) {
    playerloc.x-=10;
  } 
  else if(mouseButton == RIGHT) {
     playerloc.x+=10;
  } 
}
