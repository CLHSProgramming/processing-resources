
BouncingLogo dvd;

void setup()
{
  //size( 500, 500 );
  fullScreen();
  noCursor();
  dvd = new BouncingLogo();
}

void draw()
{
  background( 0 ); //black
  dvd.move();
  dvd.draw();
  if( key == ESC )
    exit();
}
