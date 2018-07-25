function arrowselected(i, a) {
  if(a)
    i.src = "images/arrowleftselected.png";
  else {
    i.src = "images/arrowrightselected.png";
  }
}

function arrowdeselected(i, a) {
  if(a)
    i.src = "images/arrowleft.png";
  else {
    i.src = "images/arrowright.png";
  }
}
