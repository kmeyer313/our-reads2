module ApplicationHelper

  def current_user
    @current_user ||= Student.find_by(id: session[:student_id])
  end

  def logged_in?
    session[:student_id] != nil
  end

  def authenticate!
    redirect_to session_new_path unless logged_in?
  end

end
