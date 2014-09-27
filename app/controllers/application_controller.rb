class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_teacher, :logged_in?

  def current_user
    @teacher ||= Teacher.find_by(id: session[:teacher_id])
  end

  def logged_in?
    current_teacher != nil
  end
  
end
