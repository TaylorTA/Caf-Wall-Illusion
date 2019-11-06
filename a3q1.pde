final float NUM_ROWS = 9;
float x,y,cLength;
boolean black = false;
float prevX;

void setup(){
  size(500,500);
  cLength = height/NUM_ROWS;
  y = 0;
  stroke(192);
  strokeWeight(4);
  drawPicture();
}

void drawPicture(){
  for(int row = 0; row < NUM_ROWS; row++){
    do{
      x = random(-cLength,0);
    }while(abs(prevX - x)<cLength/2);
    prevX = x;
    while(x<width){
      if(black)
        fill(0);
      else
        fill(255);
      rect(x,y,cLength,cLength);
      x += cLength;
      black = !black;
    }
    y += cLength;
  }
}

void draw(){
}

void mouseClicked(){
  background(255);
  y = 0;
  drawPicture();
}
