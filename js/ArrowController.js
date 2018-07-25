/*
  This function controls the highlighting effect when the left and right arrows
  are hovered over by the mouse pointer.

  Parameters:
  i: The image element in the document
  selected: 1 means the mouse is over the arrow. 0 means the mouse is not on the arrowleft
  orientation: 1 is the right arrow. 0 is the left arrow
*/

function ArrowController(i, selected, orientation) {
  if(selected) {
    if(orientation)
      i.src = "images/arrowrightselected.png";
    else if(!orientation)
      i.src = "images/arrowleftselected.png";
  }
  else if(!selected) {
    if(orientation)
      i.src = "images/arrowright.png";
    else if(!orientation)
      i.src = "images/arrowleft.png";
  }
}
