/*
   Fixes the height of the document so that it can be scrolled down far enough
   that the overlay doesn't cover up any information.
*/

function HeightOffset () {
    document.getElementById("body").style.height = "auto";
    var OverlayHeight = $("#Overlay").height();
    var BodyHeight = $("#body").height();
    $("#body").height(BodyHeight + OverlayHeight);
}
