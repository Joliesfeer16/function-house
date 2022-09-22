color green  = #99d98c;
color blue   = #90e0ef;
color red    = #c1121f;
color yellow = #fee440;

void setup() {
  size(800, 600);
}
void draw() {
  //sky
  background(#90e0ef);
  //ground
  fill(#99d98c);
  stroke(#99d98c);
  rect(0, 300, width, 300);
  //sun
  fill(#fee440);
  stroke(#fee440);
  circle(400, 100, 150);
  //houses
  house(50,200);
  house(450,200);

 
}

void house(int houseX, int houseY){
  
  pushMatrix();
  translate(houseX, houseY);
  
  fill(#c1121f);
  stroke(#c1121f);
  
  //walls
  rect(0, 0, 300, 300); //if rect(250, 200, 300, 300) and house (300,200), then rect x is 550, y is 400
  
  //roof
  triangle(0,0, 300, 0, 150, -100);// ref point is rect at 0,0
  stroke(225);
  line(0,0, 300, 0);
  
  //window
  window(50, 50);//window function, so that you can double it
  window(180, 50);
  
  //door
  door(120, 200);
  door(200, 200);
  door(40, 200);
  
 
  
  popMatrix();
  
}

void window(int windowX, int windowY){
  pushMatrix();
  translate(windowX, windowY);
  
  fill(#90e0ef);
  stroke(255);
  strokeWeight(4);
  
  square(0,0,80);
  line(0, 40, 80, 40);
  line(40,0, 40,80);
  
  
  popMatrix();
  
  
}

void door(int doorX, int doorY){
  pushMatrix();
  translate(doorX, doorY);
  
  fill(225);
  stroke(255);
  strokeWeight(4);
  
  rect(0,0,50,100); //could also write ( rect(doorX, doorY, 50, 100); if we dont put translate (x,y)
  fill(0);
  circle(40, 50, 5); //if no translate, could put (circle(doorX+40, doorY+50, 5);
  
  
  popMatrix();
  
  
}
