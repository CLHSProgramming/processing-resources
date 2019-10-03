
/////GLOBAL VARIABLES/////
PImage garfield, dino;  // <- Created using loadImage( path ) or requestImage( url )
boolean flash;          // <- Booleans can be either true or false
PVector position;       // <- Represents a coordinate, velocity, acceleration, size, or really anything else
//////////////////////////    with an x and y component

void setup() //Runs ONCE at the beginning of your program
{
  size( 500, 500 ); //Don't forget size() or your program won't be visible!
  
  //Initialize global variables in setup() before they are used!
  garfield = loadImage( "https://vignette.wikia.nocookie.net/versus-compendium/images/0/09/Garfield.png" );
  dino = loadImage( "https://vignette.wikia.nocookie.net/iannielli-legend/images/2/2c/Barney.jpg" );
  position = new PVector( 0, 500 ); //This is an (x, y) coordinate
  garfield.resize( 150, 150 ); //width, height
  dino.resize( 500, 500 ); //PImage::resize() takes some time, just do this once!
                           //Putting this in draw() will lag your program as the image is
                           //resized 60 times a second!
  flash = true;
  imageMode( CENTER ); //Draw images from the center rather than the top-left corner
}

void draw() //Runs every frame (60 times per second by default)
{
  if( frameCount % 60 == 0 ) //Every 60 frames (1 second), this code block runs:
  {
    flash = !flash; //The ! inverts flash (true->false and false->true)
  }
  
  background( 0 ); //Fill the background in black
  
  if( flash == true )
  {
    image( garfield, position.x, position.y );
    //image( dino, position.x, position.y ); //Uncomment to see draw order in action!
  } else {
    //image( dino, position.x, position.y ); //Uncomment to see draw order in action!
    //image( garfield, position.x, position.y );
  }
  
  position.x += 1; //Right    (0,0) is the
  position.y -= 1; //Up      top-left corner
  
  /* //Uncomment to see some rotation in action!
  translate( position.x, position.y ); //If this is used, draw your image at (0, 0)
  rotate( radians( frameCount ) ); //Converts the frameCount (degrees) to radians and rotates the transformation matrix
  */
  
  if( position.x < 0 )
    position.x = width;
  if( position.x > width )
    position.x = 0;
  if( position.y < 0 )
    position.y = height;
  if( position.y > height )
    position.y = 0;
  
  if( mousePressed ) //If any mouse button is held down, this code block runs:
  {
    image( dino, position.x, position.y );
  }
  
  fill( 0, 0, 0, 1 ); //Semi-transparent, change 1 to a positive number below 256 to change transparency
  rect( 0, 0, width, height ); //Using this instead of background() creates a streaky effect
  
  //System.out.println( flash ); //Just like in Java ;)
}
