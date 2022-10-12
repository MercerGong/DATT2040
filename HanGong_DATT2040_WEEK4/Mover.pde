class Mover {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
  float friction = -0.9;
  Mover() {
    location = new PVector(width/2,height-150);
    velocity = new PVector(03,0);
    acceleration = new PVector(0,3);
    mass = 1.2;
  }
  
  void applyForce(PVector force) {
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }
  
  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(location.x,location.y,30,30);
  }

  void checkEdges() {

    if (location.x > width) {
      location.x = width;
      velocity.x *= -1;
    } else if (location.x < 0) {
      velocity.x *= -damp;
      location.x = 0;
    }
       

    if (location.y > height) {
      velocity.y *= -1;
      location.y = height;
    } else if (location.y < 0) {
      velocity.y *= -damp;
      location.y = 0;
    }
  }

  PVector location(){
  return this.location;
  }

}
