ArrayList<Particle> particles;

void setup(){
 size(400,400);
 particles = new ArrayList<Particle>();
}

void draw(){
  background(0);
  
  for (int j = particles.size() - 1; 0 <= j; j--){
    particles.get(j).update();
    particles.get(j).display();
    //delete any particles that are out of bounds
    if(particles.get(j).position.y >= height){
      particles.remove(j);
    }
  
  }
  if(mousePressed == true) {
    particles.add(new Particle(mouseX, mouseY));
  }
}
