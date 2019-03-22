float robotX;
float robotY;
float robotSpeedX;
float soldierX=0;
float soldierY;
float soldierSpeedX=2;
PImage soil,bg,groundhog,life,robot;
int floorNumber=floor(random(3))+1;
float laserX;
float laserSpeedX=2;
float laserLength=0;





void setup() {
	size(640, 480, P2D);//set canvans
  //background image setup
 
  bg=loadImage("img/bg.jpg");
  image (bg ,0,0,640,480);
  
  //robot position setup
  robotX=random(160,560);
   robotY=160+80*floor(random(4));
  
  //soldier position setup
  soldierY=160+80*floor(random(4));
  
   
  
 
  
	// Enter Your Setup Code Here
}
  
void draw() {
   
//soil setup
  background(bg);
  soil= loadImage("img/soil.png");
  image (soil ,0,160,640,320);
  
  
     
  
  //grass
  fill(124, 204, 25);
  noStroke();
  rect(0,145,640,15);
  
  //groundhog image setup
  
  groundhog= loadImage("img/groundhog.png");
  image (groundhog,280,80,80,80);
  
  //life image setup

  life= loadImage("img/life.png");
  image (life,10,10,50,50);
  image (life,80,10,50,50);
  image (life,150,10,50,50);
  
  //sun set up
  stroke(255, 255, 0);
  strokeWeight(5);
  fill(253, 184, 19);
  ellipse(590,50,120,120);
  
  //soldier animation
  PImage soldier;
  soldier= loadImage("img/soldier.png");
  image (soldier ,soldierX,soldierY,80,80);
  soldierX+= soldierSpeedX;
  soldierX%=720;

  
  
   

  //laser 
  noStroke();
  fill(255, 0 ,0);
  ellipse(robotX+25-laserX, robotY+37, 10, 10);
  rect(robotX+25-laserX, robotY+32, laserLength, 10);
  ellipse(robotX+25-max(laserX-40, 0), robotY+37, 10, 10);
  
  soldierX += 2;
  soldierX %=720;
  laserX += 2;
  laserX %=180;
  laserLength = laserX-max(laserX-40,0);
//robot img

 robot= loadImage("img/robot.png");
  image (robot,robotX,robotY,80,80);
 
}
