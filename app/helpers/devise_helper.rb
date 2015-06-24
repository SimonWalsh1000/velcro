module DeviseHelper

  def bootstrap_devise_error_messages!
    return "" if resource.errors.empty?
    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    html = <<-HTML
    <div class="alert label-danger alert-block">
       #{messages}
     </div>
    HTML
    html.html_safe
  end

end
