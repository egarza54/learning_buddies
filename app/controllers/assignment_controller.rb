class AssignmentController < ApplicationController

	def index
	end

	def create
		@message = Message.create(message_params)		
		respond_to do |format|
      format.js 
    end
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
		redirect_to assignment_path

	end

	private 

	def student_submission
    params.require(:assignment).permit(:submission)
  end

  def message_params
    params.require(:message).permit(:content, :assignment_id)
  end

end
