class Particle {
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  color part;
  
  Particle(float x, float y){
    part = color(random(0,255),random(0,255),random(0,255));
    position = new PVector(x, y);
    velocity = new PVector(random(-2, 2), random(-2, 2));
    acceleration = new PVector(0, 0.5);
  }
  
  void update(){
    velocity.add(acceleration);
    position.add(velocity);
  }
  
  void display(){
    fill(part);
    ellipse(position.x, position.y, 10, 10);
  }
}
