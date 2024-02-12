class UsersController < ApplicationController
  def create
    @user=User.new(user_params)
    if @user.save
     redirect_to signin_path
    end
  end

  def new
    @user=User.new
  end

  def index
  end
  private

  def user_params
    params.require(:user).permit(:username,:email,:password,:age)
  end
end
