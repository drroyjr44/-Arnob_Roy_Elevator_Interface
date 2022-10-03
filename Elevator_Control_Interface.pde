PImage img;
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;

Button [] buttons = new Button [10];

void setup() {

  size(600, 1350);

  img = loadImage("bg.png");
  img.resize(600, 1200);
  
  img1 = loadImage("open.png");
  img1.resize(80, 30);
  
  img2 = loadImage("close.png");
  img2.resize(80, 30);
  
  img3 = loadImage("bell.png");
  img3.resize(80, 30);
  
  img4 = loadImage("call.png");
  img4.resize(80, 30);
  
  img5 = loadImage("lock.png");
  img5.resize(30, 30);
  
  img6 = loadImage("LED.png");
  img6.resize(100, 60);

  buttons[0] = new Button(270, 200, 100, #E59833);
  buttons[1] = new Button(270, 310, 100, #E59833);
  buttons[2] = new Button(270, 420, 100, #E59833);
  buttons[3] = new Button(270, 530, 100, #E59833);
  buttons[4] = new Button(140, 660, 80, #679BD8);
  buttons[5] = new Button(230, 660, 80, #679BD8);
  buttons[6] = new Button(330, 660, 80, #FC594A);
  buttons[7] = new Button(420, 660, 80, #FACE2D);
  buttons[8] = new Button(450, 200, 30, #5F503A);
  buttons[9] = new Button(490, 200, 30, #FACE2D);

  
  
}

void draw()
{
  image(img, 0, 0);
  image(img1, 140, 750);
  image(img2, 230, 750);
  image(img3, 330, 750);
  image(img4, 420, 750);
  image(img5, 450, 200);
  image(img6, 270, 130);
  
  String s1 = "1";
  String s2 = "2";
  String s3 = "3";
  String s4 = "4";
  
  fill(0);
  textSize(100);
  
  text(s4, 200, 285);
  text(s3, 200, 395);
  text(s2, 200, 505);
  text(s1, 200, 615);

  for (Button currentButton :  buttons)
  {
    currentButton.display();
  }

}

void mousePressed() {
    println("pressed!");

    for(Button currentButton : buttons) {
      if(currentButton.isMouseOver() == true) {
        currentButton.isLightOn = true;
        
      }
    }

}

void mouseReleased() {
    println("released!");

    for(Button currentButton : buttons) {
        delay(100);
        currentButton.isLightOn = false;
        
    }
}
