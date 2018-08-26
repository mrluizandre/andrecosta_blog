module PostsHelper
  def status_to_badge_class(val)
    case val
    when 'draft'
      'primary'
    when 'published'
      'success'
    when 'archived'
      'secondary'
    end
  end
end
