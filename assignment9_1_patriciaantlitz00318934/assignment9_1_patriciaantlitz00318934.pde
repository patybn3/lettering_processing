/* Assigment 9-1
Student ID: 00318934
Name: Patricia Antlitz
Professor Ethel Schuster
Introduction to Computer Science CIS-140
17 November 2020 

1- motto: a poster with your favorite motto.

This program generates a picture on the screen with a quote. To run it, simply
click on "start".

The work I am submitting is my own in its entirety

*/

// Code starts here

// start PImage to add an image to the screen, call it back
PImage back;
// start PFont to select a font to be used
PFont skia;
//global variable for color white and black
int white = color(255);
int black = color(0);

//built-in function setup holds the settings of the program
void setup(){
  //give a screen size of 800px wide and 500px tall
  size(800, 500);
  // call PImage named back and load the image on file
  back = loadImage("protest.jpeg");
  // cal PFont named skia and load the selected font
  skia = loadFont("Skia-Regular_Bold-48.vlw");
}
//Built-in function draw runs all the commands in the program
void draw(){
  //select the image named back as the backgound of the page
  background(back);
  
  //Function loopbars create "jail-like" bars in the screen
   loopBars();
  
  //call function drawRect to draw a rectangle on the screen
  /*Calls for the color of the rectangle, the opacity of the color, 
  the location of the x and y axis and the size of the rectangle */
  drawRect(white, 130, width/12.5, height/10, 13.5*width/16, 13*height/16);
  drawRect(white, 210, width/8, height/6, 12*width/16, 11*height/16);
  //call function quote to write the text inside of the rectangle
  /*Calls for the size of the font, the phrase to be written, and the
  location of the text on the x and y axis*/
  quote(40, "'' Things are a certain way", 400, 200);
  quote(40, "because WE", 400, 260);
  quote(40, "allow them to be. ''", 415, 320);
  quote(30, "- Me", 600, 380);

}
/*Function drawRect draws a rectangle on the scree, it calls for param c
for the color of the rectangle, param opa for the opacity of the color,
floats x, y, w, and t for the location and size*/
void drawRect(int c, int opa, float x, float y, float w, float t){
  //removes stroke
  noStroke();
  //selects color and opacity
  fill(c, opa);
  //draws rectangle
  rect(x, y, w, t);
}
/*Function quote writes text on the screen. It calls for param size for the
size of the text, String quote for the phrase and params x and y for the
location of the text on the screen*/
void quote(int size, String quote, int x, int y){

  // makes the text black in color
  fill(black);
  // selects loaded font and gives it a size
  textFont(skia, size);
  // align the text to the center of the screen
  textAlign(CENTER);
  // writes text passing remaining params
  text(quote, x, y); 

}

//Funtion loopBars create the "jail" bars in the background
void loopBars(){
  //initiates x position value to 0
  int x = 0;
  //while the x value is less than the total width of the page
  while(x < width){
    /*call drawRect function and draw rectangles, setting the color to black
    and no opacity */
  drawRect(black, 255, x, 0, 20, height);
  // add 98 to x to space the bars out
  x=x+98;
  }
}

// end.
