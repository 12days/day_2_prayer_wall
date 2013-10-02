class UserSessionsController < ApplicationController
  def new
  end

  def create
    if login(params[:username], params[:password])
      redirect_to(posts_path, message: 'Logged in!')
    else
      flash.now.alert = "Login failed."
      render action: :new
    end
  end

  def destroy
    logout
    redirect_to(:posts, message: 'Logged out!')
  end
end
