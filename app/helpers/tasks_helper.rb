module TasksHelper

  def is_selected(q, t) 
    if (q && q["q"] && q["q"]["completed_filter"] && (q["q"]["completed_filter"] .eql? t))
      return true
    else
      return false
    end
  end
  
end
