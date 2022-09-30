
float cx;
float cy;
float angle = 0;
int rad = 100;
float change = 0.01;

void setup() {
  size(600, 600);
  cx = width/2;
  cy = height/2;
  strokeWeight(2);
}

void draw() {
stroke(255);
  for (int angle = 0; angle < 360; angle++) {
    float x = cx + (rad * cos(angle)*change*angle/3);
     float y = cy + (rad * sin(angle)*change*angle/3);
   rect(x, y, 10, 10);
  }
 change = map(tan(frameCount*0.01),0.3,-0.5,0,0.01);
  fill(0,30);
  rect(0,0,width+100,height+100);
}
