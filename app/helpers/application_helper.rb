module ApplicationHelper
  def status_h(status)
    name = "info"

    case status
    when :pending
      name = "info"
    when :approved
      name = "success"
    when :rejected
      name = "important"
    else
      status.to_s
    end
    
    content_tag :span, status, class: "label label-#{name}"
  end

  def twitterized_type(type)
    case type
    when :alert
      "warning"
    when :error
      "error"
    when :notice
      "info"
    when :success
      "success"
    else
      type.to_s
    end
  end

  def confirm_button_with_class(name, path, confirm_text, classes, disabled=false)
    if disabled 
      link_to(name, '#', class: classes + ' disabled')
    else
      link_to(name, path, confirm: confirm_text, class: classes)
    end
  end
end
