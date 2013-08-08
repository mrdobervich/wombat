module ApplicationHelper

  def display_base_errors resource
    return '' if (resource.errors.empty?) or (resource.errors[:base].empty?)
    messages = resource.errors[:base].map { |msg| content_tag(:p, msg) }.join
    html = <<-HTML
    <div class="alert alert-error alert-block">
      <button type="button" class="close" data-dismiss="alert">&#215;</button>
      #{messages}
    </div>
    HTML
    html.html_safe
  end

  def is_admin
    return (current_user && (current_user.has_role? :admin))
  end

  def addPrettifyTags(str)
    str.gsub( '<code>', '<pre class="prettyprint linenums">' ).gsub('</code>', '</pre>')
  end

  def display_date_in_words(date)
    suffix = (date < Time.now.to_datetime) ? " ago " : " from now "
    distance_of_time_in_words_to_now(date) + suffix + "on " + date.strftime("%m/%d/%y") 
  end

  def make_link(link, name, url)
    "<a href=\"#{url}\">#{link}</a> from - " + eval("#{name}_link")
  end

  def princeton_link
    '<a href="http://introcs.cs.princeton.edu/java/home/">Princeton\'s intro cs course</a>'
  end
  def think_java_link
    '<a href="http://www.greenteapress.com/thinkapjava/html/index.html">Think Java</a>'
  end
  def fractal_book_link
    '<a href="http://math.hws.edu/javanotes/">Eck\'s Introduction to Programming</a>'
  end
  def newboston_link
    '<a href="http://www.youtube.com/playlist?list=PLFE2CE09D83EE3E28">thenewboston\'s youtube series</a>'
  end
  def mybringback_link
    '<a href="http://www.youtube.com/playlist?list=PLDAA5DE54FB5215EC">mybringback\'s youtube series</a>'
  end
  def derekbanans_link
    '<a href="http://www.youtube.com/playlist?list=PLE7E8B7F4856C9B19">derekbanans\' youtube series</a>'
  end
  def chortle_link
    '<a href="http://chortle.ccsu.edu/java5/index.html">Connecticut state\'s cs course</a>'
  end
end
