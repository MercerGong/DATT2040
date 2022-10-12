class enemy {
  int sizeh;
  int sizew;
  float distance=30;
  PVector[] enemylist;
  
  
  // added an offset to make grid fit in frame better.
  int offset = int(distance/2);

  enemy() {
    
    //consider setting up the grid so it's dynamic like in our earlier grid examples.
    this.sizeh=6;
    this.sizew = width/30;
    enemylist = new PVector[this.sizeh*this.sizew];
  }

  void drawenemy() {//initial the enemylist[] 
    fill(100);
    ellipseMode(CENTER);
    stroke(204, 102, 0);
    for (int i = 0; i<this.sizeh; i++) {
      for (int j = 0; j<this.sizew; j++) {

        //I have switched *10 to * sizew - this applies to all array indexes in the below code
        
        enemylist[j+i*sizew] = new PVector((j*30)+offset, (i*30)+offset);
        ellipse(enemylist[j+i*sizew].x, enemylist[j+i*sizew].y, this.distance, this.distance);
      }
    }
  }



  PVector Collider(PVector object) {//check the collider, return a PVector contain if collide and the collide node within the Enemylist[]

    ellipseMode(CENTER);

    for (int i = 0; i<this.sizeh; i++) {
      for (int j = 0; j<this.sizew; j++) {
        if (dist(enemylist[j+i*sizew].x, enemylist[j+i*sizew].y, object.x, object.y)<=30) {
          return new PVector(1, j+i*sizew);//this is useful for detecting the colliding node
        }
      }
    }
    return new PVector(3, 3);//return a meaningless variable
  }




  void update(PVector object) {//keep updateing if one enemy disappear
    fill(100);
    ellipseMode(CENTER);
    stroke(204, 102, 0);
    for (int k = 0; k<this.sizeh; k++) {
      for (int e = 0; e<this.sizew; e++) {

        ellipse(enemylist[e+k*sizew].x, enemylist[e+k*sizew].y, this.distance, this.distance);//redraw the map
        if (object.y ==e+k*sizew) {//make the node disappear
          enemylist[e+k*sizew].x=0;
          enemylist[e+k*sizew].y=0;
        }
      }
    }
  }
}
