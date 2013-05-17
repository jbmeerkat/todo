module ApplicationHelper
  def icon name
    "<i class=\"#{name}\"></i>".html_safe
  end
end
