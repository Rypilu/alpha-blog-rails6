class ApplicationController < ActionController::Base
  # helper_method makes current user available to our views. Otherwise, it would only be available to the controllers
  helper_method :current_user, :logged_in?
  def current_user
    # set in session controller
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    # !! turns @current_user into a boolean
    !!current_user
  end

end
