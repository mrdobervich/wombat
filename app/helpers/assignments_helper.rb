module AssignmentsHelper

  def completed_image(assignment)
    completed_solution = @user.assignment_solution(assignment.id)
    assignment_late = completed_solution && (assignment.due_date < completed_solution.created_at)
    current_date_late = (Time.now.to_datetime < assignment.due_date)

    if (completed_solution && !assignment_late)
      ("<a href='#' data-toggle='tooltip' title='Good job!'>" + (image_tag "greencheck.gif", alt: "*") + "</a>").html_safe
    elsif (completed_solution && assignment_late)
      ("<a href='#' data-toggle='tooltip' title='Late'>" + (image_tag "redcheck.gif", alt: "*") + "</a>").html_safe     
    elsif (!completed_solution && current_date_late)
      ("<a href='#' data-toggle='tooltip' title='Still need to do...'>" + (image_tag "open.gif", alt: "*") + "</a>").html_safe
    else
      ("<a href='#' data-toggle='tooltip' title='Missing'>" + (image_tag "red-x.gif", alt: "*") + "</a>").html_safe      
    end
  end
end
