public class Particle
{
  float myX, myY;
  double mySpeed, myAngle;
  int myColor, myOpacity;
  Particle()
    {
      myX = 200;
      myY = 200;
      myAngle = Math.random()*2*Math.PI;
      mySpeed = Math.random()*10;
      myColor = color(200, 200, 200);
      myOpacity = (int)(Math.random()*20)+80;
    }
    void move() {
      myX += Math.cos(myAngle * mySpeed);
      myY += Math.sin(myAngle * mySpeed);
      if (myX > 400 || myX < 0) {
        myX = 200;
      } else if (myY > 400 || myY < 0) {
        myY = 200;
      }
    }
    void show() {
       fill(myColor, myOpacity);
       ellipse(myX, myY, 10,10);
  }
}

class Reticle extends Particle 
{
  int reticleColor;
  Reticle()
  {
    reticleColor = color(0, 175, 0);
  }
    void move() {  
      myX +=(Math.random()*20)-10;
      myY +=(Math.random()*20)-10;
      if (myX > 400 || myX < 0) {
        myX = 200;
      } else if (myY > 400 || myY < 0) {
        myY = 200;
        }
      }
    void show() {
      fill(0, 175, 0);
      ellipse(myX, myY, 30, 30);
    }
}

Particle[] droplets = new Particle[50];
boolean start = false;
void setup() {
  size(400,400);
  noStroke();
  for (int i = 0; i < droplets.length; i++) {
    droplets[i] = new Particle();
  }
  droplets[0] = new Reticle();
}
void draw() {
  background(0, 205, 255);
  for(int i = 0; i < droplets.length; i++) {
    droplets[i].show();
    droplets[i].move();
  }
  fill(50, 50, 50);
  rect(80, 200, 20, 300, 28);
  rect(300, 200, 20, 300, 28);
  rect(85, 200, 230, 20, 28);
  rect(125, 300, 150, 75, 10);
  rect(165, 350, 75, 100, 10);
  fill(0, 175, 0);
  rect(330, 50, 3, 200);
  rect(325, 50, 12, 3);
  rect(325, 250, 12, 3);
  rect(325, 150, 12, 3);
  triangle(310, 70, 310, 80, 335, 75);
}

