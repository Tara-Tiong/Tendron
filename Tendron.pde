int i = 20;
int numRecursions = 3;
public void setup()
{
  size(600, 600);  
  background(255);
  noLoop();
}

public void draw()
{
  background(30, 25, 25);
  Cluster c = new Cluster(i, mouseX, mouseY); 
  c.show();
}
public void mousePressed()
{
  if(i < 200){
  i+=3;
  redraw();
  }
  if(i == 200)
  i =10;
}
