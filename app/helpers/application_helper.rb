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
end
