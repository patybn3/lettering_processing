/* Assigment 9-9
Student ID: 00318934
Name: Patricia Antlitz
Professor Ethel Schuster
Introduction to Computer Science CIS-140
18 November 2020 

9 - my_a: Display letter A all over the canvas. That is, fill the canvas 
with A's.

This program runs at clicking the start bottom. 
It will print the letter A, in capital, in different colors and sizes, at
different locations on the screen.

The work I am submitting is my own in its entirety
*/

//global variable for background color
int back = color(255, 244, 214);

//setup holds the settings of the screen
void setup() {
  size(500,500);
}
//Function draw holds the commands to run the program
void draw() {
  background(back);
  //calls function writeLetters to display letters on the screen
  writeLetter();
  // removes the loop
  noLoop();

} 

//Function writeLetters
void writeLetter(){
  //initiate value of i at 0
  int i = 0;
  //do these commands
  do {
    //adds a random size to the text
  textSize(random(10,150));
  //selects a random color for the text
  fill(random(255),random(255),random(255));
  //writes the letter A at a random location
  text("A", random(width), random(height));
  //add one to i to continue the loop
  i = i+1;
  } while ( i < 120); //when i is greater than 120 A's, quit the loop
}

//end.
