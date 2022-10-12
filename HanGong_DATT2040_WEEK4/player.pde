class player{
int size;
int heig;
PVector location;
PVector corner;
PVector[] playlist;
player(PVector location){
this.location= location;
this.size = 400;
this.heig = 10;
this.corner = new PVector(location.x+this.size,location.x-this.heig);
playlist = new PVector[size+1];
  for (int i = 0; i<this.size; i++) {
 playlist[i] = new PVector(this.location.x+i,this.location.y);

  }
}

void drawplayer(){

  rect(this.location.x,this.location.y,this.corner.x,this.corner.y);

}
void change(PVector location){
this.location= location;
  for (int i = 0; i<this.size; i++) {
 playlist[i].x = this.location.x+i;
  }

}

int Collider(PVector object) {

  for (int i = 0; i<this.size; i++) {
    if (dist(object.x,object.y,playlist[i].x,playlist[i].y)<=5) {
 
          return 1 ;
    }

}
return 0;
}
}
