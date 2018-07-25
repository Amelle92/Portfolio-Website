function LoadProject(projectid) {
  $.ajax({
		type:"POST",
		url:"./php/GetProject.php",
		data:{projectid:projectid},
			success(data) {

        // Attach some page elements to variables for updating project information
				var P = JSON.parse(data);
				var ProjectName = document.getElementById("ProjectName");
				var ProjectDescription = document.getElementById("ProjectDescription");
				var ProjectDetails = document.getElementById("ProjectDetails");
				var ProjectImage = document.getElementById("ProjectImage");
				var DetailsString = '<ul>';

				document.getElementById("FadeAfter").style.visibility = "hidden";
				ProjectImage.innerHTML = '<img class="img-fluid" id="projectimage" src="' + P[0].projectimage + '" alt="">';
				ProjectName.innerHTML = P[0].projectname;
				ProjectDescription.innerHTML = P[0].projectdescription;

        for (var j = 1; j < P.length; j++)
				  DetailsString += '<li>' + P[j].detail + '</li>';

				DetailsString += '<li><a target="_blank" href="' + P[0].projectsource + '">Source Code</a></li>';

        if(P[0].projectlive.localeCompare("") != 0) // If there is a live link
				  DetailsString += '<li><a target="_blank" href="' + P[0].projectlive + '">Live Preview</a></li>';

        DetailsString += '</ul>';
				ProjectDetails.innerHTML = DetailsString;

				$('#projectimage').on('load', function() {
					document.getElementById("FadeAfter").style.visibility = "visible";
					document.getElementById("FadeAfter").style.display = "none"
					$('#FadeAfter').fadeIn();
				});
        
        // Fixes the height of the page
        HeightOffset();
			}
	});
}
