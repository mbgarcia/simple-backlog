module TasksHelper
	def label_status(status)
    label = status
    html_class = nil
    case status
      when Task::TO_DO then
        html_class = "label label-#{css_status_class(status)}"
      when Task::DOING then
        html_class = "label label-#{css_status_class(status)}"
      when Task::PREVENTED then
        html_class = "label label-#{css_status_class(status)}"
      else
        html_class = "label label-#{css_status_class(status)}"
    end
    
    content_tag(:span, label, class: html_class)
  end


  def css_status_class(status)
    html_class = nil
    case status
      when Task::TO_DO then
        html_class = "info"
      when Task::DOING then
        html_class = "warning"
      when Task::PREVENTED then
        html_class = "danger"
      else
        html_class = "success"
    end
    html_class
  end
end
