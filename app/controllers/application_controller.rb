class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

   BRAND_NAME = 'Andre Costa'.freeze


  def meta_title(title)
     [title, BRAND_NAME].reject(&:empty?).join(' · ')
  end

  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end
end
