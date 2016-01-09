module TasksHelper
	def label_status(status)
    label = status
    html_class = nil
    case status
      when Task::TO_DO then
        html_class = "label label-primary"
      when Task::DOING then
        html_class = "label label-warning"
      when Task::PREVENTED then
        html_class = "label label-danger"
      else
        html_class = "label label-success"
    end
    
    content_tag(:span, label, class: html_class)
  end
end
