/* Assigment 9-2
Student ID: 00318934
Name: Patricia Antlitz
Professor Ethel Schuster
Introduction to Computer Science CIS-140
17 November 2020 

2- children_alpha: a poster for a child's room that displays the English
Alphabet in lower case

This program runs at clicking the start bottom. A poster should be displayed
with the image of the English alphabet in lower case.

I have used other sources, as detailed in my submitted source file.

https://processing.org/examples/letters.html

*/

// create font using PFont
PFont chalk;
// create images on file and call it butterfly and butterfly2
PImage butterfly;
PImage butterfly2;

// global variable for colors used
int yellow = color(255, 239, 176);
int white = color(255);
int pink = color(255, 214, 244);
int black = color(0);
int blue = color(193, 242, 255);

//Built-in function setup holds the program's settings
void setup() {
  // give it a screen size 500px wide by 500px tall
  size(500, 500);
  // call PFont named chalk and load the selected font
  chalk = loadFont("ChalkboardSE-Bold-48.vlw");
  // call PImage named butterfky and butterfly2 to load the images on file
  butterfly = loadImage("butterfly.png");
  butterfly2 = loadImage("butterfly2.png");
  //selects the loaded font and gives it a size
  textFont(chalk, 50);
} 
//Built-in function draw will hold all the commands to run the code 
void draw() {
  //give the screen a background color of yellow using the global variable
  background(yellow);
  //calls function drawCircles to draw all circles, top and bottom of the screen
  drawCircles();
  /* call function squares to draw squares on the backgound of the letters 
  "postcards" */
  squares();
  //call function letterLoop to draw letters on the screen
  lettersLoop();
  //shows images of the two butterflies
  image(butterfly, 13.7*width/16, 11.3*height/16);
  image(butterfly2, 8, 11.3*height/16);
  
 // stops the loop to avoid change on the colors of the letters and squares
  noLoop();
}

/*function letters will create letters from a-z following the set up for 
function lettersLooop. Asks for params c for the color of the letters, param s
for the size of the font, param i and j for the i and j location in the 
future loop and params x and y for the location of the text on the screen*/
void letters(int c, int i ,int j, int x, int y){

   //aligns the text towards the center for the screen on both x and y axis
   textAlign(CENTER, CENTER);
   //fill the text with the selected color
   fill(c);
   /* function text calls character "a" on the keyboard and adds to the
   value of i plus the value of j times 7 which is inside on the lettersLoop 
   function. and gives it the location of the letters*/
   text(char('a' + i + (j*7) + (j==3?-1:0)), x+70*i, y+90*j);
}

//function lettersLoops holds the loop setup to create the alphabet
void lettersLoop(){
  //loops starts with j at 0 representing the colums on the y axis
    for(int j=0;j<4;j++){
      //i represents the columns on the x axis
    for(int i=0; i<7; i++){
      //if statement will allow the program to skip characters that are not a-z
      if(!(j==3 && (i==0 || i==6))){
        /*calls letters function to create a shadow for the letters, passes
        param black for the color black, 50 for the size of the font, 
        i and j which are the same i and j on the loops and the location*/
        letters(0, i, j, 36, 101);
        /*fills the letters of the alphabet in random colors, these will be 
        displayed on top of the black letters*/
        fill(random(255), random(255), random(255));
        /*text will print all characters on the keyboard starting with
        lowercase a, will add to i and j which prints the letter in rows
        and columns and skips the unwanted characters*/
        text(char('a' + i + (j*7) + (j==3?-1:0)), 40+70*i, 100+90*j);
      }
    }
  }
}
//function squares creates colored squares that are displayed behind the letters
void squares(){
  for(int j=0;j<4;j++){
    for(int i=0; i<7; i++){
      /*the following 3 functions will create a shadow for the "postcards"
      for the letters, it removes the stroke, fills the rect with the color
      black, and calls function rect placing it using the loop i and j towards
      the side to create the effect*/
      noStroke();
      fill(black);
      rect(15+70*i, 70+94*j, 55, 70);
      
      //Postcards. give a border colored white
        stroke(255);
        //with thickeness of 5px
        strokeWeight(5);
        /*fill the first set of rectangles in white. This will create a
        background for the cards and allow the colors to look pastel due to
        its transparency */
        fill(255);
        rect(5+70*i, 70+92*j, 60, 70);
        //next set will be on top of the previous
        //fill it with random color and opacity of 130
        fill(random(255), random(255), random(255), 130);
        //draws rectangles "postcards" placing it write behing the letters
        rect(5+70*i, 70+92*j, 60, 70);
    }
  }
}

/*function circles create a loop that draws circles on the screen. It calls
for param c for the color of the circles, x2 for the location of the circles
on the x axis, to be added to the location of x on the loop, y for the location
on the y axis, w and t for the sizes of the circles and space which 
allows to chose what the separation will be between circles*/
void circles(int c, int x2, int y, int w, int t, int space){
  //given a variable x
  int x;
  /*sets x value to 0, as long as x is less or equal than the width of the 
  page, add the value of param space to x*/
  for(x=0; x <= width; x+=space){
    //and fill the circle with the color selected
    fill(c);
    /*drawing the circle at the position of x plus x2, the position of y 
    and the selected size*/
    ellipse(x+x2, y, w, t);
  }
}

//Function drawCircles call the previous function, circles to draw all circles on the screen
void drawCircles(){
  /*circles function, these are the circles on the top of the screen
  calls for color pink and places at x 20, y 30 and make it 30 wide
  and 30 tall and give it a space of 75px between the circles*/
  circles(pink, 20, 30, 30, 30, 75);
  //circles of color blue starting at x 60
  circles(blue, 60, 30, 20, 20, 75);
  //these are the circles on the bottom of the screen
  circles(pink, 20, 460, 30, 30, 75);
  circles(blue, 60, 460, 20, 20, 75);
  
}

//end.
