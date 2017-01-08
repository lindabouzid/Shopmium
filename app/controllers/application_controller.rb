class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :menu

  def menu
  	@list_menu = false
  	@new_menu = false
  	
  end
end
