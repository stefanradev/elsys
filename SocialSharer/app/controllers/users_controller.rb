class UsersController < ApplicationController

  def index

  end

  def login
    @user = User.koala(request.env['omniauth.auth']['credentials'])
  end
  
  def create
   @user[:access_token] = request.env['omniauth.auth']['credentials']['token'] 
   @user[:access_token_secret] = request.env['omniauth.auth']['credentials']['secret']
   redirect_to show_path, notice: 'Signed in'
  end

  def update
  end
end 
