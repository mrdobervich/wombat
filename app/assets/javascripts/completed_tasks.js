  jQuery(document).ready(function() {
    jQuery(".expandable").hide();

    //toggle the componenet with class msg_body
    jQuery(".expand_target").click(function()
      {
	  console.log("clicked on expand target");
	  jQuery(this).next(".expandable").slideToggle(500);
      });

    $(".expandall").click( function() {
      $(".expandable").slideToggle(500);
    });
  });
