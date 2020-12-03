/* Assigment 9-4
Student ID: 00318934
Name: Patricia Antlitz
Professor Ethel Schuster
Introduction to Computer Science CIS-140
18 November 2020 

4- your_name: a poster with your name in various styles and colors

This program runs at clicking the start bottom. The loop has a delay of
1sec, the name displayed, the fonts, the colors and the positions will
change automatically after one sec.

I have used other sources, as detailed in my submitted source file.

// ChapterLettering/mynameRand.pde
https://processing.org/reference/random_.html
https://forum.processing.org/two/discussion/5343/how-can-i-set-the-font-to-random-by-using-the-pfont-mode
https://discourse.processing.org/t/how-to-make-appear-image-at-random-position/14372/3

*/

//variable String fonts is an array to be used in the future to hold all fonts
String[] fonts;

//Built-in function setup holds the settings of the program
void setup(){
  //give a screen size of 500px wide by 500px tall
  size(500, 500);
  //call variable fonts and assign the listo f fonts on PFont
  fonts = PFont.list();
  
}
//variable draw holds the commands that run this program
void draw(){
  //sets background color to white
  background(255);
  //calls function drawText to write the text on the page
  drawText();
  //adds a delay of 1sec to the loop
  delay(1000);
}
//Function drawText writes all the text on the page
void drawText(){
  //variable i sets the initial value of i in the loop
  int i = 0;
  //set variables x1 and y1 for the location
  float x1;
  float y1;
  //Variable s holds the string to be used on the text
  String s = "Patricia Antlitz";
  /*while loop, while i is less than 40 which is the amount of times the
  text will be printed on the screen*/
  while ( i < 40 ){
    //set the value of x1 and y1 to a random width and height
     x1 = random(width);
     y1 = random(height);
     /*initiate random fonts, variable randomF sets the fonts to random
     from 0 to the total length of all fonts*/
     int randomF = (int)random(0, fonts.length);
     //f creates the font assigning randomF and gives and initial size of 50
     PFont f = createFont(fonts[randomF], 50, true);
     /*selects f as a font which will load a random font and gives a random
     size from 10px to 50px */
     textFont(f, random(10, 50));
     //fills the font with a random color
     fill(random(255), random(255), random(255));
     //writes the text calling the string variable and the positions of x and y
      text(s, x1, y1);
      //adds 1 to i until loop is completed
      i = i+1;
  }
}

//end.
