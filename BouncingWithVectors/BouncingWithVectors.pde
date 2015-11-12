float x, y, vel.X, vel.Y, diam;
PVector loc;
PVector vel;

void setup(){
  size(800, 600);
  x = width/2;
  y = height/2;
  diam = 80;
  vel.X = random(-5, 5);
  vel.Y = random(-5, 5);
}

void draw() {
  background(0);
  ellipse(loc.x, loc.y, diam, diam);
  x += vel.X;
  y += vel.Y;
  if (x + diam/2 >= width){
    vel.X = -abs(vel.X);
  } else if (x - diam/2 <= 0){
    vel.X = abs(vel.X);
  }
  if (y + diam/2 >= height){
    vel.Y = -abs(vel.Y);
  } else if (y - diam/2 <= 0){
    vel.Y = abs(vel.Y);
  }
  
}