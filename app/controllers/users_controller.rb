class UsersController < ApplicationController

  def new
  end
  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      flash[:signuperror] = {:class => 'The data that you enter is not valid!',:message => user.errors.full_messages}
      redirect_to '/users/new'
    end
  end

private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
