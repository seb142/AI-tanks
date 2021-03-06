public class Turret {
  
  float xPos;
  float yPos;
  float radius;
  int cannon_length;
  Shell shell;
  
  public Turret(float xPos, float yPos, float radius, int cannon_length){
    this.xPos = xPos;
    this.yPos = yPos;
    this.radius = radius;
    this.cannon_length = cannon_length;
  }
  
  public void drawTurret(){
    strokeWeight(1);
    fill(255);
    ellipse(xPos,yPos,25,25);
    strokeWeight(2);
    line(0, 0, this.cannon_length, 0);
  }
  
  public void display(){
    drawTurret();
    shell = new Shell(xPos, yPos, 15);
    shell.run();
  }
}
