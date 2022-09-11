//Han Gong(Mercer)
//216336653


float hLeft;//the left upper corner white box's height
float Lh;//the height of the grids inside of the the left upper corner white box
float hRight;//the right bottom corner white box's height
float Sh;//the height of the grids inside of the the right bottom corner white box
float mousedragV=0;// the height of the upper left white box
int NumOfBox = 6;//number of grids in each large white box

void setup() {
  size(800, 800);
  frameRate(2);
}
void draw() {

   background(0,0,0);// reflesh the screen
    rectMode(CORNERS); //CHANGE THE WAY OF DRAWING RECT
   
   
    //the bottom code create a upper left corner white grids 
   hLeft = mousedragV;
   Lh=mousedragV/NumOfBox;

 

     for(int i =0;i<6;i++){
     for(int k =0;k<6;k++){
       rect(i*Lh,k*Lh,(i+1)*Lh,(k+1)*Lh); // i and k need to plus one to indicate the bottom corner of the grids 
     }
   }

   
    //the bottom code create a bottom right corner white grids 
   hRight = height - mousedragV;

   Sh = hRight/NumOfBox;
   
   for(int i =0;i<6;i++){
     for(int k =0;k<6;k++){
       rect(i*Sh+mousedragV,k*Sh+mousedragV,(i+1)*Sh+mousedragV,(k+1)*Sh+mousedragV);
     }
   }
}




void mouseDragged() 
{
  mousedragV = mousedragV + 5;
  if (mousedragV >= 800) {
    mousedragV = 0;
  }
  print(mousedragV);
}
