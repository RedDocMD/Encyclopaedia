module ApplicationHelper
  def title_helper(page_title = '')
    base_title = 'Encyclopedia'
    if page_title.empty?
      base_title
    else
      base_title + ' | ' + page_title
    end
  end
end
