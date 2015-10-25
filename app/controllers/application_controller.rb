class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def new
  end

  def create
    Formatter.order = params[:order]
    Formatter.content = params[:content]
    Formatter.numbered = params[:numbered]
    redirect_to '/'
  end

end
