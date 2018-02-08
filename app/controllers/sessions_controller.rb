class SessionsController < ApplicationController

  def new
    @user =  User.new
  end

  def create
    @user = User.find_by(name: user_params[:name])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/'
    else
      flash[:message] = "User couldn't be found"
      render :new
    end
  end

  def destroy
    session.delete :user_id
    redirect_to '/'
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :nausea, :happiness, :tickets, :height, :admin)
  end
end
