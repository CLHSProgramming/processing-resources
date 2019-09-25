//Processing Quick Reference

/* Methods:
 * size( width, height );
 * frameRate( fps );
 * stroke( red, green, blue );
 * strokeWeight( pixels );
 * noStroke();
 * fill( red, green, blue );
 * noFill();
 * line( fromX, fromY, toX, toY );
 * square( x, y, size );
 * rect( x, y, width, height );
 * circle( x, y, size );
 * ellipse( x, y, width, height );
 * point( x, y );
 * triangle( x1, y1, x2, y2, x3, y3 );
 */

/* Special Variables:
 * float    frameCount    Stores the number of frames the program has run
 * char     key           Stores the most recent key pressed
 * boolean  keyPressed    Is a key pressed?
 * float    mouseX        Mouse x position
 * float    mouseY        Mouse y position
 * float    pmouseX       Mouse x position (in the last frame)
 * float    pmouseY       Mouse y position (in the last frame)
 * boolean  mousePressed  Is the mouse pressed?
 */

/* Common Colors:
 * (   0,   0,   0 )  #000000    Black
 * ( 255, 255, 255 )  #FFFFFF    White
 * ( 127, 127, 127 )  #7F7F7F    Grey
 * ( 255,   0,   0 )  #FF0000    Red
 * (   0, 255,   0 )  #00FF00    Green
 * (   0,   0, 255 )  #0000FF    Blue
 * ( 255, 255,   0 )  #FFFF00    Yellow
 * ( 255,   0, 255 )  #FF00FF    Fuchsia
 * (   0, 255, 255 )  #00FFFF    Aqua
 * 
 * Color Picker:
 * https://www.w3schools.com/colors/colors_picker.asp
 */

void setup() //runs before the window is displayed (you cannot draw stuff in this method)
{ //BEGIN setup
  size( 500, 500 ); //sets the size of the window and displays it (width, height)
  frameRate( 60 ); //sets the number of frames drawn per second (not required, default is 60)
} //END setup

void draw() //runs every time a frame is drawn
{ //BEGIN draw
  strokeWeight( 10 ); //sets the width of borders and lines (in pixels)
  stroke( #FFFFFF ); //sets the color of borders and lines (white)
  //NOTE: Colors can use three numbers from 0-255 for red, green, and blue,
  //      OR HTML-style hex colors (ex: #F1AD6C)
  background( 0, 0, 0 ); //fills the screen (black)
  fill( 0, 0, 255 ); //sets the fill color of shapes (blue)
  rect( 100, 250, 300, 200 ); //draws a rectange (x, y, width, height)
  fill( 255, 0, 0 ); //red
  triangle( 100, 250, 350, 100, 0, 0 ); //draws a triangle using three points (x1, y1, x2, y2, x3, y3)
  fill( 255, 255, 0 ); //yellow
  
  textSize( 32 ); //sets the font size (in pixels)
  text( "Hello World!", 250, 200 ); //draws text to the screen (text, x, y)
  
  stroke( 255, 0, 0 ); //red
  float cursorSize = 20; //a variable to hold the size of the plus drawn under the cursor
  line( mouseX - cursorSize, mouseY, mouseX + cursorSize, mouseY ); //draws a horizontal line relative to the mouse
  line( mouseX, mouseY - cursorSize, mouseX, mouseY + cursorSize ); //draws a vertical line relative to the mouse
  /*
  if( frameCount % 2 == 0 ) //modulo % gets the remainder of division (this executes every even numbered frame)
  { //BEGIN IF
    ellipse( 300 + 100 * cos( frameCount * 0.1 ), 200 + 100 * sin( frameCount * 0.1 ), 100, 100 );
  } else { //END IF & BEGIN ELSE
    background( 255, 0, 0 );
    //ellipse( 300, 200, 100, 100 );
  } //END ELSE
  */
  //println( frameRate ); //equivalent to System.out.println( frameRate ) in Java
} //END draw
