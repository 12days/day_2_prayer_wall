class UsersController < ApplicationController
  # before_filter :zero_authors_or_authenticated, only: [:new, :create]

  # def zero_authors_or_authenticated
  #   unless User.count == 0 || current_user
  #     redirect_to root_path
  #     return false
  #   end
  # end

  def index

  end

  def new
    @user = User.new
    render partial: 'form'
  end

  def create
    user = User.new(username: user_params[:email], password: user_params[:password])
    if user.save
      login(user_params[:email], user_params[:password])
      redirect_to posts_path
    else
      render :new
    end
  end

  private

    def user_params
      params.require(:user).permit!
    end
end
