size(400,400);
background(51);

for(int i = 5; i < 400;i += 10)
{
  for(int j = 25; j < 350; j+= 10)
  {
    fill(#F0FFF0);
    ellipse(i, j, 4, 3);
    noFill();
    stroke(#F0FFF0);
    curve(i, j, i, j, 200, 200, 200,200);
  }
}
