class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :require_login
  layout 'logged_in'

  private

  def require_login
    unless session[:user_id]
      redirect_to login_url
    end
  end
end
