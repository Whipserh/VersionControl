ArrayList<Particle> particles;

void setup(){
 size(400,400);
 particles = new ArrayList<Particle>();
}

void draw(){
  background(0);
  for (int i = particles.size() - 1; 0 <= i; i--){
    particles.get(i).update();
    particles.get(i).display();
    //delete any particles that are out of bounds
    if(particles.get(i).position.y >= height){
      particles.remove(i);
    }
  }
  if(mousePressed == true) {
    particles.add(new Particle(mouseX, mouseY));
  }
}
