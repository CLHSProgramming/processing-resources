
# Processing Quick Reference

## Drawing Methods:
* **size**( *width, height* );
* **frameRate**( *fps* );
* **stroke**( *red, green, blue* );
* **strokeWeight**( *pixels* );
* **noStroke**();
* **fill**( *red, green, blue* );
* **noFill**();
* **line**( *fromX, fromY, toX, toY* );
* **square**( *x, y, size* );
* **rect**( *x, y, width, height* );
* **circle**( *x, y, size* );
* **ellipse**( *x, y, width, height* );
* **point**( *x, y* );
* **triangle**( *x1, y1, x2, y2, x3, y3* );

## Special Variables:
|Type   |Name            |Description                                      |
|-------|----------------|-------------------------------------------------|
|float  |**frameCount**  |*Stores the number of frames the program has run*|
|char   |**key**         |*Stores the most recent key pressed*             |
|boolean|**keyPressed**  |*Is a key pressed?*                              |
|float  |**mouseX**      |*Mouse x position*                               |
|float  |**mouseY**      |*Mouse y position*                               |
|float  |**pmouseX**     |*Mouse x position (in the last frame)*           |
|float  |**pmouseY**     |*Mouse y position (in the last frame)*           |
|boolean|**mousePressed**|*Is the mouse pressed?*                          |

## Common Colors:
|Color                                                           |RGB              |Hex/HTML|
|----------------------------------------------------------------|-----------------|--------|
|![#000000](https://placehold.it/15/000000/000000?text=+) Black  |(   0,   0,   0 )|#000000 |
|![#FFFFFF](https://placehold.it/15/FFFFFF/FFFFFF?text=+) White  |( 255, 255, 255 )|#FFFFFF |
|![#7F7F7F](https://placehold.it/15/7F7F7F/7F7F7F?text=+) Grey   |( 127, 127, 127 )|#7F7F7F |
|![#FF0000](https://placehold.it/15/FF0000/FF0000?text=+) Red    |( 255,   0,   0 )|#FF0000 |
|![#00FF00](https://placehold.it/15/00FF00/00FF00?text=+) Green  |(   0, 255,   0 )|#00FF00 |
|![#0000FF](https://placehold.it/15/0000FF/0000FF?text=+) Blue   |(   0,   0, 255 )|#0000FF |
|![#FFFF00](https://placehold.it/15/FFFF00/FFFF00?text=+) Yellow |( 255, 255,   0 )|#FFFF00 |
|![#FF00FF](https://placehold.it/15/FF00FF/FF00FF?text=+) Fuchsia|( 255,   0, 255 )|#FF00FF |
|![#00FFFF](https://placehold.it/15/00FFFF/00FFFF?text=+) Aqua   |(   0, 255, 255 )|#00FFFF |
Color Picker:
https://www.w3schools.com/colors/colors_picker.asp