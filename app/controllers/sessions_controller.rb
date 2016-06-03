class SessionsController < ApplicationController
  # app/controllers/sessions_controller.rb

  def create
  user = User.find_by_email(params[:email])
  @user = user
    # If the user exists AND the password entered is correct.
    if user && user.authenticate(params[:password])
      # Save the user id inside the browser cookie. This is how we keep the user
      # logged in when they navigate around our website.
      session[:user_id] = user.id
      redirect_to new_contact_path
    else
      flash[:error] = "Either your password or email address incorrect"
    # If user's login doesn't work, send them back to the login form.
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end
