/* Assigment 9-10
Student ID: 00318934
Name: Patricia Antlitz
Professor Ethel Schuster
Introduction to Computer Science CIS-140
18 November 2020 

10 - word_draw: draw using only letters. You may use some specific words. 
Find a motto about art. The idea here is to have your program write 
something (no dirty words) on the canvas

This program runs at clicking the start bottom. 
It will print random letters of random shades of red on the background of the
page to fill the canvas, then it will print the words We, Are and God shaped
from letters and the words Artist, because and author's name using different
fonts.

I have used other sources, as detailed in my submitted source file.

https://processing.org/reference/arc_.html

*/
//global variables for colors to be used
int white = color(255);
int black = color(0);
//creating both fonts that will be used 
PFont f;
PFont phos;
//setup hold the setting to run this program
void setup(){
  //gives a screen size of 600px wide and 700px tall
  size(600, 700);
  ////loads selected fonts
  f = loadFont("Zapfino-150.vlw");
  phos = loadFont("Phosphate-Inline-150.vlw");
}
//Built-in function draw runs all function within the program
void draw(){
  // gived it a background of color black
  background(0);
  // call function lettersBack to create screen's background  
  lettersBack();
  //call frunction motto to create words that are shaped from letters
  motto();
  //calls function fontWords to write the words written with the selected fonts
  fontWords();
  //removed the color loop
  noLoop();

}

//funtion lettersBack for the creation of the background
void lettersBack(){
  //local variables x and y for the position of the letters in the x and y axis
  int y;
  int x;
  //for loop will create columns of letters on the x and y axis
 for( y = 0; y < height; y++){
 for( x = 0; x < width; x++){
  //gives this letters a font size of 60px
  textSize(60);
    //fill the letters in a random shade of red
    fill(random(250), random(0), random(0));
    /*calls funtion text which passes the characters starting with the letter
    A and places the letters in the total width and height of the screen */
    text(char('A' + x + y) , -20+15*x, 15*y); 
    text(char('A' + x + y) , -20+25*x, 25*y);
  }
 }
}

//Function motto writes the words created from letters
void motto(){
  //local variables x and y for the position of the letters in the x and y axis
  int y;
  int x;
 //for loop will create columns of letters on the x and y axis
 for( y = 0; y < 20; y++){
 for( x = 0; x < 4; x++){
   //gives the stroke the color white
   stroke(white);
   //makes it 20px thick
   strokeWeight(20);
   //sets the text size to 30px
    textSize(30);
    //fill the letters in color white
    fill(white);
    /*calls funtion text which passes a character from A to Z and places it
    on the screen to create columns of letters*/
    
    //word We
    //W
    text(char('A' + x + y) , 40+5*x, 90+5*y); 
    text(char('A' + x + y) , 120+5*x, 90+5*y);
    line(100, 150, 140, 175);
    line(100, 150, 60, 175);
    //E
    text(char('A' + x + y) , 170+5*x, 90+5*y);
    text(char('A' + x + y) , 170+15*x, 90+y);
    text(char('A' + x + y) , 170+15*x, 167+y);
    line(190, 130, 220, 130);
    // Word are
    //A
    text(char('A' + x + y) , 270+5*x, 90+5*y);
    text(char('A' + x + y) , 290+15*x, 90+y);
    text(char('A' + x + y) , 330+5*x, 90+5*y);
    line(300, 130, 340, 130);
    //R
    text(char('A' + x + y) , 380+5*x, 90+5*y);
    text(char('A' + x + y) , 390+15*x, 90+y);
    //E
    text(char('A' + x + y) , 470+5*x, 90+5*y);
    text(char('A' + x + y) , 480+15*x, 90+y);
    text(char('A' + x + y) , 480+15*x, 167+y);
    line(490, 130, 520, 130);
    
    //word GOD
    //G
    text(char('A' + x + y) , 40+5*x, 490+7*y); 
    text(char('A' + x + y) , 60+19*x, 490+y);
    text(char('A' + x + y) , 40+19*x, 595+7+y);
    text(char('A' + x + y) , 105+5*x, 565+3*y); 
     //O
     text(char('A' + x + y) , 170+5*x, 490+7*y);
     text(char('A' + x + y) , 180+19*x, 490+y);
     text(char('A' + x + y) , 240+5*x, 490+7*y);
     text(char('A' + x + y) , 180+19*x, 600+y);
    //D
    text(char('A' + x + y) , 300+5*x, 490+7*y);
   arc(340, 545, 130, 130, -HALF_PI, HALF_PI);
    

  }
 }
}

//function fontWords creates all the words that are written using a font
void fontWords(){
  //selects the font to be used and gives a size
    textFont(f, 90);
    //writes the text "Artists"
    text("Artists", 85, 300);
    //change the size of the same font 
    textSize(150);
    //writes the text "is"
    text("is", 420, 600);
    //changes the font and selects the size
    textFont(phos, 130);
    //write the word "Because"
    text("Because", 60, 430);
    //changes the size of the same font
    textSize(30);
    //Write the name of the author of the quote
    text("- Peter Kreeft", 350, 680);
}

//end.
