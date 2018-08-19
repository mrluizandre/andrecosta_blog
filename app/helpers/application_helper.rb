module ApplicationHelper
  def active_class(path)
    'active' if current_page?(path)
  end

  def minutes_of_read(text)
    words = text.split.size
    minutes = words / 150

    if minutes < 1
      'menos de 1 minuto de leitura'
    else
      "aproximadamente #{pluralize(minutes,'minuto','minutos')} de leitura"
    end
  end

  def meta_og_tags(properties = {})
    puts "PASSOU 1".on_red
    return unless properties.is_a? Hash
    puts "PASSOU 2".on_red

    tags = []

    properties.each do |property, value|
      tags << tag(:meta, property: "og:#{property}", content: value)
    end

    tags.join.html_safe  # Remember in Ruby the last line is returned
  end
end
