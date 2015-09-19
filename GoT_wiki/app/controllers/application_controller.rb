class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_variables
  def set_variables
    @houses = House.all
    @categories = Category.all
    @articles = Article.all
    @authors = Author.all
  end

  def current_author
    if session[:author_id]
      Author.find(session[:author_id])
    end
  end
  helper_method :current_author

end
