module AssignmentsHelper

  def completed_image(assignment, completed_ids)
    if (completed_ids.include? assignment.id )
      image_tag "greencheck.gif", alt: "*"
    elsif (assignment.due_date < Time.now.to_datetime)
      image_tag "red-x.gif", alt: "x"
    else
      image_tag "open.gif", alt: "x"
    end
  end

end
