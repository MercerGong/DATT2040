//Han Gong
//216336653


//Press the mouse to get more effect





boolean speedup =false;
PVector[] pos_1;
PVector[] pos_2;
PVector[] pos_3;
PVector[] pos_4;
 float gap;
int num=20;
int num2=40;
void setup(){
  size(500,500);
pos_1 = new PVector[num];
pos_2 = new PVector[num];
pos_3 = new PVector[num2];
pos_4 = new PVector[num2];
  
  for(int i = 0;i<num;i++){
pos_1[i] =new PVector(random(width),random(height));
pos_2[i] =new PVector(random(width),random(height));


}
  for(int i = 0;i<num2;i++){
pos_3[i] =new PVector(random(width),random(height));
pos_4[i] =new PVector(random(width),random(height));


}
background(0);
}
void draw(){
  


if(speedup == false){
   for(int i = 0;i < num2;i++){

   //generate the shorten effect for lines
  if(int(PVector.dist(pos_3[i],pos_4[i]))>100){
  
   gap = pos_3[i].x - pos_4[i].x;
  if(pos_3[i].x<width&&pos_3[i].x>0&&pos_4[i].x<width&&pos_4[i].x>0){

          pos_3[i].x= pos_3[i].x-gap/50;
      pos_4[i].x= pos_4[i].x+gap/50;
  }

   
  gap = pos_4[i].y - pos_3[i].y;
  if(pos_3[i].y<height&&pos_3[i].y>0&&pos_4[i].y<height&&pos_4[i].y>0){
       pos_3[i].y= pos_3[i].y+gap/10;
      pos_4[i].y= pos_4[i].y-gap/10;
  }
  }
  //generate two new vector if the pervious vector are too close to each other
  if(int(PVector.dist(pos_3[i],pos_4[i]))<=100){

    pos_3[i] = new PVector(random(width),random(height));
    pos_4[i] = new PVector(random(width),random(height));
  }
   


//draw the line
  stroke(255);
  line(pos_3[i].x,pos_3[i].y,pos_4[i].x,pos_4[i].y);

//make fade out effect by apply a rectangle on top
   fill(0,40);
  rect(0,0,width+100,height+100);
  
  



 }
   //make fade out effect by apply a rectangle on top

}

  //boundary check
else{
  
  
 for(int i = 0;i < num;i++){
   
   //generate the shorten effect for lines
  if(int(PVector.dist(pos_1[i],pos_2[i]))>100){
   gap = pos_2[i].x - pos_1[i].x;
  if(pos_1[i].x<width&&pos_1[i].x>0&&pos_2[i].x<width&&pos_2[i].x>0){
          pos_1[i].x= pos_1[i].x+gap/50;
      pos_2[i].x= pos_2[i].x-gap/50;
  }

   
  gap = pos_2[i].y - pos_1[i].y;
  if(pos_1[i].y<height&&pos_1[i].y>0&&pos_2[i].y<height&&pos_2[i].y>0){
       pos_1[i].y= pos_1[i].y+gap/10;
      pos_2[i].y= pos_2[i].y-gap/10;
  }
  }
  //generate two new vector if the pervious vector are too close to each other
  if(int(PVector.dist(pos_1[i],pos_2[i]))<=100){

    pos_1[i] = new PVector(random(width),random(height));
    pos_2[i] = new PVector(random(width),random(height));
  }
   


//draw the line
  stroke(255);
  line(pos_1[i].x,pos_1[i].y,pos_2[i].x,pos_2[i].y);

  
  



 }
 
   fill(0,40);
  rect(0,0,width+100,height+100);

}


  
}

void mousePressed(){
speedup=true;

}
void mouseReleased(){
  speedup =false;
}
