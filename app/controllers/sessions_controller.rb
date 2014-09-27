class SessionsController < ApplicationController
  
  def create
  	reset_session
  	@teacher = Teacher.find_by_email(teacher_params[:email])
		if @teacher && @teacher.authenticate(teacher_params[:password])
			new_session
			redirect_to teacher_path(@teacher)
		else
			flash.notice = 'Incorrect username or password.'
  		redirect_to root_path
		end
  end

  def destroy
    end_session
    flash.notice = "Successfully logged out."
    redirect_to root_path
  end


private 

	def teacher_params
    params.require(:teacher).permit(:email, :password)
  end
	
	def new_session
    session[:teacher_id] = @teacher.id
  end

  def end_session
    session.clear
  end  

end