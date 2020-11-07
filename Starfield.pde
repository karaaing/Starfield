Particle[] Boo;
OddballParticle Moo;

void setup()
{
  size(500,500);
  Boo = new Particle[200];
  for(int i = 0; i < Boo.length; i++) {
    Boo[i] = new Particle();
    Boo[i].angle();
    Boo[i].speed();
  }
  Moo = new OddballParticle();
}

void draw()
{
  background(48, 48, 64);
  for(int i = 0; i < Boo.length; i++) {
    Boo[i].move();
    Boo[i].show();
  }
  Moo.move();
  Moo.show();
}

class Particle
{
  double myX, myY, myAngle, mySpeed;
  Particle() {
    myX = myY = 250;
  }
  void angle() {
    myAngle = Math.random() * 2 * Math.PI;
  }
  void speed() {
    mySpeed = Math.random() * 7;
  }
  void move() { 
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
  void show() {
    fill(255);
    ellipse((float)myX, (float)myY, 7, 7);
  }
}

class OddballParticle {
  int myX, myY, num;
  OddballParticle() {
    myX = myY = 250;
  }
  
  void move() {
    if(mouseX > myX) {
      myX = myX + (int)(Math.random()*5) - 1;
    } else {
      myX = myX + (int)(Math.random()*5) - 3;
    }
    if(mouseY > myY) {
      myY = myY + (int)(Math.random()*5) - 1;
    } else {
      myY = myY + (int)(Math.random()*5) - 3;
    }
  }
  
  void show() {
    fill(196, 255, 202);
    ellipse(myX, myY, 15, 15);
  }
}

