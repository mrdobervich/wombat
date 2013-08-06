module AssignmentsHelper

  def completed_image(assignment, completed_ids)
    if (completed_ids.include? assignment.id )
      ("<a href='#' data-toggle='tooltip' title='Good job!'>" + (image_tag "greencheck.gif", alt: "*") + "</a>").html_safe
    elsif (assignment.due_date < Time.now.to_datetime)
      ("<a href='#' data-toggle='tooltip' title='Missing'>" + (image_tag "red-x.gif", alt: "*") + "</a>").html_safe
    else
      ("<a href='#' data-toggle='tooltip' title='Still need to do...'>" + (image_tag "open.gif", alt: "*") + "</a>").html_safe
    end
  end
end
