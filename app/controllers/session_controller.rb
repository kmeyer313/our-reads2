class SessionController < ApplicationController

  def create
    @student = Student.find_by(username: session_params[:username])

    if @student && @student.authenticate(session_params[:password])
      session[:student_id] = @student.student_id
      redirect_to root_path
    else
      flash[:notice] = "something wasn't right"
      render 'new'
    end
  end

  def destroy
    session.delete(:student_id)
    redirect_to session_new
  end

  private
  def session_params
    params.require(:session).permit(:username, :password)
  end

end