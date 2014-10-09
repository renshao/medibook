require 'pp'

class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new

  end

  def create
    facebook_id = env['omniauth.auth']['uid']
    user = User.find_by facebook_id: facebook_id
    if user.nil?
      user = User.create!(
        facebook_id: env['omniauth.auth']['uid'],
        facebook_info: env['omniauth.auth']['info'],
        facebook_raw_info: env['omniauth.auth']['extra']['raw_info']
      )
    end

    session[:user_id] = user.id
    session[:facebook_access_token] = env['omniauth.auth']['credentials']['token']

    redirect_to home_url
  end

  def destroy
    session[:user_id] = session[:facebook_access_token] = nil
    redirect_to root_path, notice: "Logged out!"
  end
end
