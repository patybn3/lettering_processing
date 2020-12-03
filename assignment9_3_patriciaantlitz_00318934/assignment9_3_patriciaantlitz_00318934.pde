/* Assigment 9-3
Student ID: 00318934
Name: Patricia Antlitz
Professor Ethel Schuster
Introduction to Computer Science CIS-140
18 November 2020 

3- alpha_letter: a poster for a child's room that displays the English 
Alphaber and for each letter draw an image of an object that starts with
that letter

This program runs at clicking the start bottom. A poster should be displayed
with the image of the English alphabet with drawings of objects for each
letter

I have used other sources, as detailed in my submitted source file.

https://processing.org/examples/letters.html

*/

// create PImage for each of the image to be used for each letter a-z
PImage a;
PImage b;
PImage c;
PImage d;
PImage e;
PImage f;
PImage g;
PImage h;
PImage i;
PImage j;
PImage k;
PImage l;
PImage m;
PImage n;
PImage o;
PImage p;
PImage q;
PImage r;
PImage s;
PImage t;
PImage u;
PImage v;
PImage w;
PImage x;
PImage y;
PImage z;
// create PFont for font to be used
PFont chalk;
//global variable for colors used
int white = color(255);
int black = color(0);

//Built-in function setup holds all the settings to run the program
void setup(){
  //gives a screen size of 1200px wide and 710px tall
  size(1200, 710);
  //loads function images which holds the calls for each image in PImage
  images();
  //loads selected font
  chalk = loadFont("Chalkboard-Bold-48.vlw");
  //selects the font and size to be used
  textFont(chalk, 40);
}
//Built-in function draw runs all function within the program
void draw(){
  // gived it a background of color white
  background(white);
  // call function columns to create "dividors" on the back of the screen
  columns();
  // function letters created the letters from a-z on the screen
  letters();
  //function placeImg creates all images on the screen
  placeImg();
}
//Functio images load the images to the used and call on setup
void images(){
  a = loadImage("apple.png");
  b = loadImage("ball.png");
  c = loadImage("carrot.png");
  d = loadImage("duck.png");
  e = loadImage("egg.png");
  f = loadImage("fish.png");
  g = loadImage("grape.png");
  h = loadImage("heart.png");
  i = loadImage("icecream.png");
  j = loadImage("jam.png");
  k = loadImage("key.png");
  l = loadImage("leaf.png");
  m = loadImage("moon.png");
  n = loadImage("nut.png");
  o = loadImage("orange.png");
  p = loadImage("pie.png");
  q = loadImage("queen.png");
  r = loadImage("ring.png");
  s = loadImage("star.png");
  t = loadImage("tree.png");
  u = loadImage("umbrella.png");
  v = loadImage("vase.png");
  w = loadImage("whale.png");
  x = loadImage("xerox.png");
  y = loadImage("yarn.png");
  z = loadImage("zebra.png");
}

//funtion letter for the creation of all letters
void letters(){
  //local variables x and y for the position of the letters in the x and y axis
  int y;
  int x;
  //variable alpha starts the alphabetic character on letter capital A
  char alpha = 'A';
  //ands the letter to char
  char alphabet = char(alpha);
  //for loop will create y columns of letters on the y and 4 colums on the x axis
 for( y = 0; y < 7  ; y++){
 for( x = 0; x < 4; x++){
   /*removes unwanted characters \ and {. checks for characters as the number
   6th and 5th character in the y colums and x colum*/
  if(!((y==6 && x==3) || (y==5 && x==3))){
    //fill the letters in color black
    fill(black);
    /*calls funtion text which passes the value of variable alphabet and
    places the value on one of each 7 columns of the y axis, multiply
    the x columns by the 7 colums present on the y axis to place letters
    one after the other in 4 columns. */
    text(char(alphabet + y + (x*7)) + ".", 40+290*x, 70+100*y); 
   }
  }
 }
}
/*Function drawImg calls function image from PImage to draw the images on
the page, has params PImage called img to pass the image, int size for
the size of the font, float x and y for the position of the image on
the screen, String name for the text to be written and int x1 and y1
for the location of the text on the screen*/
void drawImg(PImage img, int size, float x, float y, String name, int x1, int y1 ){
  //function image calls the image to be placed on the screen 
  image(img, x, y);
  //sellect the size of the text to be used
   textSize(size);
   //fills the first text in black to create a shadow for the text
   fill(0);
   //calls the string, and the position of the text +1 to make it visible
   text(name, x1+1, y1+1);
   //second text to go on top of the previous, fill in a random color
   fill(random(255), random(255), random(255));
   //call the string and the text to be displayed and where it should be placed
   text(name, x1, y1);
}

//placeImg will use the previous function, drawImg to draw the images.
void placeImg(){
  //images and names from a to g
  drawImg(a, 30, 90, 5, "Apple", 195, 70);
  drawImg(b, 30, 90, 105, "Ball", 195, 170);
  drawImg(c, 30, 90, 205, "Carrot", 195, 270);
  drawImg(d, 30, 90, 305, "Duck", 195, 370);
  drawImg(e, 30, 90, 405, "Egg", 195, 470);
  drawImg(f, 30, 90, 500, "Fish", 195, 570);
  drawImg(g, 30, 90, 595, "Grapes", 195, 670);
  //images and names from h to n
  drawImg(h, 30, 370, 10, "Heart", 480, 70);
  drawImg(i, 25, 370, 110, "Ice Cream", 460, 170);
  drawImg(j, 30, 370, 210, "Jam", 480, 270);
  drawImg(k, 30, 370, 310, "Key", 480, 370);
  drawImg(l, 30, 370, 410, "Leaf", 480, 470);
  drawImg(m, 30, 370, 510, "Moon", 480, 570);
  drawImg(n, 30, 370, 610, "Nut", 480, 670);
  //images and names from o to u
  drawImg(o, 30, 660, 10, "Orange", 755, 70);
  drawImg(p, 30, 660, 110, "Pie", 780, 170);
  drawImg(q, 30, 660, 210, "Queen", 770, 270);
  drawImg(r, 30, 660, 310, "Ring", 770, 370);
  drawImg(s, 30, 660, 410, "Star", 770, 470);
  drawImg(t, 30, 660, 510, "Tree", 770, 570);
  drawImg(u, 25, 660, 610, "Umbrella", 765, 670);
  //images and names from v to z
  drawImg(v, 30, 950, 10, "Vase", 1045, 70);
  drawImg(w, 30, 950, 110, "Whale", 1060, 170);
  drawImg(x, 30, 950, 210, "Xerox", 1060, 270);
  drawImg(y, 30, 950, 310, "Yarn", 1060, 370);
  drawImg(z, 30, 950, 410, "Zebra", 1060, 470);
  // removes the loop in the "names" colors
  noLoop();
 }
//Function columns draws the dividers on the screen 
 void columns(){
   // starts variable x at 0px.
   int x = 0;
   //do this
 do {
   //fill the rect with a random color
   fill(random(255), random(255), random(255));
   /*place the rect at the value of x, at 0 y, make it 15px thick 
   and give the height of the page*/
   rect(x, 0, 15, height);
   //add 296 to the value of x to separate the columns
   x = x+296;
 } while (x < width); //while x is less than the width of the page.
 }
 
 // end.
