class HomeController < ApplicationController
  skip_before_action :require_login, only: [:index]

  def index
    if session[:user_id]
      render :index
    else
      render :welcome, layout: 'application'
    end 
  end
end
