// CODE TO ENABLE TABS IN TEXTAREA

$( document ).ready(function() {
  $("textarea").keydown(function(e) {
    var $this, end, start;
    console.log("keydown");
    if (e.keyCode === 9) {
      start = this.selectionStart;
      end = this.selectionEnd;
      $this = $(this);
      $this.val($this.val().substring(0, start) + "\t" + $this.val().substring(end));
      this.selectionStart = this.selectionEnd = start + 1;
      return false;
    }
  })
});


// CODE TO DO TAG CHECKBOX HIGHLIGHTING

$(document).ready(function() {

    // assuming all checkboxes are unchecked at first
    $("span[class='tag_checkbox']").each( function(i) {
      if ($(this).children("input").prop('checked')) 
	  $(this).addClass("checked");
      else
	  $(this).addClass("unchecked");
    });

    
    $(".tag_checkbox").click(function(){	
	if($(this).children("input").prop('checked')){
	    // uncheck
	    $(this).children("input").prop('checked', false); 
	    $(this).removeClass("checked");
	    $(this).addClass("unchecked");
	 } else {
		// check
	     console.log("it was unchecked....no checking");
		$(this).children("input").prop('checked', true);
		$(this).removeClass("unchecked");
		$(this).addClass("checked");
         }
    });
});
