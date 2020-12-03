/* Assigment 9-8
Student ID: 00318934
Name: Patricia Antlitz
Professor Ethel Schuster
Introduction to Computer Science CIS-140
18 November 2020

8 - greek: Draw the first five letters of the Greek alphabet

This program runs at clicking the start bottom.
It will print the greek letters alpha, beta, gamma, delta and epsilon both
in lower and upper case on the screen.

I have used other sources, as detailed in my submitted source file.
https://stackoverflow.com/questions/21889148/how-to-display-or-write-to-file-greek-characters
https://unicode-table.com/en/sets/greek-symbols/
https://forum.processing.org/two/discussion/13658/how-many-ways-to-create-a-z-alphabet-table-on-the-sketch
*/


//setup holds the settings of the screen
void setup() {
  size(500,500);
}
//Function draw holds the commands to run the program
void draw() {
  //gives the page a background color of white
  background(255);
  //calls function writeLetters to display letters on the screen
  writeLetter();
}

//Function writeLetters
void writeLetter(){
  //starts the characater at lower case alpha, first letter of greek alphabet
  char counterLower = '\u03B1';
  //starts the characater at upper case alpha, first letter of greek alphabet
  char counterUpper = '\u0391';
   /*for loop will loop in 5 columns at the x axis where the letters will
   be displayed*/
   for(int x = 0; x < 5; x++){
   //uses the initial unicode of the letters and add to the char counter
   char letterLower = char(counterLower);
   char letterUpper = char(counterUpper);
   //gives the text a size of 50px
    textSize(50);
    //selects the color black for the text
    fill(0);
     //writes the characters
    text(letterLower, 30+100*x, 150);
    text(letterUpper, 30+100*x, 350);
    //adds to the counter
    counterLower++;
    counterUpper++;

    /*if the value of letterLower and letterUpper is the fith letter
    of the greek alphabet, "Epsilon", stop the loop*/
    if (letterLower == '\u03B5' || letterUpper == '\u0395') {
    noLoop();
  }
 }
}

//end.
