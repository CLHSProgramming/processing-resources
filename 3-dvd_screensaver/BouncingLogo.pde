
class BouncingLogo
{
  PVector position, velocity;
  private PImage logo;
  
  public BouncingLogo()
  {
    logo = loadImage( "dvd.png" );
    logo.resize( 250, 110 );
    position = new PVector( random( width - logo.width ), random( height - logo.height ) );
    velocity = new PVector( random( 1 ) < 0.5 ? -1 : 1, random( 1 ) < 0.5 ? -1 : 1 ).mult( 3 );
  }
  
  public void move()
  {
    position.add( velocity );
    if( position.x < 0 )
      velocity.x *= -1; //velocity.x = velocity.x * -1;
    if( position.y < 0 )
      velocity.y *= -1;
    if( position.x + logo.width > width )
      velocity.x *= -1;
    if( position.y + logo.height > height )
      velocity.y *= -1;
  }
  
  public void draw()
  {
    image( logo, position.x, position.y );
  }
}
