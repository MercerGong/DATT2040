

ArrayList<int[]> group = new ArrayList<int[]>();


void setup(){
  size(800,800);

for (int i = 0; i < width; i++) {
  for (int j = 0; j < height; j++) {
    color c = color(j, i, 0);    
    set(i, j, c);
    int[] numbers = {j,i,c};
    group.add(numbers);    


  }

}

}
void draw(){
background(100);
int num = (int)random(0,2);
switch(num) {
  case 1: 
for(int i = 0; i < group.size();i++){
  if(  group.get(i)[0]<width/2){
    group.get(i)[0]-= random(-5,0);
  }
  else{
     group.get(i)[0]-= random(0,5);
  }
    if(  group.get(i)[1]<height/2){
     group.get(i)[1]-= random(-5,0);
  }
  else{
     group.get(i)[1]-= random(0,5);
  }

    group.get(i)[2]+= random(-100,100);
   set(group.get(i)[0],  group.get(i)[1],  group.get(i)[2]);

}
  case 0: 
for(int i = 0; i < group.size();i++){
  if(  group.get(i)[0]<width/2){
    group.get(i)[0]-= random(5,0);
  }
  else{
     group.get(i)[0]-= random(0,-5);
  }
    if(  group.get(i)[1]<height/2){
     group.get(i)[1]-= random(5,0);
  }
  else{
     group.get(i)[1]-= random(0,-5);
  }

    group.get(i)[2]+= random(-100,100);
   set(group.get(i)[0],  group.get(i)[1],  group.get(i)[2]);

}
}





}
