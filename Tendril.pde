class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    myNumSegments = len;
    myAngle = theta;
    myX = x;
    myY = y;
  }
  public void show()
  {
    stroke(20, (int)(Math.random()*185), (int)(Math.random()*165));
    strokeWeight(2);
    int startX = myX;
    int startY = myY;
    for(int i=0; i < myNumSegments; i++){
      myAngle += Math.random()*0.4-0.2;
      int endX = (int)(startX + Math.cos(myAngle) * SEG_LENGTH);
      int endY = (int)(startY + Math.sin(myAngle) * SEG_LENGTH);
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;      
    }
    
      if (myNumSegments > 4) {
        Cluster r = new Cluster(4*myNumSegments/10, startX, startY);
      }
  }
}
