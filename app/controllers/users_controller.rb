class UsersController < ApplicationController
  
  def new
      @user = User.new
  end

  def create
    @user = User.new(params[:id])
    if @user.save
      redirect_to products_url, :notice => "Sign up complete! Welcome."
    else
      render "new"
    end
  end

  def user_params
    params.require(:email).permit(:password, :password_confirmation)
  end

end
