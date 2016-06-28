module ApplicationHelper

  def number_line_items
    line_items = LineItem.all
    line_items.count
  end
end
