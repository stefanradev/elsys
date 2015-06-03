Instagram.configure do |config|
    config.client_id = "7e4e684ff76144c7ba70df44957b63ea"
    config.client_secret = "9f54ed28341a417e8f2cc3307b61fabf"
end

class InstagramController < ApplicationController

  def index
    @instagram = Instagram.user_recent_media("469567906", {:count => :all})
  end

  def connect
    redirect_to Instagram.authorize_url(:redirect_uri => ENV['https://instagram.com/'])
  end

  def callback
    response = Instagram.get_access_token(params[:code], :redirect_uri => ENV['https://instagram.com/'])
    session[:user_name] = response.user.full_name
    session[:access_token] = response.access_token
    redirect_to "/"
  end

  def logout
    session.clear
    redirect_to '/'
  end

end
