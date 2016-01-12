module ApplicationHelper
	def page_title(page_title = nil)
    @page_title = page_title if page_title
  end
  
  def active?(c_name)
    if controller.controller_name == c_name
      "active"
    else
      ""
    end
  end
  
  
  def c_key(key)
    if key == "error" || key == "recaptcha_error"
      key = "danger"
    elsif key == "alert"
      key = "warning"
    elsif key == "notice"
      key = "success"
    elsif key == "info"
      key = "info"
    end
    key
  end
  
  def show_link(url, option={})
    link_to url, remote: false, class: "btn btn-default btn-sm", title: "Show" do
      content_tag(:i, nil, class: "fa fa-search-plus")
    end
  end
  
  def edit_link(url, option={})
    link_to url, remote: false, class: "btn btn-default btn-sm", title: "Edit" do
      content_tag(:i, nil, class: "fa fa-pencil-square-o")
    end
  end
  
  def delete_link(url, option={})
    link_to url, remote: false, class: "btn btn-default btn-sm", title: "Remove",
      method: :delete, data: { confirm: "Deseja excluir o item?" } do
      content_tag(:i, nil, class: "fa fa-trash-o")
    end
  end
end
