PFont myfont;
boolean Record;
boolean check;
float g;
int inc;
void setup() {
  size (500, 500);
  myfont = createFont("Helvetica", 25);
  //frameRate(2);
}
void draw() {
  if (Record) {
    beginRecord(PDF, "soyunag-####.pdf");
  }
  background(0);
  textFont(myfont);

  for (float posx=20; posx<width-20; posx=posx+30) {
    for (float posy=20; posy<height-30; posy=posy+30) {
      pushMatrix();
      translate(posx, posy);
      
      
      if(g>=360){
        check=false;
      }
      if(g<=0){
        check=true;
      }
      if(check==false){
        inc=-1;
      }
      if(check==true){
        inc=1;
      }
      float m=map(mouseX, .1, 30, 0, width);
      g=g+1.3*inc;
      rotate(radians(g));
      text("S", -10, 10);
      popMatrix();
    }
  }

  if (Record) {
    endRecord();
    Record=false;
  }
  println(Record);
}
void mousePressed() {
  Record=true;
}
