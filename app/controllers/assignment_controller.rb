class AssignmentController < ApplicationController

	def index
	end

	def create
	end

	def show
		@messages = Message.all
		@assignment = Assignment.find(params[:id])
		@instructions = AssignmentType.find_by(id: @assignment.assignment_type_id)
		@student1 = @assignment.students.first
		@student2 = @assignment.students.last
	end


	def update
		@assignment = Assignment.find(params[:id])
		@assignment.update(student_submission)
		@assignment.update(help_params)
		redirect_to assignment_path
	end

	private 

	def student_submission
    params.require(:assignment).permit(:submission)
  end

  def help_params
    params.require(:assignment).permit(:questions)
  end

  def message_params
    params.require(:message).permit(:content, :assignment_id)
  end

end
