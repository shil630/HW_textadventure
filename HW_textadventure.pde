String myText = "Type your name here";
int mouseC = 0;
int step = 0;
 
void setup() {
  size(500, 160);
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
  if(mouseC == 0){
      fill(0);
      text(myText, 0, 60, width, height);
      fill(255,0,0);
      text("START",250,120);
      fill(255,0,0);
      text("On the way to Bootcamp!",250,40);
  }
 
  if (mousePressedRect(rX, rY, rW, rH) && step == 0) {
      mouseC = 1;
      step = 1;
      println("~Welcome to the game! " + myText +"~");
      println(" ");
      println("Here comes a bus.");
      println("Do you get on?");
      println("Press 1 for Yes, 2 for No");
      background(0);
  }else if (key == '1' && step == 1){
     println(" ");
     println("You get on the bus, the driver suddently dies!");
     println(" ");
     println("The bus is out of control, do you steer the bus?");
     println("Press s to steer, n for No");
     step = 2;
  }else if ( key == '2' && step == 1){
      step = 2;
      println("You are hit by a car traveling in a high speed.");
      println("You die.");
  }else if (key == 's' && step == 2){
     println(" ");
     println("You are driving, before there is a crossroads.");
     println(" ");
     println("Turn left or right?");
     println("Press l for left, r for right");
     step = 3;
  }else if (key == 'n'&& step == 2){
     println(" ");
     println("WTF! A robber loots a burning house!");
     println(" ");
     println("Do you fight or keep quiet?");
     println("Press x to fight, k to keep quite");
     step = 3;
  }else if (key == 'l' && step == 3){
     println(" ");
     println("Annoying traffic jam.");
  }else if (key == 'r' && step == 3){
     println(" ");
     println("Cool!You arrive.");
     println("You win!But trust me,soon you will die.");
  }else if (key == 'k' && step == 3){
     println(" ");
     println("The robber just shoots you.");
     println("You die.");
  }else if (key == 'x' && step == 3){
     println(" ");
     println("How heroic you are!");
     println("You beat the robber, but the bus can not stop.");
     println(" ");
     println("Do you jump off?");
     println("Press j to jump, press w to wait");
     step =4;
  }else if (key == 'j' && step == 4){
     println(" ");
     println("You are off the bus.");
     println(" ");
     println("A policeman stands by your side."); 
     step = 5;
  }else if ( key == 'w' && step == 4){
    step = 5;
    println(" ");
    println("The bus rushes into a river.");
    println("You are drawned.");
  }
  

  
}
 
void keyPressed() {
  if (keyCode == BACKSPACE && step == 0) {
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