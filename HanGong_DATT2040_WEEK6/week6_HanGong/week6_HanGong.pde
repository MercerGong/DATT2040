//what I m trying to achieve is a snowflake effect
//reference: https://codegolf.stackexchange.com/questions/42506/draw-a-snowflake


Particle current;
int size =6;
ArrayList<Particle> snowflake;
void setup(){
  size(600,600);
  current = new Particle(width/2,random(10));
  snowflake = new ArrayList<Particle>();
}
void draw(){
  translate(width/2,height/2);
  rotate(PI/6);
  background(0);
  
  while(!current.finished()&&!current.intersects(snowflake)){
    current.update();
  
  }
  

   current.show();
  if(current.finished()||current.intersects(snowflake)){
  snowflake.add(current);
  current = new Particle(width/2,0);
  }
    for(int i =0; i<6;i++){
    current.snowflakeRE( size);
    
    
  current.show();
  for(Particle p: snowflake){
  p.show();
  }
  
  pushMatrix();
  scale(1,-1);
   current.show();
  for(Particle p: snowflake){
  p.show();
  }
   popMatrix();
    }
}
