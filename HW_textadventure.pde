String myText = "Type your name here";
 
void setup() {
  size(500, 200);
  textAlign(CENTER);
  textSize(20);
  //fill(0);
}
 
void draw() {
  background(255);
  int rX = 200;
  int rY = 100;
  int rW = 120;
  int rH = 60;
  //rect(rX, rY, rW, rH);
  fill(0);
  text(myText, 0, 60, width, height);
  fill(0);
  text("START",250,120);
 
  if (mousePressedRect(rX, rY, rW, rH)) { 
    println("welcome!" + myText);
    
  }
  
}
 
void keyPressed() {
  if (keyCode == BACKSPACE) {
    if (myText.length() > 0) {
      myText = myText.substring(0, myText.length()-1);
    }
  } else if (keyCode == DELETE) {
    myText = "";
  } else if (keyCode != SHIFT && keyCode != CONTROL && keyCode != ALT) {
    myText = myText + key;
  }
}

boolean mousePressedRect(int x, int y, int w, int h) {
  return (mouseX >= x && mouseX <= x+w && mouseY >= y && mouseY <= y+h && mousePressed);
}