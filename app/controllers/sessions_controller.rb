class SessionsController < ApplicationController
  def create
    if params[:session].present?
      # normal login
      user = User.find_by email: params[:session][:email].downcase
      if user && user.authenticate(params[:session][:password])
        if user.activated?
          login_success user
        else
          activate_require
        end
      else
        login_fail
      end
      # facebook login
    else
      begin 
        user = User.from_omniauth(request.env['omniauth.auth'])
        session[:user_id] = user.id
        flash[:success] = "Welcome, #{user.email}!"
      rescue
        flash[:warning] = "There was an error while trying to authenticate you..."
      end
      redirect_to components_path
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

  private

  def login_success user
    log_in user
    params[:session][:remember_me] == "1" ? remember(user) : forget(user)
    redirect_back_or user
  end

  def login_fail
    flash[:danger] = t "error.sentence_2"
    render :new
  end

  def activate_require
    message = t "user.acc_act.not_activated"
    flash[:warning] = message
    redirect_to root_url
  end
end
