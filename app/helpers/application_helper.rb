module ApplicationHelper

  def full_title(page_title) #Returns the full title on a per-page basis.
    base_title = "Backpacking Checklist"
    if page_title.empty?
      base_title
    elsif page_title == "home"
      "#{base_title} | Backpacking Checklists for Summer, Winter, and Ultralight Backpacking"
    else
      "#{page_title} | #{base_title}"
    end
  end
end
