class PointA
{
  float x=0,y=0;
  float rx = 0, ry = 0;

  float mid_x, mid_y;
  float rmidx, rmidy;
  float index;

  void init(int index)
  {
    this.index = index;
    x = int(random(index, index+20));
    y = int(random(100, 300));
    rx = int(random(index, index+20));
    ry = int(random(100, 300));

    mid_x = int(random(index, index+20));
    mid_y = int(random(300, 380));
    rmidy = int(random(300, 380));
    rmidx = int(random(index, index+20));
  }

  void draw()
  {
    ellipse(x, y, 4, 3);

    if(x < rx) x += 1;
    else if(x > rx) x -= 1;
    //if(y < ry) y += 1;
    //else if(y > ry) y -= 1;

    if(mid_x < rmidx) mid_x += 1;
    else if(mid_x > rmidx) mid_x -= 1;
    if(mid_y < rmidy) mid_y += 1;
    else if(mid_y > rmidy) mid_y -= 1;

    if(x == rx)
    {
      rx = int(random(index, index+100));
      //ry = int(random(100, 300));
    }

    if(mid_x == rmidx && mid_y == rmidy)
    {   
      rmidy = int(random(300, 380));
      rmidx = int(random(index, index+100));
    }

    beginShape();
    curveVertex(x, y); // the first control point
    curveVertex(x, y); // is also the start point of curve


    curveVertex(mid_x, mid_y);

    curveVertex(index, height); // the last point of curve
    curveVertex(index, height); // is also the last control point
    endShape();
  }
}


ArrayList<PointA> points = new ArrayList<PointA>();
int count = 1000;
void setup()
{
  size(800, 400);
  smooth();
  fill(#F0FFF0);
  noFill();
  stroke(#F0FFF0);
  frameRate(30);
  for(int i = 0;i< width;i++)
  {
    PointA a = new PointA();
    a.init(i);
    points.add(a);
  }
}
void draw()
{
  background(51);
  for(int i = 0;i< width;i++)
  {
    points.get(i).draw();
  }
  if(count <= 1250)
  {
    save("/home/lzg/Pictures/2013/" + str(count++) +".png");
  }
}

